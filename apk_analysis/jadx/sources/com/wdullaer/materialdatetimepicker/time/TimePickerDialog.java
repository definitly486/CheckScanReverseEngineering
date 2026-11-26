package com.wdullaer.materialdatetimepicker.time;

import android.animation.ObjectAnimator;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.timepicker.TimeModel;
import com.wdullaer.materialdatetimepicker.HapticFeedbackController;
import com.wdullaer.materialdatetimepicker.R;
import com.wdullaer.materialdatetimepicker.Utils;
import defpackage.dd2;
import defpackage.g84;
import defpackage.ku8;
import defpackage.mu8;
import defpackage.vv5;
import defpackage.wv5;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class TimePickerDialog extends AppCompatDialogFragment implements RadialPickerLayout.OnValueSelectedListener, TimePickerController {
    public static final int AM = 0;
    public static final int HOUR_INDEX = 0;
    private static final String KEY_ACCENT = "accent";
    private static final String KEY_CANCEL_COLOR = "cancel_color";
    private static final String KEY_CANCEL_RESID = "cancel_resid";
    private static final String KEY_CANCEL_STRING = "cancel_string";
    private static final String KEY_CURRENT_ITEM_SHOWING = "current_item_showing";
    private static final String KEY_DISMISS = "dismiss";
    private static final String KEY_ENABLE_MINUTES = "enable_minutes";
    private static final String KEY_ENABLE_SECONDS = "enable_seconds";
    private static final String KEY_INITIAL_TIME = "initial_time";
    private static final String KEY_IN_KB_MODE = "in_kb_mode";
    private static final String KEY_IS_24_HOUR_VIEW = "is_24_hour_view";
    private static final String KEY_LOCALE = "locale";
    private static final String KEY_OK_COLOR = "ok_color";
    private static final String KEY_OK_RESID = "ok_resid";
    private static final String KEY_OK_STRING = "ok_string";
    private static final String KEY_THEME_DARK = "theme_dark";
    private static final String KEY_THEME_DARK_CHANGED = "theme_dark_changed";
    private static final String KEY_TIMEPOINTLIMITER = "timepoint_limiter";
    private static final String KEY_TITLE = "dialog_title";
    private static final String KEY_TYPED_TIMES = "typed_times";
    private static final String KEY_VERSION = "version";
    private static final String KEY_VIBRATE = "vibrate";
    public static final int MINUTE_INDEX = 1;
    public static final int PM = 1;
    private static final int PULSE_ANIMATOR_DELAY = 300;
    public static final int SECOND_INDEX = 2;
    private static final String TAG = "TimePickerDialog";
    private boolean mAllowAutoAdvance;
    private int mAmKeyCode;
    private View mAmPmLayout;
    private String mAmText;
    private TextView mAmTextView;
    private OnTimeSetListener mCallback;
    private Button mCancelButton;
    private int mCancelResid;
    private String mCancelString;
    private DefaultTimepointLimiter mDefaultLimiter;
    private String mDeletedKeyFormat;
    private boolean mDismissOnPause;
    private String mDoublePlaceholderText;
    private boolean mEnableMinutes;
    private boolean mEnableSeconds;
    private HapticFeedbackController mHapticFeedbackController;
    private String mHourPickerDescription;
    private TextView mHourSpaceView;
    private TextView mHourView;
    private boolean mInKbMode;
    private Timepoint mInitialTime;
    private boolean mIs24HourMode;
    private Node mLegalTimesTree;
    private TimepointLimiter mLimiter;
    private Locale mLocale;
    private String mMinutePickerDescription;
    private TextView mMinuteSpaceView;
    private TextView mMinuteView;
    private Button mOkButton;
    private int mOkResid;
    private String mOkString;
    private DialogInterface.OnCancelListener mOnCancelListener;
    private DialogInterface.OnDismissListener mOnDismissListener;
    private char mPlaceholderText;
    private int mPmKeyCode;
    private String mPmText;
    private TextView mPmTextView;
    private String mSecondPickerDescription;
    private TextView mSecondSpaceView;
    private TextView mSecondView;
    private String mSelectHours;
    private String mSelectMinutes;
    private String mSelectSeconds;
    private int mSelectedColor;
    private boolean mThemeDark;
    private boolean mThemeDarkChanged;
    private RadialPickerLayout mTimePicker;
    private String mTitle;
    private ArrayList<Integer> mTypedTimes;
    private int mUnselectedColor;
    private Version mVersion;
    private boolean mVibrate;
    private Integer mAccentColor = null;
    private Integer mOkColor = null;
    private Integer mCancelColor = null;

    public class KeyboardListener implements View.OnKeyListener {
        private KeyboardListener() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 1) {
                return TimePickerDialog.this.processKeyUp(i);
            }
            return false;
        }
    }

    public static class Node {
        private ArrayList<Node> mChildren = new ArrayList<>();
        private int[] mLegalKeys;

        public Node(int... iArr) {
            this.mLegalKeys = iArr;
        }

        public void addChild(Node node) {
            this.mChildren.add(node);
        }

        public Node canReach(int i) {
            ArrayList<Node> arrayList = this.mChildren;
            if (arrayList == null) {
                return null;
            }
            for (Node node : arrayList) {
                if (node.containsKey(i)) {
                    return node;
                }
            }
            return null;
        }

        public boolean containsKey(int i) {
            for (int i2 : this.mLegalKeys) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }
    }

    public interface OnTimeSetListener {
        void onTimeSet(TimePickerDialog timePickerDialog, int i, int i2, int i3);
    }

    public enum Version {
        VERSION_1,
        VERSION_2
    }

    public TimePickerDialog() {
        DefaultTimepointLimiter defaultTimepointLimiter = new DefaultTimepointLimiter();
        this.mDefaultLimiter = defaultTimepointLimiter;
        this.mLimiter = defaultTimepointLimiter;
        this.mLocale = Locale.getDefault();
    }

    private boolean addKeyIfLegal(int i) {
        boolean z = this.mEnableMinutes;
        int i2 = (!z || this.mEnableSeconds) ? 6 : 4;
        if (!z && !this.mEnableSeconds) {
            i2 = 2;
        }
        if ((this.mIs24HourMode && this.mTypedTimes.size() == i2) || (!this.mIs24HourMode && isTypedTimeFullyLegal())) {
            return false;
        }
        this.mTypedTimes.add(Integer.valueOf(i));
        if (!isTypedTimeLegalSoFar()) {
            deleteLastTypedKey();
            return false;
        }
        Utils.tryAccessibilityAnnounce(this.mTimePicker, String.format(this.mLocale, TimeModel.NUMBER_FORMAT, Integer.valueOf(getValFromKeyCode(i))));
        if (isTypedTimeFullyLegal()) {
            if (!this.mIs24HourMode && this.mTypedTimes.size() <= i2 - 1) {
                ArrayList<Integer> arrayList = this.mTypedTimes;
                arrayList.add(arrayList.size() - 1, 7);
                ArrayList<Integer> arrayList2 = this.mTypedTimes;
                arrayList2.add(arrayList2.size() - 1, 7);
            }
            this.mOkButton.setEnabled(true);
        }
        return true;
    }

    private int deleteLastTypedKey() {
        ArrayList<Integer> arrayList = this.mTypedTimes;
        int iIntValue = arrayList.remove(arrayList.size() - 1).intValue();
        if (!isTypedTimeFullyLegal()) {
            this.mOkButton.setEnabled(false);
        }
        return iIntValue;
    }

    private void finishKbMode(boolean z) {
        this.mInKbMode = false;
        if (!this.mTypedTimes.isEmpty()) {
            Boolean bool = Boolean.FALSE;
            int[] enteredTime = getEnteredTime(new Boolean[]{bool, bool, bool});
            this.mTimePicker.setTime(new Timepoint(enteredTime[0], enteredTime[1], enteredTime[2]));
            if (!this.mIs24HourMode) {
                this.mTimePicker.setAmOrPm(enteredTime[3]);
            }
            this.mTypedTimes.clear();
        }
        if (z) {
            updateDisplay(false);
            this.mTimePicker.trySettingInputEnabled(true);
        }
    }

    private void generateLegalTimesTree() {
        this.mLegalTimesTree = new Node(new int[0]);
        boolean z = this.mEnableMinutes;
        if (!z && this.mIs24HourMode) {
            Node node = new Node(7, 8);
            this.mLegalTimesTree.addChild(node);
            node.addChild(new Node(7, 8, 9, 10, 11, 12, 13, 14, 15, 16));
            Node node2 = new Node(9);
            this.mLegalTimesTree.addChild(node2);
            node2.addChild(new Node(7, 8, 9, 10));
            return;
        }
        if (!z && !this.mIs24HourMode) {
            Node node3 = new Node(getAmOrPmKeyCode(0), getAmOrPmKeyCode(1));
            Node node4 = new Node(8);
            this.mLegalTimesTree.addChild(node4);
            node4.addChild(node3);
            Node node5 = new Node(7, 8, 9);
            node4.addChild(node5);
            node5.addChild(node3);
            Node node6 = new Node(9, 10, 11, 12, 13, 14, 15, 16);
            this.mLegalTimesTree.addChild(node6);
            node6.addChild(node3);
            return;
        }
        if (this.mIs24HourMode) {
            Node node7 = new Node(7, 8, 9, 10, 11, 12);
            Node node8 = new Node(7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
            node7.addChild(node8);
            if (this.mEnableSeconds) {
                Node node9 = new Node(7, 8, 9, 10, 11, 12);
                node9.addChild(new Node(7, 8, 9, 10, 11, 12, 13, 14, 15, 16));
                node8.addChild(node9);
            }
            Node node10 = new Node(7, 8);
            this.mLegalTimesTree.addChild(node10);
            Node node11 = new Node(7, 8, 9, 10, 11, 12);
            node10.addChild(node11);
            node11.addChild(node7);
            node11.addChild(new Node(13, 14, 15, 16));
            Node node12 = new Node(13, 14, 15, 16);
            node10.addChild(node12);
            node12.addChild(node7);
            Node node13 = new Node(9);
            this.mLegalTimesTree.addChild(node13);
            Node node14 = new Node(7, 8, 9, 10);
            node13.addChild(node14);
            node14.addChild(node7);
            Node node15 = new Node(11, 12);
            node13.addChild(node15);
            node15.addChild(node8);
            Node node16 = new Node(10, 11, 12, 13, 14, 15, 16);
            this.mLegalTimesTree.addChild(node16);
            node16.addChild(node7);
            return;
        }
        Node node17 = new Node(getAmOrPmKeyCode(0), getAmOrPmKeyCode(1));
        Node node18 = new Node(7, 8, 9, 10, 11, 12);
        Node node19 = new Node(7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
        node19.addChild(node17);
        node18.addChild(node19);
        Node node20 = new Node(8);
        this.mLegalTimesTree.addChild(node20);
        node20.addChild(node17);
        Node node21 = new Node(7, 8, 9);
        node20.addChild(node21);
        node21.addChild(node17);
        Node node22 = new Node(7, 8, 9, 10, 11, 12);
        node21.addChild(node22);
        node22.addChild(node17);
        Node node23 = new Node(7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
        node22.addChild(node23);
        node23.addChild(node17);
        if (this.mEnableSeconds) {
            node23.addChild(node18);
        }
        Node node24 = new Node(13, 14, 15, 16);
        node21.addChild(node24);
        node24.addChild(node17);
        if (this.mEnableSeconds) {
            node24.addChild(node18);
        }
        Node node25 = new Node(10, 11, 12);
        node20.addChild(node25);
        Node node26 = new Node(7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
        node25.addChild(node26);
        node26.addChild(node17);
        if (this.mEnableSeconds) {
            node26.addChild(node18);
        }
        Node node27 = new Node(9, 10, 11, 12, 13, 14, 15, 16);
        this.mLegalTimesTree.addChild(node27);
        node27.addChild(node17);
        Node node28 = new Node(7, 8, 9, 10, 11, 12);
        node27.addChild(node28);
        Node node29 = new Node(7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
        node28.addChild(node29);
        node29.addChild(node17);
        if (this.mEnableSeconds) {
            node29.addChild(node18);
        }
    }

    private int getAmOrPmKeyCode(int i) {
        if (this.mAmKeyCode == -1 || this.mPmKeyCode == -1) {
            KeyCharacterMap keyCharacterMapLoad = KeyCharacterMap.load(-1);
            for (int i2 = 0; i2 < Math.max(this.mAmText.length(), this.mPmText.length()); i2++) {
                char cCharAt = this.mAmText.toLowerCase(this.mLocale).charAt(i2);
                char cCharAt2 = this.mPmText.toLowerCase(this.mLocale).charAt(i2);
                if (cCharAt != cCharAt2) {
                    KeyEvent[] events = keyCharacterMapLoad.getEvents(new char[]{cCharAt, cCharAt2});
                    if (events != null && events.length == 4) {
                        this.mAmKeyCode = events[0].getKeyCode();
                        this.mPmKeyCode = events[2].getKeyCode();
                        break;
                    }
                    Log.e(TAG, "Unable to find keycodes for AM and PM.");
                    break;
                }
            }
        }
        if (i == 0) {
            return this.mAmKeyCode;
        }
        if (i == 1) {
            return this.mPmKeyCode;
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0097  */
    private int[] getEnteredTime(Boolean[] boolArr) {
        int i;
        int i2;
        int i3;
        int i4 = -1;
        if (this.mIs24HourMode || !isTypedTimeFullyLegal()) {
            i = -1;
            i2 = 1;
        } else {
            int iIntValue = ((Integer) dd2.b(1, this.mTypedTimes)).intValue();
            i = iIntValue == getAmOrPmKeyCode(0) ? 0 : iIntValue == getAmOrPmKeyCode(1) ? 1 : -1;
            i2 = 2;
        }
        int i5 = this.mEnableSeconds ? 2 : 0;
        int i6 = 0;
        int i7 = -1;
        for (int i8 = i2; i8 <= this.mTypedTimes.size(); i8++) {
            int valFromKeyCode = getValFromKeyCode(((Integer) dd2.b(i8, this.mTypedTimes)).intValue());
            if (this.mEnableSeconds) {
                if (i8 == i2) {
                    i6 = valFromKeyCode;
                } else if (i8 == i2 + 1) {
                    i6 += valFromKeyCode * 10;
                    if (valFromKeyCode == 0) {
                        boolArr[2] = Boolean.TRUE;
                    }
                }
            }
            if (this.mEnableMinutes) {
                int i9 = i2 + i5;
                if (i8 == i9) {
                    i7 = valFromKeyCode;
                } else if (i8 == i9 + 1) {
                    int i10 = (valFromKeyCode * 10) + i7;
                    if (valFromKeyCode == 0) {
                        boolArr[1] = Boolean.TRUE;
                    }
                    i7 = i10;
                } else if (i8 == i9 + 2) {
                    i4 = valFromKeyCode;
                } else if (i8 == i9 + 3) {
                    i3 = (valFromKeyCode * 10) + i4;
                    if (valFromKeyCode == 0) {
                        boolArr[0] = Boolean.TRUE;
                    }
                    i4 = i3;
                }
            } else {
                int i11 = i2 + i5;
                if (i8 == i11) {
                    i4 = valFromKeyCode;
                } else if (i8 == i11 + 1) {
                    i3 = (valFromKeyCode * 10) + i4;
                    if (valFromKeyCode == 0) {
                        boolArr[0] = Boolean.TRUE;
                    }
                    i4 = i3;
                }
            }
        }
        return new int[]{i4, i7, i6, i};
    }

    private static int getValFromKeyCode(int i) {
        switch (i) {
            case 7:
                return 0;
            case 8:
                return 1;
            case 9:
                return 2;
            case 10:
                return 3;
            case 11:
                return 4;
            case 12:
                return 5;
            case 13:
                return 6;
            case 14:
                return 7;
            case 15:
                return 8;
            case 16:
                return 9;
            default:
                return -1;
        }
    }

    private boolean isTypedTimeFullyLegal() {
        int i;
        int i2;
        if (!this.mIs24HourMode) {
            return this.mTypedTimes.contains(Integer.valueOf(getAmOrPmKeyCode(0))) || this.mTypedTimes.contains(Integer.valueOf(getAmOrPmKeyCode(1)));
        }
        Boolean bool = Boolean.FALSE;
        int[] enteredTime = getEnteredTime(new Boolean[]{bool, bool, bool});
        return enteredTime[0] >= 0 && (i = enteredTime[1]) >= 0 && i < 60 && (i2 = enteredTime[2]) >= 0 && i2 < 60;
    }

    private boolean isTypedTimeLegalSoFar() {
        Node nodeCanReach = this.mLegalTimesTree;
        Iterator<Integer> it = this.mTypedTimes.iterator();
        while (it.hasNext()) {
            nodeCanReach = nodeCanReach.canReach(it.next().intValue());
            if (nodeCanReach == null) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$0(View view) {
        setCurrentItemShowing(0, true, false, true);
        tryVibrate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$1(View view) {
        setCurrentItemShowing(1, true, false, true);
        tryVibrate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$2(View view) {
        setCurrentItemShowing(2, true, false, true);
        tryVibrate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$3(View view) {
        if (this.mInKbMode && isTypedTimeFullyLegal()) {
            finishKbMode(false);
        } else {
            tryVibrate();
        }
        notifyOnDateListener();
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$4(View view) {
        tryVibrate();
        if (getDialog() != null) {
            getDialog().cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$5(View view) {
        if (isAmDisabled() || isPmDisabled()) {
            return;
        }
        tryVibrate();
        int isCurrentlyAmOrPm = this.mTimePicker.getIsCurrentlyAmOrPm();
        if (isCurrentlyAmOrPm == 0) {
            isCurrentlyAmOrPm = 1;
        } else if (isCurrentlyAmOrPm == 1) {
            isCurrentlyAmOrPm = 0;
        }
        this.mTimePicker.setAmOrPm(isCurrentlyAmOrPm);
    }

    public static TimePickerDialog newInstance(OnTimeSetListener onTimeSetListener, boolean z) {
        Calendar calendar = Calendar.getInstance();
        return newInstance(onTimeSetListener, calendar.get(11), calendar.get(12), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean processKeyUp(int i) {
        String str;
        if (i == 61) {
            if (this.mInKbMode) {
                if (isTypedTimeFullyLegal()) {
                    finishKbMode(true);
                }
                return true;
            }
        } else {
            if (i == 66) {
                if (this.mInKbMode) {
                    if (!isTypedTimeFullyLegal()) {
                        return true;
                    }
                    finishKbMode(false);
                }
                OnTimeSetListener onTimeSetListener = this.mCallback;
                if (onTimeSetListener != null) {
                    onTimeSetListener.onTimeSet(this, this.mTimePicker.getHours(), this.mTimePicker.getMinutes(), this.mTimePicker.getSeconds());
                }
                dismiss();
                return true;
            }
            if (i == 67) {
                if (this.mInKbMode && !this.mTypedTimes.isEmpty()) {
                    int iDeleteLastTypedKey = deleteLastTypedKey();
                    if (iDeleteLastTypedKey == getAmOrPmKeyCode(0)) {
                        str = this.mAmText;
                    } else {
                        str = iDeleteLastTypedKey == getAmOrPmKeyCode(1) ? this.mPmText : String.format(this.mLocale, TimeModel.NUMBER_FORMAT, Integer.valueOf(getValFromKeyCode(iDeleteLastTypedKey)));
                    }
                    Utils.tryAccessibilityAnnounce(this.mTimePicker, String.format(this.mDeletedKeyFormat, str));
                    updateDisplay(true);
                }
            } else if (i == 7 || i == 8 || i == 9 || i == 10 || i == 11 || i == 12 || i == 13 || i == 14 || i == 15 || i == 16 || (!this.mIs24HourMode && (i == getAmOrPmKeyCode(0) || i == getAmOrPmKeyCode(1)))) {
                if (this.mInKbMode) {
                    if (addKeyIfLegal(i)) {
                        updateDisplay(false);
                    }
                    return true;
                }
                if (this.mTimePicker == null) {
                    Log.e(TAG, "Unable to initiate keyboard mode, TimePicker was null.");
                    return true;
                }
                this.mTypedTimes.clear();
                tryStartingKbMode(i);
                return true;
            }
        }
        return false;
    }

    private void setCurrentItemShowing(int i, boolean z, boolean z2, boolean z3) {
        TextView textView;
        this.mTimePicker.setCurrentItemShowing(i, z);
        if (i != 0) {
            RadialPickerLayout radialPickerLayout = this.mTimePicker;
            if (i != 1) {
                int seconds = radialPickerLayout.getSeconds();
                this.mTimePicker.setContentDescription(this.mSecondPickerDescription + ": " + seconds);
                if (z3) {
                    Utils.tryAccessibilityAnnounce(this.mTimePicker, this.mSelectSeconds);
                }
                textView = this.mSecondView;
            } else {
                int minutes = radialPickerLayout.getMinutes();
                this.mTimePicker.setContentDescription(this.mMinutePickerDescription + ": " + minutes);
                if (z3) {
                    Utils.tryAccessibilityAnnounce(this.mTimePicker, this.mSelectMinutes);
                }
                textView = this.mMinuteView;
            }
        } else {
            int hours = this.mTimePicker.getHours();
            if (!this.mIs24HourMode) {
                hours %= 12;
            }
            this.mTimePicker.setContentDescription(this.mHourPickerDescription + ": " + hours);
            if (z3) {
                Utils.tryAccessibilityAnnounce(this.mTimePicker, this.mSelectHours);
            }
            textView = this.mHourView;
        }
        int i2 = i == 0 ? this.mSelectedColor : this.mUnselectedColor;
        int i3 = i == 1 ? this.mSelectedColor : this.mUnselectedColor;
        int i4 = i == 2 ? this.mSelectedColor : this.mUnselectedColor;
        this.mHourView.setTextColor(i2);
        this.mMinuteView.setTextColor(i3);
        this.mSecondView.setTextColor(i4);
        ObjectAnimator pulseAnimator = Utils.getPulseAnimator(textView, 0.85f, 1.1f);
        if (z2) {
            pulseAnimator.setStartDelay(300L);
        }
        pulseAnimator.start();
    }

    private void setHour(int i, boolean z) {
        String str;
        if (this.mIs24HourMode) {
            str = TimeModel.ZERO_LEADING_NUMBER_FORMAT;
        } else {
            i %= 12;
            str = TimeModel.NUMBER_FORMAT;
            if (i == 0) {
                i = 12;
            }
        }
        String str2 = String.format(this.mLocale, str, Integer.valueOf(i));
        this.mHourView.setText(str2);
        this.mHourSpaceView.setText(str2);
        if (z) {
            Utils.tryAccessibilityAnnounce(this.mTimePicker, str2);
        }
    }

    private void setMinute(int i) {
        if (i == 60) {
            i = 0;
        }
        String str = String.format(this.mLocale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
        Utils.tryAccessibilityAnnounce(this.mTimePicker, str);
        this.mMinuteView.setText(str);
        this.mMinuteSpaceView.setText(str);
    }

    private void setSecond(int i) {
        if (i == 60) {
            i = 0;
        }
        String str = String.format(this.mLocale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
        Utils.tryAccessibilityAnnounce(this.mTimePicker, str);
        this.mSecondView.setText(str);
        this.mSecondSpaceView.setText(str);
    }

    private void tryStartingKbMode(int i) {
        if (this.mTimePicker.trySettingInputEnabled(false)) {
            if (i == -1 || addKeyIfLegal(i)) {
                this.mInKbMode = true;
                this.mOkButton.setEnabled(false);
                updateDisplay(false);
            }
        }
    }

    private void updateAmPmDisplay(int i) {
        if (this.mVersion == Version.VERSION_2) {
            TextView textView = this.mAmTextView;
            if (i == 0) {
                textView.setTextColor(this.mSelectedColor);
                this.mPmTextView.setTextColor(this.mUnselectedColor);
                Utils.tryAccessibilityAnnounce(this.mTimePicker, this.mAmText);
                return;
            } else {
                textView.setTextColor(this.mUnselectedColor);
                this.mPmTextView.setTextColor(this.mSelectedColor);
                Utils.tryAccessibilityAnnounce(this.mTimePicker, this.mPmText);
                return;
            }
        }
        if (i == 0) {
            this.mPmTextView.setText(this.mAmText);
            Utils.tryAccessibilityAnnounce(this.mTimePicker, this.mAmText);
            this.mPmTextView.setContentDescription(this.mAmText);
            return;
        }
        TextView textView2 = this.mPmTextView;
        if (i != 1) {
            textView2.setText(this.mDoublePlaceholderText);
            return;
        }
        textView2.setText(this.mPmText);
        Utils.tryAccessibilityAnnounce(this.mTimePicker, this.mPmText);
        this.mPmTextView.setContentDescription(this.mPmText);
    }

    private void updateDisplay(boolean z) {
        if (!z && this.mTypedTimes.isEmpty()) {
            int hours = this.mTimePicker.getHours();
            int minutes = this.mTimePicker.getMinutes();
            int seconds = this.mTimePicker.getSeconds();
            setHour(hours, true);
            setMinute(minutes);
            setSecond(seconds);
            if (!this.mIs24HourMode) {
                updateAmPmDisplay(hours >= 12 ? 1 : 0);
            }
            setCurrentItemShowing(this.mTimePicker.getCurrentItemShowing(), true, true, true);
            this.mOkButton.setEnabled(true);
            return;
        }
        Boolean bool = Boolean.FALSE;
        Boolean[] boolArr = {bool, bool, bool};
        int[] enteredTime = getEnteredTime(boolArr);
        String str = boolArr[0].booleanValue() ? TimeModel.ZERO_LEADING_NUMBER_FORMAT : "%2d";
        String str2 = boolArr[1].booleanValue() ? TimeModel.ZERO_LEADING_NUMBER_FORMAT : "%2d";
        String str3 = boolArr[1].booleanValue() ? TimeModel.ZERO_LEADING_NUMBER_FORMAT : "%2d";
        int i = enteredTime[0];
        String strReplace = i == -1 ? this.mDoublePlaceholderText : String.format(str, Integer.valueOf(i)).replace(' ', this.mPlaceholderText);
        int i2 = enteredTime[1];
        String strReplace2 = i2 == -1 ? this.mDoublePlaceholderText : String.format(str2, Integer.valueOf(i2)).replace(' ', this.mPlaceholderText);
        String strReplace3 = enteredTime[2] == -1 ? this.mDoublePlaceholderText : String.format(str3, Integer.valueOf(enteredTime[1])).replace(' ', this.mPlaceholderText);
        this.mHourView.setText(strReplace);
        this.mHourSpaceView.setText(strReplace);
        this.mHourView.setTextColor(this.mUnselectedColor);
        this.mMinuteView.setText(strReplace2);
        this.mMinuteSpaceView.setText(strReplace2);
        this.mMinuteView.setTextColor(this.mUnselectedColor);
        this.mSecondView.setText(strReplace3);
        this.mSecondSpaceView.setText(strReplace3);
        this.mSecondView.setTextColor(this.mUnselectedColor);
        if (this.mIs24HourMode) {
            return;
        }
        updateAmPmDisplay(enteredTime[3]);
    }

    @Override // com.wdullaer.materialdatetimepicker.time.RadialPickerLayout.OnValueSelectedListener
    public void advancePicker(int i) {
        if (this.mAllowAutoAdvance) {
            if (i == 0 && this.mEnableMinutes) {
                setCurrentItemShowing(1, true, true, false);
                Utils.tryAccessibilityAnnounce(this.mTimePicker, this.mSelectHours + ". " + this.mTimePicker.getMinutes());
                return;
            }
            if (i == 1 && this.mEnableSeconds) {
                setCurrentItemShowing(2, true, true, false);
                Utils.tryAccessibilityAnnounce(this.mTimePicker, this.mSelectMinutes + ". " + this.mTimePicker.getSeconds());
            }
        }
    }

    public void dismissOnPause(boolean z) {
        this.mDismissOnPause = z;
    }

    public void enableMinutes(boolean z) {
        if (!z) {
            this.mEnableSeconds = false;
        }
        this.mEnableMinutes = z;
    }

    @Override // com.wdullaer.materialdatetimepicker.time.RadialPickerLayout.OnValueSelectedListener
    public void enablePicker() {
        if (!isTypedTimeFullyLegal()) {
            this.mTypedTimes.clear();
        }
        finishKbMode(true);
    }

    public void enableSeconds(boolean z) {
        if (z) {
            this.mEnableMinutes = true;
        }
        this.mEnableSeconds = z;
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimePickerController
    public int getAccentColor() {
        return this.mAccentColor.intValue();
    }

    public OnTimeSetListener getOnTimeSetListener() {
        return this.mCallback;
    }

    public Timepoint.TYPE getPickerResolution() {
        if (this.mEnableSeconds) {
            return Timepoint.TYPE.SECOND;
        }
        return this.mEnableMinutes ? Timepoint.TYPE.MINUTE : Timepoint.TYPE.HOUR;
    }

    public Timepoint getSelectedTime() {
        return this.mTimePicker.getTime();
    }

    public String getTitle() {
        return this.mTitle;
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimePickerController
    public Version getVersion() {
        return this.mVersion;
    }

    public void initialize(OnTimeSetListener onTimeSetListener, int i, int i2, int i3, boolean z) {
        this.mCallback = onTimeSetListener;
        this.mInitialTime = new Timepoint(i, i2, i3);
        this.mIs24HourMode = z;
        this.mInKbMode = false;
        this.mTitle = "";
        this.mThemeDark = false;
        this.mThemeDarkChanged = false;
        this.mVibrate = true;
        this.mDismissOnPause = false;
        this.mEnableSeconds = false;
        this.mEnableMinutes = true;
        this.mOkResid = R.string.mdtp_ok;
        this.mCancelResid = R.string.mdtp_cancel;
        this.mVersion = Version.VERSION_2;
        this.mTimePicker = null;
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimePickerController
    public boolean is24HourMode() {
        return this.mIs24HourMode;
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimePickerController
    public boolean isAmDisabled() {
        return this.mLimiter.isAmDisabled();
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimePickerController
    public boolean isOutOfRange(Timepoint timepoint, int i) {
        return this.mLimiter.isOutOfRange(timepoint, i, getPickerResolution());
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimePickerController
    public boolean isPmDisabled() {
        return this.mLimiter.isPmDisabled();
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimePickerController
    public boolean isThemeDark() {
        return this.mThemeDark;
    }

    public void notifyOnDateListener() {
        OnTimeSetListener onTimeSetListener = this.mCallback;
        if (onTimeSetListener != null) {
            onTimeSetListener.onTimeSet(this, this.mTimePicker.getHours(), this.mTimePicker.getMinutes(), this.mTimePicker.getSeconds());
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        DialogInterface.OnCancelListener onCancelListener = this.mOnCancelListener;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViewsInLayout();
            viewGroup.addView(onCreateView(requireActivity().getLayoutInflater(), viewGroup, null));
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, 0);
        if (bundle != null && bundle.containsKey(KEY_INITIAL_TIME) && bundle.containsKey(KEY_IS_24_HOUR_VIEW)) {
            this.mInitialTime = (Timepoint) bundle.getParcelable(KEY_INITIAL_TIME);
            this.mIs24HourMode = bundle.getBoolean(KEY_IS_24_HOUR_VIEW);
            this.mInKbMode = bundle.getBoolean(KEY_IN_KB_MODE);
            this.mTitle = bundle.getString(KEY_TITLE);
            this.mThemeDark = bundle.getBoolean(KEY_THEME_DARK);
            this.mThemeDarkChanged = bundle.getBoolean(KEY_THEME_DARK_CHANGED);
            if (bundle.containsKey(KEY_ACCENT)) {
                this.mAccentColor = Integer.valueOf(bundle.getInt(KEY_ACCENT));
            }
            this.mVibrate = bundle.getBoolean(KEY_VIBRATE);
            this.mDismissOnPause = bundle.getBoolean(KEY_DISMISS);
            this.mEnableSeconds = bundle.getBoolean(KEY_ENABLE_SECONDS);
            this.mEnableMinutes = bundle.getBoolean(KEY_ENABLE_MINUTES);
            this.mOkResid = bundle.getInt(KEY_OK_RESID);
            this.mOkString = bundle.getString(KEY_OK_STRING);
            if (bundle.containsKey(KEY_OK_COLOR)) {
                this.mOkColor = Integer.valueOf(bundle.getInt(KEY_OK_COLOR));
            }
            if (this.mOkColor.intValue() == Integer.MAX_VALUE) {
                this.mOkColor = null;
            }
            this.mCancelResid = bundle.getInt(KEY_CANCEL_RESID);
            this.mCancelString = bundle.getString(KEY_CANCEL_STRING);
            if (bundle.containsKey(KEY_CANCEL_COLOR)) {
                this.mCancelColor = Integer.valueOf(bundle.getInt(KEY_CANCEL_COLOR));
            }
            this.mVersion = (Version) bundle.getSerializable(KEY_VERSION);
            this.mLimiter = (TimepointLimiter) bundle.getParcelable(KEY_TIMEPOINTLIMITER);
            this.mLocale = (Locale) bundle.getSerializable("locale");
            TimepointLimiter timepointLimiter = this.mLimiter;
            this.mDefaultLimiter = timepointLimiter instanceof DefaultTimepointLimiter ? (DefaultTimepointLimiter) timepointLimiter : new DefaultTimepointLimiter();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = 0;
        View viewInflate = layoutInflater.inflate(this.mVersion == Version.VERSION_1 ? R.layout.mdtp_time_picker_dialog : R.layout.mdtp_time_picker_dialog_v2, viewGroup, false);
        KeyboardListener keyboardListener = new KeyboardListener();
        viewInflate.findViewById(R.id.mdtp_time_picker_dialog).setOnKeyListener(keyboardListener);
        if (this.mAccentColor == null) {
            this.mAccentColor = Integer.valueOf(Utils.getAccentColorFromThemeIfAvailable(getActivity()));
        }
        if (!this.mThemeDarkChanged) {
            this.mThemeDark = Utils.isDarkTheme(getActivity(), this.mThemeDark);
        }
        Resources resources = getResources();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        this.mHourPickerDescription = resources.getString(R.string.mdtp_hour_picker_description);
        this.mSelectHours = resources.getString(R.string.mdtp_select_hours);
        this.mMinutePickerDescription = resources.getString(R.string.mdtp_minute_picker_description);
        this.mSelectMinutes = resources.getString(R.string.mdtp_select_minutes);
        this.mSecondPickerDescription = resources.getString(R.string.mdtp_second_picker_description);
        this.mSelectSeconds = resources.getString(R.string.mdtp_select_seconds);
        this.mSelectedColor = ContextCompat.getColor(fragmentActivityRequireActivity, R.color.mdtp_white);
        this.mUnselectedColor = ContextCompat.getColor(fragmentActivityRequireActivity, R.color.mdtp_accent_color_focused);
        TextView textView = (TextView) viewInflate.findViewById(R.id.mdtp_hours);
        this.mHourView = textView;
        textView.setOnKeyListener(keyboardListener);
        this.mHourSpaceView = (TextView) viewInflate.findViewById(R.id.mdtp_hour_space);
        this.mMinuteSpaceView = (TextView) viewInflate.findViewById(R.id.mdtp_minutes_space);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.mdtp_minutes);
        this.mMinuteView = textView2;
        textView2.setOnKeyListener(keyboardListener);
        this.mSecondSpaceView = (TextView) viewInflate.findViewById(R.id.mdtp_seconds_space);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.mdtp_seconds);
        this.mSecondView = textView3;
        textView3.setOnKeyListener(keyboardListener);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.mdtp_am_label);
        this.mAmTextView = textView4;
        textView4.setOnKeyListener(keyboardListener);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.mdtp_pm_label);
        this.mPmTextView = textView5;
        textView5.setOnKeyListener(keyboardListener);
        this.mAmPmLayout = viewInflate.findViewById(R.id.mdtp_ampm_layout);
        String[] amPmStrings = new DateFormatSymbols(this.mLocale).getAmPmStrings();
        this.mAmText = amPmStrings[0];
        int i2 = 1;
        this.mPmText = amPmStrings[1];
        this.mHapticFeedbackController = new HapticFeedbackController(getActivity());
        if (this.mTimePicker != null) {
            this.mInitialTime = new Timepoint(this.mTimePicker.getHours(), this.mTimePicker.getMinutes(), this.mTimePicker.getSeconds());
        }
        this.mInitialTime = roundToNearest(this.mInitialTime);
        RadialPickerLayout radialPickerLayout = (RadialPickerLayout) viewInflate.findViewById(R.id.mdtp_time_picker);
        this.mTimePicker = radialPickerLayout;
        radialPickerLayout.setOnValueSelectedListener(this);
        this.mTimePicker.setOnKeyListener(keyboardListener);
        this.mTimePicker.initialize(getActivity(), this.mLocale, this, this.mInitialTime, this.mIs24HourMode);
        setCurrentItemShowing((bundle == null || !bundle.containsKey(KEY_CURRENT_ITEM_SHOWING)) ? 0 : bundle.getInt(KEY_CURRENT_ITEM_SHOWING), false, true, true);
        this.mTimePicker.invalidate();
        this.mHourView.setOnClickListener(new ku8(this, i));
        this.mMinuteView.setOnClickListener(new View.OnClickListener() { // from class: lu8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.b.lambda$onCreateView$1(view);
            }
        });
        this.mSecondView.setOnClickListener(new g84(this, i2));
        Button button = (Button) viewInflate.findViewById(R.id.mdtp_ok);
        this.mOkButton = button;
        button.setOnClickListener(new vv5(this, i2));
        this.mOkButton.setOnKeyListener(keyboardListener);
        this.mOkButton.setTypeface(ResourcesCompat.getFont(fragmentActivityRequireActivity, R.font.robotomedium));
        String str = this.mOkString;
        Button button2 = this.mOkButton;
        if (str != null) {
            button2.setText(str);
        } else {
            button2.setText(this.mOkResid);
        }
        Button button3 = (Button) viewInflate.findViewById(R.id.mdtp_cancel);
        this.mCancelButton = button3;
        button3.setOnClickListener(new wv5(this, i2));
        this.mCancelButton.setTypeface(ResourcesCompat.getFont(fragmentActivityRequireActivity, R.font.robotomedium));
        String str2 = this.mCancelString;
        Button button4 = this.mCancelButton;
        if (str2 != null) {
            button4.setText(str2);
        } else {
            button4.setText(this.mCancelResid);
        }
        this.mCancelButton.setVisibility(isCancelable() ? 0 : 8);
        if (this.mIs24HourMode) {
            this.mAmPmLayout.setVisibility(8);
        } else {
            mu8 mu8Var = new mu8(this, i);
            this.mAmTextView.setVisibility(8);
            this.mPmTextView.setVisibility(0);
            this.mAmPmLayout.setOnClickListener(mu8Var);
            if (this.mVersion == Version.VERSION_2) {
                this.mAmTextView.setText(this.mAmText);
                this.mPmTextView.setText(this.mPmText);
                this.mAmTextView.setVisibility(0);
            }
            updateAmPmDisplay(!this.mInitialTime.isAM() ? 1 : 0);
        }
        if (!this.mEnableSeconds) {
            this.mSecondView.setVisibility(8);
            viewInflate.findViewById(R.id.mdtp_separator_seconds).setVisibility(8);
        }
        if (!this.mEnableMinutes) {
            this.mMinuteSpaceView.setVisibility(8);
            viewInflate.findViewById(R.id.mdtp_separator).setVisibility(8);
        }
        if (getResources().getConfiguration().orientation == 2) {
            if (this.mEnableMinutes || this.mEnableSeconds) {
                boolean z = this.mEnableSeconds;
                if (!z && this.mIs24HourMode) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.addRule(14);
                    layoutParams.addRule(2, R.id.mdtp_center_view);
                    ((TextView) viewInflate.findViewById(R.id.mdtp_separator)).setLayoutParams(layoutParams);
                } else if (!z) {
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams2.addRule(14);
                    layoutParams2.addRule(2, R.id.mdtp_center_view);
                    ((TextView) viewInflate.findViewById(R.id.mdtp_separator)).setLayoutParams(layoutParams2);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams3.addRule(13);
                    layoutParams3.addRule(3, R.id.mdtp_center_view);
                    this.mAmPmLayout.setLayoutParams(layoutParams3);
                } else if (this.mIs24HourMode) {
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams4.addRule(14);
                    layoutParams4.addRule(2, R.id.mdtp_seconds_space);
                    ((TextView) viewInflate.findViewById(R.id.mdtp_separator)).setLayoutParams(layoutParams4);
                    RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams5.addRule(13);
                    this.mSecondSpaceView.setLayoutParams(layoutParams5);
                } else {
                    RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams6.addRule(13);
                    this.mSecondSpaceView.setLayoutParams(layoutParams6);
                    RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams7.addRule(14);
                    layoutParams7.addRule(2, R.id.mdtp_seconds_space);
                    ((TextView) viewInflate.findViewById(R.id.mdtp_separator)).setLayoutParams(layoutParams7);
                    RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams8.addRule(14);
                    layoutParams8.addRule(3, R.id.mdtp_seconds_space);
                    this.mAmPmLayout.setLayoutParams(layoutParams8);
                }
            } else {
                RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams9.addRule(2, R.id.mdtp_center_view);
                layoutParams9.addRule(14);
                this.mHourSpaceView.setLayoutParams(layoutParams9);
                if (this.mIs24HourMode) {
                    RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams10.addRule(1, R.id.mdtp_hour_space);
                    this.mAmPmLayout.setLayoutParams(layoutParams10);
                }
            }
        } else if (this.mIs24HourMode && !this.mEnableSeconds && this.mEnableMinutes) {
            RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams11.addRule(13);
            ((TextView) viewInflate.findViewById(R.id.mdtp_separator)).setLayoutParams(layoutParams11);
        } else if (!this.mEnableMinutes && !this.mEnableSeconds) {
            RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams12.addRule(13);
            this.mHourSpaceView.setLayoutParams(layoutParams12);
            if (!this.mIs24HourMode) {
                RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams13.addRule(1, R.id.mdtp_hour_space);
                layoutParams13.addRule(4, R.id.mdtp_hour_space);
                this.mAmPmLayout.setLayoutParams(layoutParams13);
            }
        } else if (this.mEnableSeconds) {
            View viewFindViewById = viewInflate.findViewById(R.id.mdtp_separator);
            RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams14.addRule(0, R.id.mdtp_minutes_space);
            layoutParams14.addRule(15, -1);
            viewFindViewById.setLayoutParams(layoutParams14);
            if (this.mIs24HourMode) {
                RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams15.addRule(1, R.id.mdtp_center_view);
                this.mMinuteSpaceView.setLayoutParams(layoutParams15);
            } else {
                RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams16.addRule(13);
                this.mMinuteSpaceView.setLayoutParams(layoutParams16);
            }
        }
        this.mAllowAutoAdvance = true;
        setHour(this.mInitialTime.getHour(), true);
        setMinute(this.mInitialTime.getMinute());
        setSecond(this.mInitialTime.getSecond());
        this.mDoublePlaceholderText = resources.getString(R.string.mdtp_time_placeholder);
        this.mDeletedKeyFormat = resources.getString(R.string.mdtp_deleted_key);
        this.mPlaceholderText = this.mDoublePlaceholderText.charAt(0);
        this.mPmKeyCode = -1;
        this.mAmKeyCode = -1;
        generateLegalTimesTree();
        if (this.mInKbMode && bundle != null) {
            this.mTypedTimes = bundle.getIntegerArrayList(KEY_TYPED_TIMES);
            tryStartingKbMode(-1);
            this.mHourView.invalidate();
        } else if (this.mTypedTimes == null) {
            this.mTypedTimes = new ArrayList<>();
        }
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.mdtp_time_picker_header);
        if (!this.mTitle.isEmpty()) {
            textView6.setVisibility(0);
            textView6.setText(this.mTitle);
        }
        textView6.setBackgroundColor(Utils.darkenColor(this.mAccentColor.intValue()));
        viewInflate.findViewById(R.id.mdtp_time_display_background).setBackgroundColor(this.mAccentColor.intValue());
        viewInflate.findViewById(R.id.mdtp_time_display).setBackgroundColor(this.mAccentColor.intValue());
        Integer num = this.mOkColor;
        if (num == null) {
            num = this.mAccentColor;
            this.mOkColor = num;
        }
        this.mOkButton.setTextColor(num.intValue());
        Integer num2 = this.mCancelColor;
        if (num2 == null) {
            num2 = this.mAccentColor;
            this.mCancelColor = num2;
        }
        this.mCancelButton.setTextColor(num2.intValue());
        if (getDialog() == null) {
            viewInflate.findViewById(R.id.mdtp_done_background).setVisibility(8);
        }
        int color = ContextCompat.getColor(fragmentActivityRequireActivity, R.color.mdtp_circle_background);
        int color2 = ContextCompat.getColor(fragmentActivityRequireActivity, R.color.mdtp_background_color);
        int color3 = ContextCompat.getColor(fragmentActivityRequireActivity, R.color.mdtp_light_gray);
        int color4 = ContextCompat.getColor(fragmentActivityRequireActivity, R.color.mdtp_light_gray);
        RadialPickerLayout radialPickerLayout2 = this.mTimePicker;
        if (this.mThemeDark) {
            color = color4;
        }
        radialPickerLayout2.setBackgroundColor(color);
        View viewFindViewById2 = viewInflate.findViewById(R.id.mdtp_time_picker_dialog);
        if (this.mThemeDark) {
            color2 = color3;
        }
        viewFindViewById2.setBackgroundColor(color2);
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        DialogInterface.OnDismissListener onDismissListener = this.mOnDismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.mHapticFeedbackController.stop();
        if (this.mDismissOnPause) {
            dismiss();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.mHapticFeedbackController.start();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        RadialPickerLayout radialPickerLayout = this.mTimePicker;
        if (radialPickerLayout != null) {
            bundle.putParcelable(KEY_INITIAL_TIME, radialPickerLayout.getTime());
            bundle.putBoolean(KEY_IS_24_HOUR_VIEW, this.mIs24HourMode);
            bundle.putInt(KEY_CURRENT_ITEM_SHOWING, this.mTimePicker.getCurrentItemShowing());
            bundle.putBoolean(KEY_IN_KB_MODE, this.mInKbMode);
            if (this.mInKbMode) {
                bundle.putIntegerArrayList(KEY_TYPED_TIMES, this.mTypedTimes);
            }
            bundle.putString(KEY_TITLE, this.mTitle);
            bundle.putBoolean(KEY_THEME_DARK, this.mThemeDark);
            bundle.putBoolean(KEY_THEME_DARK_CHANGED, this.mThemeDarkChanged);
            Integer num = this.mAccentColor;
            if (num != null) {
                bundle.putInt(KEY_ACCENT, num.intValue());
            }
            bundle.putBoolean(KEY_VIBRATE, this.mVibrate);
            bundle.putBoolean(KEY_DISMISS, this.mDismissOnPause);
            bundle.putBoolean(KEY_ENABLE_SECONDS, this.mEnableSeconds);
            bundle.putBoolean(KEY_ENABLE_MINUTES, this.mEnableMinutes);
            bundle.putInt(KEY_OK_RESID, this.mOkResid);
            bundle.putString(KEY_OK_STRING, this.mOkString);
            Integer num2 = this.mOkColor;
            if (num2 != null) {
                bundle.putInt(KEY_OK_COLOR, num2.intValue());
            }
            bundle.putInt(KEY_CANCEL_RESID, this.mCancelResid);
            bundle.putString(KEY_CANCEL_STRING, this.mCancelString);
            Integer num3 = this.mCancelColor;
            if (num3 != null) {
                bundle.putInt(KEY_CANCEL_COLOR, num3.intValue());
            }
            bundle.putSerializable(KEY_VERSION, this.mVersion);
            bundle.putParcelable(KEY_TIMEPOINTLIMITER, this.mLimiter);
            bundle.putSerializable("locale", this.mLocale);
        }
    }

    @Override // com.wdullaer.materialdatetimepicker.time.RadialPickerLayout.OnValueSelectedListener
    public void onValueSelected(Timepoint timepoint) {
        setHour(timepoint.getHour(), false);
        this.mTimePicker.setContentDescription(this.mHourPickerDescription + ": " + timepoint.getHour());
        setMinute(timepoint.getMinute());
        this.mTimePicker.setContentDescription(this.mMinutePickerDescription + ": " + timepoint.getMinute());
        setSecond(timepoint.getSecond());
        this.mTimePicker.setContentDescription(this.mSecondPickerDescription + ": " + timepoint.getSecond());
        if (this.mIs24HourMode) {
            return;
        }
        updateAmPmDisplay(!timepoint.isAM() ? 1 : 0);
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimePickerController
    public Timepoint roundToNearest(Timepoint timepoint, Timepoint.TYPE type) {
        return this.mLimiter.roundToNearest(timepoint, type, getPickerResolution());
    }

    public void setAccentColor(int i) {
        this.mAccentColor = Integer.valueOf(Color.argb(255, Color.red(i), Color.green(i), Color.blue(i)));
    }

    public void setCancelColor(int i) {
        this.mCancelColor = Integer.valueOf(Color.argb(255, Color.red(i), Color.green(i), Color.blue(i)));
    }

    public void setCancelText(int i) {
        this.mCancelString = null;
        this.mCancelResid = i;
    }

    public void setDisabledTimes(Timepoint[] timepointArr) {
        this.mDefaultLimiter.setDisabledTimes(timepointArr);
    }

    public void setInitialSelection(Timepoint timepoint) {
        this.mInitialTime = roundToNearest(timepoint);
        this.mInKbMode = false;
    }

    public void setLocale(Locale locale) {
        this.mLocale = locale;
    }

    public void setMaxTime(int i, int i2, int i3) {
        setMaxTime(new Timepoint(i, i2, i3));
    }

    public void setMinTime(int i, int i2, int i3) {
        setMinTime(new Timepoint(i, i2, i3));
    }

    public void setOkColor(int i) {
        this.mOkColor = Integer.valueOf(Color.argb(255, Color.red(i), Color.green(i), Color.blue(i)));
    }

    public void setOkText(int i) {
        this.mOkString = null;
        this.mOkResid = i;
    }

    public void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        this.mOnCancelListener = onCancelListener;
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    public void setOnTimeSetListener(OnTimeSetListener onTimeSetListener) {
        this.mCallback = onTimeSetListener;
    }

    public void setSelectableTimes(Timepoint[] timepointArr) {
        this.mDefaultLimiter.setSelectableTimes(timepointArr);
    }

    @Deprecated
    public void setStartTime(int i, int i2, int i3) {
        this.mInitialTime = roundToNearest(new Timepoint(i, i2, i3));
        this.mInKbMode = false;
    }

    public void setThemeDark(boolean z) {
        this.mThemeDark = z;
        this.mThemeDarkChanged = true;
    }

    public void setTimeInterval(int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (i4 < 24) {
            int i5 = 0;
            while (i5 < 60) {
                int i6 = 0;
                while (i6 < 60) {
                    arrayList.add(new Timepoint(i4, i5, i6));
                    i6 += i3;
                }
                i5 += i2;
            }
            i4 += i;
        }
        setSelectableTimes((Timepoint[]) arrayList.toArray(new Timepoint[arrayList.size()]));
    }

    public void setTimepointLimiter(TimepointLimiter timepointLimiter) {
        this.mLimiter = timepointLimiter;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public void setVersion(Version version) {
        this.mVersion = version;
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimePickerController
    public void tryVibrate() {
        if (this.mVibrate) {
            this.mHapticFeedbackController.tryVibrate();
        }
    }

    public void vibrate(boolean z) {
        this.mVibrate = z;
    }

    public void setCancelText(String str) {
        this.mCancelString = str;
    }

    public void setOkText(String str) {
        this.mOkString = str;
    }

    public void setMaxTime(Timepoint timepoint) {
        this.mDefaultLimiter.setMaxTime(timepoint);
    }

    public void setMinTime(Timepoint timepoint) {
        this.mDefaultLimiter.setMinTime(timepoint);
    }

    public void setInitialSelection(int i, int i2) {
        setInitialSelection(i, i2, 0);
    }

    private Timepoint roundToNearest(Timepoint timepoint) {
        return roundToNearest(timepoint, null);
    }

    public boolean isOutOfRange(Timepoint timepoint) {
        return isOutOfRange(timepoint, 2);
    }

    public void setInitialSelection(int i, int i2, int i3) {
        setInitialSelection(new Timepoint(i, i2, i3));
    }

    @Deprecated
    public void setStartTime(int i, int i2) {
        setStartTime(i, i2, 0);
    }

    public static TimePickerDialog newInstance(OnTimeSetListener onTimeSetListener, int i, int i2, boolean z) {
        return newInstance(onTimeSetListener, i, i2, 0, z);
    }

    public static TimePickerDialog newInstance(OnTimeSetListener onTimeSetListener, int i, int i2, int i3, boolean z) {
        TimePickerDialog timePickerDialog = new TimePickerDialog();
        timePickerDialog.initialize(onTimeSetListener, i, i2, i3, z);
        return timePickerDialog;
    }

    public void setAccentColor(String str) {
        this.mAccentColor = Integer.valueOf(Color.parseColor(str));
    }

    public void setCancelColor(String str) {
        this.mCancelColor = Integer.valueOf(Color.parseColor(str));
    }

    public void setOkColor(String str) {
        this.mOkColor = Integer.valueOf(Color.parseColor(str));
    }

    public void setTimeInterval(int i, int i2) {
        setTimeInterval(i, i2, 60);
    }

    public void setTimeInterval(int i) {
        setTimeInterval(i, 60);
    }
}
