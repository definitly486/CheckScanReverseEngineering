package com.wdullaer.materialdatetimepicker.time;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.material.timepicker.TimeModel;
import com.wdullaer.materialdatetimepicker.R;
import defpackage.rc6;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class RadialPickerLayout extends FrameLayout implements View.OnTouchListener {
    private static final int AM = 0;
    private static final int HOUR_INDEX = 0;
    private static final int HOUR_VALUE_TO_DEGREES_STEP_SIZE = 30;
    private static final int MINUTE_INDEX = 1;
    private static final int MINUTE_VALUE_TO_DEGREES_STEP_SIZE = 6;
    private static final int PM = 1;
    private static final int SECOND_INDEX = 2;
    private static final int SECOND_VALUE_TO_DEGREES_STEP_SIZE = 6;
    private static final String TAG = "RadialPickerLayout";
    private static final int VISIBLE_DEGREES_STEP_SIZE = 30;
    private final int TAP_TIMEOUT;
    private final int TOUCH_SLOP;
    private AccessibilityManager mAccessibilityManager;
    private AmPmCirclesView mAmPmCirclesView;
    private CircleView mCircleView;
    private TimePickerController mController;
    private int mCurrentItemShowing;
    private Timepoint mCurrentTime;
    private boolean mDoingMove;
    private boolean mDoingTouch;
    private int mDownDegrees;
    private float mDownX;
    private float mDownY;
    private View mGrayBox;
    private Handler mHandler;
    private RadialSelectorView mHourRadialSelectorView;
    private RadialTextsView mHourRadialTextsView;
    private boolean mInputEnabled;
    private boolean mIs24HourMode;
    private int mIsTouchingAmOrPm;
    private Timepoint mLastValueSelected;
    private OnValueSelectedListener mListener;
    private RadialSelectorView mMinuteRadialSelectorView;
    private RadialTextsView mMinuteRadialTextsView;
    private RadialSelectorView mSecondRadialSelectorView;
    private RadialTextsView mSecondRadialTextsView;
    private int[] mSnapPrefer30sMap;
    private boolean mTimeInitialized;
    private AnimatorSet mTransition;

    public interface OnValueSelectedListener {
        void advancePicker(int i);

        void enablePicker();

        void onValueSelected(Timepoint timepoint);
    }

    public RadialPickerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsTouchingAmOrPm = -1;
        this.mHandler = new Handler();
        setOnTouchListener(this);
        this.TOUCH_SLOP = ViewConfiguration.get(context).getScaledTouchSlop();
        this.TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
        this.mDoingMove = false;
        CircleView circleView = new CircleView(context);
        this.mCircleView = circleView;
        addView(circleView);
        AmPmCirclesView amPmCirclesView = new AmPmCirclesView(context);
        this.mAmPmCirclesView = amPmCirclesView;
        addView(amPmCirclesView);
        RadialSelectorView radialSelectorView = new RadialSelectorView(context);
        this.mHourRadialSelectorView = radialSelectorView;
        addView(radialSelectorView);
        RadialSelectorView radialSelectorView2 = new RadialSelectorView(context);
        this.mMinuteRadialSelectorView = radialSelectorView2;
        addView(radialSelectorView2);
        RadialSelectorView radialSelectorView3 = new RadialSelectorView(context);
        this.mSecondRadialSelectorView = radialSelectorView3;
        addView(radialSelectorView3);
        RadialTextsView radialTextsView = new RadialTextsView(context);
        this.mHourRadialTextsView = radialTextsView;
        addView(radialTextsView);
        RadialTextsView radialTextsView2 = new RadialTextsView(context);
        this.mMinuteRadialTextsView = radialTextsView2;
        addView(radialTextsView2);
        RadialTextsView radialTextsView3 = new RadialTextsView(context);
        this.mSecondRadialTextsView = radialTextsView3;
        addView(radialTextsView3);
        preparePrefer30sMap();
        this.mLastValueSelected = null;
        this.mInputEnabled = true;
        View view = new View(context);
        this.mGrayBox = view;
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.mGrayBox.setBackgroundColor(ContextCompat.getColor(context, R.color.mdtp_transparent_black));
        this.mGrayBox.setVisibility(4);
        addView(this.mGrayBox);
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        this.mTimeInitialized = false;
    }

    private int getCurrentlyShowingValue() {
        int currentItemShowing = getCurrentItemShowing();
        if (currentItemShowing == 0) {
            return this.mCurrentTime.getHour();
        }
        if (currentItemShowing == 1) {
            return this.mCurrentTime.getMinute();
        }
        if (currentItemShowing != 2) {
            return -1;
        }
        return this.mCurrentTime.getSecond();
    }

    private int getDegreesFromCoords(float f, float f2, boolean z, Boolean[] boolArr) {
        int currentItemShowing = getCurrentItemShowing();
        if (currentItemShowing == 0) {
            return this.mHourRadialSelectorView.getDegreesFromCoords(f, f2, z, boolArr);
        }
        if (currentItemShowing == 1) {
            return this.mMinuteRadialSelectorView.getDegreesFromCoords(f, f2, z, boolArr);
        }
        if (currentItemShowing != 2) {
            return -1;
        }
        return this.mSecondRadialSelectorView.getDegreesFromCoords(f, f2, z, boolArr);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002d  */
    /* JADX WARN: Code duplicated, block: B:24:0x0033  */
    private Timepoint getTimeFromDegrees(int i, boolean z, boolean z2) {
        if (i == -1) {
            return null;
        }
        int currentItemShowing = getCurrentItemShowing();
        int iSnapOnly30s = (z2 || !(currentItemShowing == 1 || currentItemShowing == 2)) ? snapOnly30s(i, 0) : snapPrefer30s(i);
        int i2 = currentItemShowing != 0 ? 6 : 30;
        if (currentItemShowing == 0) {
            if (this.mIs24HourMode) {
                if (iSnapOnly30s == 0 && z) {
                    iSnapOnly30s = 360;
                } else if (iSnapOnly30s == 360 && !z) {
                    iSnapOnly30s = 0;
                }
            } else if (iSnapOnly30s == 0) {
                iSnapOnly30s = 360;
            }
        } else if (iSnapOnly30s == 360 && (currentItemShowing == 1 || currentItemShowing == 2)) {
            iSnapOnly30s = 0;
        }
        int i3 = iSnapOnly30s / i2;
        if (currentItemShowing == 0 && this.mIs24HourMode && !z && iSnapOnly30s != 0) {
            i3 += 12;
        }
        if (currentItemShowing == 0 && this.mController.getVersion() != TimePickerDialog.Version.VERSION_1 && this.mIs24HourMode) {
            i3 = (i3 + 12) % 24;
        }
        if (currentItemShowing != 0) {
            if (currentItemShowing != 1) {
                return currentItemShowing != 2 ? this.mCurrentTime : new Timepoint(this.mCurrentTime.getHour(), this.mCurrentTime.getMinute(), i3);
            }
            return new Timepoint(this.mCurrentTime.getHour(), i3, this.mCurrentTime.getSecond());
        }
        if (!this.mIs24HourMode && getIsCurrentlyAmOrPm() == 1 && iSnapOnly30s != 360) {
            i3 += 12;
        }
        return new Timepoint((!this.mIs24HourMode && getIsCurrentlyAmOrPm() == 0 && iSnapOnly30s == 360) ? 0 : i3, this.mCurrentTime.getMinute(), this.mCurrentTime.getSecond());
    }

    private boolean isHourInnerCircle(int i) {
        boolean z = i <= 12 && i != 0;
        if (this.mController.getVersion() != TimePickerDialog.Version.VERSION_1) {
            z = !z;
        }
        return this.mIs24HourMode && z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$initialize$0(int i) {
        return !this.mController.isOutOfRange(new Timepoint(this.mCurrentTime.getHour(), this.mCurrentTime.getMinute(), i), 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$initialize$1(int i) {
        return !this.mController.isOutOfRange(new Timepoint(this.mCurrentTime.getHour(), i, this.mCurrentTime.getSecond()), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$initialize$2(int i) {
        Timepoint timepoint = new Timepoint(i, this.mCurrentTime.getMinute(), this.mCurrentTime.getSecond());
        if (!this.mIs24HourMode && getIsCurrentlyAmOrPm() == 1) {
            timepoint.setPM();
        }
        if (!this.mIs24HourMode && getIsCurrentlyAmOrPm() == 0) {
            timepoint.setAM();
        }
        return !this.mController.isOutOfRange(timepoint, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouch$3() {
        this.mAmPmCirclesView.setAmOrPmPressed(this.mIsTouchingAmOrPm);
        this.mAmPmCirclesView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouch$4(Boolean[] boolArr) {
        this.mDoingMove = true;
        Timepoint timeFromDegrees = getTimeFromDegrees(this.mDownDegrees, boolArr[0].booleanValue(), false);
        this.mLastValueSelected = timeFromDegrees;
        Timepoint timepointRoundToValidTime = roundToValidTime(timeFromDegrees, getCurrentItemShowing());
        this.mLastValueSelected = timepointRoundToValidTime;
        reselectSelector(timepointRoundToValidTime, true, getCurrentItemShowing());
        this.mListener.onValueSelected(this.mLastValueSelected);
    }

    private void preparePrefer30sMap() {
        this.mSnapPrefer30sMap = new int[361];
        int i = 1;
        int i2 = 8;
        int i3 = 0;
        for (int i4 = 0; i4 < 361; i4++) {
            this.mSnapPrefer30sMap[i4] = i3;
            if (i == i2) {
                i3 += 6;
                i2 = i3 == 360 ? 7 : i3 % 30 == 0 ? 14 : 4;
                i = 1;
            } else {
                i++;
            }
        }
    }

    private void reselectSelector(Timepoint timepoint, boolean z, int i) {
        if (i == 0) {
            int hour = timepoint.getHour();
            boolean zIsHourInnerCircle = isHourInnerCircle(hour);
            int i2 = hour % 12;
            int i3 = (i2 * 360) / 12;
            boolean z2 = this.mIs24HourMode;
            if (!z2) {
                hour = i2;
            }
            if (!z2 && hour == 0) {
                hour += 12;
            }
            this.mHourRadialSelectorView.setSelection(i3, zIsHourInnerCircle, z);
            this.mHourRadialTextsView.setSelection(hour);
            if (timepoint.getMinute() != this.mCurrentTime.getMinute()) {
                this.mMinuteRadialSelectorView.setSelection(timepoint.getMinute() * 6, zIsHourInnerCircle, z);
                this.mMinuteRadialTextsView.setSelection(timepoint.getMinute());
            }
            if (timepoint.getSecond() != this.mCurrentTime.getSecond()) {
                this.mSecondRadialSelectorView.setSelection(timepoint.getSecond() * 6, zIsHourInnerCircle, z);
                this.mSecondRadialTextsView.setSelection(timepoint.getSecond());
            }
        } else if (i == 1) {
            this.mMinuteRadialSelectorView.setSelection(timepoint.getMinute() * 6, false, z);
            this.mMinuteRadialTextsView.setSelection(timepoint.getMinute());
            if (timepoint.getSecond() != this.mCurrentTime.getSecond()) {
                this.mSecondRadialSelectorView.setSelection(timepoint.getSecond() * 6, false, z);
                this.mSecondRadialTextsView.setSelection(timepoint.getSecond());
            }
        } else if (i == 2) {
            this.mSecondRadialSelectorView.setSelection(timepoint.getSecond() * 6, false, z);
            this.mSecondRadialTextsView.setSelection(timepoint.getSecond());
        }
        int currentItemShowing = getCurrentItemShowing();
        if (currentItemShowing == 0) {
            this.mHourRadialSelectorView.invalidate();
            this.mHourRadialTextsView.invalidate();
        } else if (currentItemShowing == 1) {
            this.mMinuteRadialSelectorView.invalidate();
            this.mMinuteRadialTextsView.invalidate();
        } else {
            if (currentItemShowing != 2) {
                return;
            }
            this.mSecondRadialSelectorView.invalidate();
            this.mSecondRadialTextsView.invalidate();
        }
    }

    private Timepoint roundToValidTime(Timepoint timepoint, int i) {
        if (i == 0) {
            return this.mController.roundToNearest(timepoint, null);
        }
        TimePickerController timePickerController = this.mController;
        return i != 1 ? timePickerController.roundToNearest(timepoint, Timepoint.TYPE.MINUTE) : timePickerController.roundToNearest(timepoint, Timepoint.TYPE.HOUR);
    }

    private void setItem(int i, Timepoint timepoint) {
        Timepoint timepointRoundToValidTime = roundToValidTime(timepoint, i);
        this.mCurrentTime = timepointRoundToValidTime;
        reselectSelector(timepointRoundToValidTime, false, i);
    }

    private static int snapOnly30s(int i, int i2) {
        int i3 = (i / 30) * 30;
        int i4 = i3 + 30;
        if (i2 != 1) {
            if (i2 == -1) {
                if (i == i3) {
                    return i3 - 30;
                }
            } else if (i - i3 < i4 - i) {
            }
            return i3;
        }
        return i4;
    }

    private int snapPrefer30s(int i) {
        int[] iArr = this.mSnapPrefer30sMap;
        if (iArr == null) {
            return -1;
        }
        return iArr[i];
    }

    private void transitionWithoutAnimation(int i) {
        int i2 = i == 0 ? 1 : 0;
        int i3 = i == 1 ? 1 : 0;
        int i4 = i == 2 ? 1 : 0;
        float f = i2;
        this.mHourRadialTextsView.setAlpha(f);
        this.mHourRadialSelectorView.setAlpha(f);
        float f2 = i3;
        this.mMinuteRadialTextsView.setAlpha(f2);
        this.mMinuteRadialSelectorView.setAlpha(f2);
        float f3 = i4;
        this.mSecondRadialTextsView.setAlpha(f3);
        this.mSecondRadialSelectorView.setAlpha(f3);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        accessibilityEvent.getText().clear();
        Calendar calendar = Calendar.getInstance();
        calendar.set(10, getHours());
        calendar.set(12, getMinutes());
        calendar.set(13, getSeconds());
        accessibilityEvent.getText().add(DateUtils.formatDateTime(getContext(), calendar.getTimeInMillis(), this.mIs24HourMode ? TsExtractor.TS_STREAM_TYPE_AC3 : 1));
        return true;
    }

    public int getCurrentItemShowing() {
        int i = this.mCurrentItemShowing;
        if (i == 0 || i == 1 || i == 2) {
            return i;
        }
        Log.e(TAG, "Current item showing was unfortunately set to " + this.mCurrentItemShowing);
        return -1;
    }

    public int getHours() {
        return this.mCurrentTime.getHour();
    }

    public int getIsCurrentlyAmOrPm() {
        if (this.mCurrentTime.isAM()) {
            return 0;
        }
        return this.mCurrentTime.isPM() ? 1 : -1;
    }

    public int getMinutes() {
        return this.mCurrentTime.getMinute();
    }

    public int getSeconds() {
        return this.mCurrentTime.getSecond();
    }

    public Timepoint getTime() {
        return this.mCurrentTime;
    }

    public void initialize(Context context, Locale locale, TimePickerController timePickerController, Timepoint timepoint, boolean z) {
        String[] strArr;
        if (this.mTimeInitialized) {
            Log.e(TAG, "Time has already been initialized.");
            return;
        }
        this.mController = timePickerController;
        int i = 0;
        this.mIs24HourMode = this.mAccessibilityManager.isTouchExplorationEnabled() || z;
        this.mCircleView.initialize(context, this.mController);
        this.mCircleView.invalidate();
        if (!this.mIs24HourMode && this.mController.getVersion() == TimePickerDialog.Version.VERSION_1) {
            this.mAmPmCirclesView.initialize(context, locale, this.mController, !timepoint.isAM() ? 1 : 0);
            this.mAmPmCirclesView.invalidate();
        }
        RadialTextsView.SelectionValidator selectionValidator = new RadialTextsView.SelectionValidator() { // from class: com.wdullaer.materialdatetimepicker.time.a
            @Override // com.wdullaer.materialdatetimepicker.time.RadialTextsView.SelectionValidator
            public final boolean isValidSelection(int i2) {
                return this.a.lambda$initialize$0(i2);
            }
        };
        RadialTextsView.SelectionValidator selectionValidator2 = new RadialTextsView.SelectionValidator() { // from class: com.wdullaer.materialdatetimepicker.time.b
            @Override // com.wdullaer.materialdatetimepicker.time.RadialTextsView.SelectionValidator
            public final boolean isValidSelection(int i2) {
                return this.a.lambda$initialize$1(i2);
            }
        };
        RadialTextsView.SelectionValidator selectionValidator3 = new RadialTextsView.SelectionValidator() { // from class: com.wdullaer.materialdatetimepicker.time.c
            @Override // com.wdullaer.materialdatetimepicker.time.RadialTextsView.SelectionValidator
            public final boolean isValidSelection(int i2) {
                return this.a.lambda$initialize$2(i2);
            }
        };
        int i2 = 12;
        int[] iArr = {12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
        int[] iArr2 = {0, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23};
        int[] iArr3 = {0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55};
        int[] iArr4 = {0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55};
        String[] strArr2 = new String[12];
        String[] strArr3 = new String[12];
        String[] strArr4 = new String[12];
        String[] strArr5 = new String[12];
        while (i < i2) {
            int i3 = i2;
            strArr2[i] = z ? String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(iArr2[i])) : String.format(locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(iArr[i]));
            strArr3[i] = String.format(locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(iArr[i]));
            strArr4[i] = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(iArr3[i]));
            strArr5[i] = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(iArr4[i]));
            i++;
            i2 = i3;
            iArr2 = iArr2;
        }
        if (this.mController.getVersion() == TimePickerDialog.Version.VERSION_2) {
            strArr = strArr3;
        } else {
            strArr = strArr2;
            strArr2 = strArr3;
        }
        RadialTextsView radialTextsView = this.mHourRadialTextsView;
        if (!z) {
            strArr2 = null;
        }
        radialTextsView.initialize(context, strArr, strArr2, this.mController, selectionValidator3, true);
        RadialTextsView radialTextsView2 = this.mHourRadialTextsView;
        int hour = timepoint.getHour();
        if (!z) {
            hour = iArr[hour % 12];
        }
        radialTextsView2.setSelection(hour);
        this.mHourRadialTextsView.invalidate();
        this.mMinuteRadialTextsView.initialize(context, strArr4, null, this.mController, selectionValidator2, false);
        this.mMinuteRadialTextsView.setSelection(timepoint.getMinute());
        this.mMinuteRadialTextsView.invalidate();
        this.mSecondRadialTextsView.initialize(context, strArr5, null, this.mController, selectionValidator, false);
        this.mSecondRadialTextsView.setSelection(timepoint.getSecond());
        this.mSecondRadialTextsView.invalidate();
        this.mCurrentTime = timepoint;
        this.mHourRadialSelectorView.initialize(context, this.mController, z, true, (timepoint.getHour() % 12) * 30, isHourInnerCircle(timepoint.getHour()));
        this.mMinuteRadialSelectorView.initialize(context, this.mController, false, false, timepoint.getMinute() * 6, false);
        this.mSecondRadialSelectorView.initialize(context, this.mController, false, false, timepoint.getSecond() * 6, false);
        this.mTimeInitialized = true;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int isTouchingAmOrPm;
        int degreesFromCoords;
        Timepoint timepoint;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        final Boolean[] boolArr = {Boolean.FALSE};
        int action = motionEvent.getAction();
        int i = 1;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    if (!this.mInputEnabled) {
                        Log.e(TAG, "Input was disabled, but received ACTION_MOVE.");
                        return true;
                    }
                    float fAbs = Math.abs(y - this.mDownY);
                    float fAbs2 = Math.abs(x - this.mDownX);
                    if (!this.mDoingMove) {
                        float f = this.TOUCH_SLOP;
                        if (fAbs2 > f || fAbs > f) {
                        }
                    }
                    int i2 = this.mIsTouchingAmOrPm;
                    if (i2 == 0 || i2 == 1) {
                        this.mHandler.removeCallbacksAndMessages(null);
                        if (this.mAmPmCirclesView.getIsTouchingAmOrPm(x, y) != this.mIsTouchingAmOrPm) {
                            this.mAmPmCirclesView.setAmOrPmPressed(-1);
                            this.mAmPmCirclesView.invalidate();
                            this.mIsTouchingAmOrPm = -1;
                        }
                    } else if (this.mDownDegrees != -1) {
                        this.mDoingMove = true;
                        this.mHandler.removeCallbacksAndMessages(null);
                        int degreesFromCoords2 = getDegreesFromCoords(x, y, true, boolArr);
                        if (degreesFromCoords2 != -1) {
                            Timepoint timepointRoundToValidTime = roundToValidTime(getTimeFromDegrees(degreesFromCoords2, boolArr[0].booleanValue(), false), getCurrentItemShowing());
                            reselectSelector(timepointRoundToValidTime, true, getCurrentItemShowing());
                            if (timepointRoundToValidTime != null && ((timepoint = this.mLastValueSelected) == null || !timepoint.equals(timepointRoundToValidTime))) {
                                this.mController.tryVibrate();
                                this.mLastValueSelected = timepointRoundToValidTime;
                                this.mListener.onValueSelected(timepointRoundToValidTime);
                                return true;
                            }
                        }
                    }
                }
                return false;
            }
            if (!this.mInputEnabled) {
                Log.d(TAG, "Input was disabled, but received ACTION_UP.");
                this.mListener.enablePicker();
                return true;
            }
            this.mHandler.removeCallbacksAndMessages(null);
            this.mDoingTouch = false;
            int i3 = this.mIsTouchingAmOrPm;
            if (i3 != 0 && i3 != 1) {
                if (this.mDownDegrees != -1 && (degreesFromCoords = getDegreesFromCoords(x, y, this.mDoingMove, boolArr)) != -1) {
                    Timepoint timepointRoundToValidTime2 = roundToValidTime(getTimeFromDegrees(degreesFromCoords, boolArr[0].booleanValue(), !this.mDoingMove), getCurrentItemShowing());
                    reselectSelector(timepointRoundToValidTime2, false, getCurrentItemShowing());
                    this.mCurrentTime = timepointRoundToValidTime2;
                    this.mListener.onValueSelected(timepointRoundToValidTime2);
                    this.mListener.advancePicker(getCurrentItemShowing());
                }
                this.mDoingMove = false;
                return true;
            }
            int isTouchingAmOrPm2 = this.mAmPmCirclesView.getIsTouchingAmOrPm(x, y);
            this.mAmPmCirclesView.setAmOrPmPressed(-1);
            this.mAmPmCirclesView.invalidate();
            if (isTouchingAmOrPm2 == this.mIsTouchingAmOrPm) {
                this.mAmPmCirclesView.setAmOrPm(isTouchingAmOrPm2);
                if (getIsCurrentlyAmOrPm() != isTouchingAmOrPm2) {
                    Timepoint timepoint2 = new Timepoint(this.mCurrentTime);
                    int i4 = this.mIsTouchingAmOrPm;
                    if (i4 == 0) {
                        timepoint2.setAM();
                    } else if (i4 == 1) {
                        timepoint2.setPM();
                    }
                    Timepoint timepointRoundToValidTime3 = roundToValidTime(timepoint2, 0);
                    reselectSelector(timepointRoundToValidTime3, false, 0);
                    this.mCurrentTime = timepointRoundToValidTime3;
                    this.mListener.onValueSelected(timepointRoundToValidTime3);
                }
            }
            this.mIsTouchingAmOrPm = -1;
            return false;
        }
        if (this.mInputEnabled) {
            this.mDownX = x;
            this.mDownY = y;
            this.mLastValueSelected = null;
            this.mDoingMove = false;
            this.mDoingTouch = true;
            if (this.mIs24HourMode || this.mController.getVersion() != TimePickerDialog.Version.VERSION_1) {
                this.mIsTouchingAmOrPm = -1;
                isTouchingAmOrPm = -1;
            } else {
                isTouchingAmOrPm = this.mAmPmCirclesView.getIsTouchingAmOrPm(x, y);
                this.mIsTouchingAmOrPm = isTouchingAmOrPm;
            }
            if (isTouchingAmOrPm == 0 || isTouchingAmOrPm == 1) {
                this.mController.tryVibrate();
                this.mDownDegrees = -1;
                this.mHandler.postDelayed(new rc6(this, i), this.TAP_TIMEOUT);
                return true;
            }
            int degreesFromCoords3 = getDegreesFromCoords(x, y, this.mAccessibilityManager.isTouchExplorationEnabled(), boolArr);
            this.mDownDegrees = degreesFromCoords3;
            if (this.mController.isOutOfRange(getTimeFromDegrees(degreesFromCoords3, boolArr[0].booleanValue(), false), getCurrentItemShowing())) {
                this.mDownDegrees = -1;
            }
            if (this.mDownDegrees != -1) {
                this.mController.tryVibrate();
                this.mHandler.postDelayed(new Runnable() { // from class: cx6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.b.lambda$onTouch$4(boolArr);
                    }
                }, this.TAP_TIMEOUT);
            }
        }
        return true;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        int i2;
        int i3;
        int i4;
        Timepoint timepoint;
        Timepoint timepoint2;
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        int i5 = 0;
        if (i == 4096) {
            i2 = 1;
        } else {
            i2 = i == 8192 ? -1 : 0;
        }
        if (i2 == 0) {
            return false;
        }
        int currentlyShowingValue = getCurrentlyShowingValue();
        int currentItemShowing = getCurrentItemShowing();
        if (currentItemShowing == 0) {
            currentlyShowingValue %= 12;
            i3 = 30;
        } else {
            i3 = 6;
            if (currentItemShowing != 1 && currentItemShowing != 2) {
                i3 = 0;
            }
        }
        int iSnapOnly30s = snapOnly30s(currentlyShowingValue * i3, i2) / i3;
        if (currentItemShowing != 0) {
            i4 = 55;
        } else if (this.mIs24HourMode) {
            i4 = 23;
        } else {
            i4 = 12;
            i5 = 1;
        }
        if (iSnapOnly30s > i4) {
            iSnapOnly30s = i5;
        } else if (iSnapOnly30s < i5) {
            iSnapOnly30s = i4;
        }
        if (currentItemShowing == 0) {
            timepoint = new Timepoint(iSnapOnly30s, this.mCurrentTime.getMinute(), this.mCurrentTime.getSecond());
        } else {
            if (currentItemShowing != 1) {
                if (currentItemShowing != 2) {
                    timepoint2 = this.mCurrentTime;
                } else {
                    timepoint = new Timepoint(this.mCurrentTime.getHour(), this.mCurrentTime.getMinute(), iSnapOnly30s);
                }
                setItem(currentItemShowing, timepoint2);
                this.mListener.onValueSelected(timepoint2);
                return true;
            }
            timepoint = new Timepoint(this.mCurrentTime.getHour(), iSnapOnly30s, this.mCurrentTime.getSecond());
        }
        timepoint2 = timepoint;
        setItem(currentItemShowing, timepoint2);
        this.mListener.onValueSelected(timepoint2);
        return true;
    }

    public void setAmOrPm(int i) {
        this.mAmPmCirclesView.setAmOrPm(i);
        this.mAmPmCirclesView.invalidate();
        Timepoint timepoint = new Timepoint(this.mCurrentTime);
        if (i == 0) {
            timepoint.setAM();
        } else if (i == 1) {
            timepoint.setPM();
        }
        Timepoint timepointRoundToValidTime = roundToValidTime(timepoint, 0);
        reselectSelector(timepointRoundToValidTime, false, 0);
        this.mCurrentTime = timepointRoundToValidTime;
        this.mListener.onValueSelected(timepointRoundToValidTime);
    }

    public void setCurrentItemShowing(int i, boolean z) {
        if (i != 0 && i != 1 && i != 2) {
            Log.e(TAG, "TimePicker does not support view at index " + i);
            return;
        }
        int currentItemShowing = getCurrentItemShowing();
        this.mCurrentItemShowing = i;
        reselectSelector(getTime(), true, i);
        if (!z || i == currentItemShowing) {
            transitionWithoutAnimation(i);
            return;
        }
        ObjectAnimator[] objectAnimatorArr = new ObjectAnimator[4];
        if (i == 1 && currentItemShowing == 0) {
            objectAnimatorArr[0] = this.mHourRadialTextsView.getDisappearAnimator();
            objectAnimatorArr[1] = this.mHourRadialSelectorView.getDisappearAnimator();
            objectAnimatorArr[2] = this.mMinuteRadialTextsView.getReappearAnimator();
            objectAnimatorArr[3] = this.mMinuteRadialSelectorView.getReappearAnimator();
        } else if (i == 0 && currentItemShowing == 1) {
            objectAnimatorArr[0] = this.mHourRadialTextsView.getReappearAnimator();
            objectAnimatorArr[1] = this.mHourRadialSelectorView.getReappearAnimator();
            objectAnimatorArr[2] = this.mMinuteRadialTextsView.getDisappearAnimator();
            objectAnimatorArr[3] = this.mMinuteRadialSelectorView.getDisappearAnimator();
        } else if (i == 1 && currentItemShowing == 2) {
            objectAnimatorArr[0] = this.mSecondRadialTextsView.getDisappearAnimator();
            objectAnimatorArr[1] = this.mSecondRadialSelectorView.getDisappearAnimator();
            objectAnimatorArr[2] = this.mMinuteRadialTextsView.getReappearAnimator();
            objectAnimatorArr[3] = this.mMinuteRadialSelectorView.getReappearAnimator();
        } else if (i == 0 && currentItemShowing == 2) {
            objectAnimatorArr[0] = this.mSecondRadialTextsView.getDisappearAnimator();
            objectAnimatorArr[1] = this.mSecondRadialSelectorView.getDisappearAnimator();
            objectAnimatorArr[2] = this.mHourRadialTextsView.getReappearAnimator();
            objectAnimatorArr[3] = this.mHourRadialSelectorView.getReappearAnimator();
        } else if (i == 2 && currentItemShowing == 1) {
            objectAnimatorArr[0] = this.mSecondRadialTextsView.getReappearAnimator();
            objectAnimatorArr[1] = this.mSecondRadialSelectorView.getReappearAnimator();
            objectAnimatorArr[2] = this.mMinuteRadialTextsView.getDisappearAnimator();
            objectAnimatorArr[3] = this.mMinuteRadialSelectorView.getDisappearAnimator();
        } else if (i == 2 && currentItemShowing == 0) {
            objectAnimatorArr[0] = this.mSecondRadialTextsView.getReappearAnimator();
            objectAnimatorArr[1] = this.mSecondRadialSelectorView.getReappearAnimator();
            objectAnimatorArr[2] = this.mHourRadialTextsView.getDisappearAnimator();
            objectAnimatorArr[3] = this.mHourRadialSelectorView.getDisappearAnimator();
        }
        if (objectAnimatorArr[0] == null || objectAnimatorArr[1] == null || objectAnimatorArr[2] == null || objectAnimatorArr[3] == null) {
            transitionWithoutAnimation(i);
            return;
        }
        AnimatorSet animatorSet = this.mTransition;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.mTransition.end();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mTransition = animatorSet2;
        animatorSet2.playTogether(objectAnimatorArr);
        this.mTransition.start();
    }

    public void setOnValueSelectedListener(OnValueSelectedListener onValueSelectedListener) {
        this.mListener = onValueSelectedListener;
    }

    public void setTime(Timepoint timepoint) {
        setItem(0, timepoint);
    }

    public boolean trySettingInputEnabled(boolean z) {
        if (this.mDoingTouch && !z) {
            return false;
        }
        this.mInputEnabled = z;
        this.mGrayBox.setVisibility(z ? 4 : 0);
        return true;
    }
}
