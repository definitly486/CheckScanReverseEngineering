package com.wdullaer.materialdatetimepicker.time;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.Log;
import android.view.View;
import com.wdullaer.materialdatetimepicker.R;
import defpackage.i8;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class RadialSelectorView extends View {
    private static final int FULL_ALPHA = 255;
    private static final int SELECTED_ALPHA = 255;
    private static final int SELECTED_ALPHA_THEME_DARK = 255;
    private static final String TAG = "RadialSelectorView";
    private float mAmPmCircleRadiusMultiplier;
    private float mAnimationRadiusMultiplier;
    private int mCircleRadius;
    private float mCircleRadiusMultiplier;
    private boolean mDrawValuesReady;
    private boolean mForceDrawDot;
    private boolean mHasInnerCircle;
    private float mInnerNumbersRadiusMultiplier;
    private InvalidateUpdateListener mInvalidateUpdateListener;
    private boolean mIs24HourMode;
    private boolean mIsInitialized;
    private int mLineLength;
    private float mNumbersRadiusMultiplier;
    private float mOuterNumbersRadiusMultiplier;
    private final Paint mPaint;
    private int mSelectionAlpha;
    private int mSelectionDegrees;
    private double mSelectionRadians;
    private int mSelectionRadius;
    private float mSelectionRadiusMultiplier;
    private float mTransitionEndRadiusMultiplier;
    private float mTransitionMidRadiusMultiplier;
    private int mXCenter;
    private int mYCenter;

    public static class InvalidateUpdateListener implements ValueAnimator.AnimatorUpdateListener {
        private final WeakReference<RadialSelectorView> selectorRef;

        public InvalidateUpdateListener(RadialSelectorView radialSelectorView) {
            this.selectorRef = new WeakReference<>(radialSelectorView);
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            RadialSelectorView radialSelectorView = this.selectorRef.get();
            if (radialSelectorView != null) {
                radialSelectorView.invalidate();
            }
        }
    }

    public RadialSelectorView(Context context) {
        super(context);
        this.mPaint = new Paint();
        this.mIsInitialized = false;
    }

    public int getDegreesFromCoords(float f, float f2, boolean z, Boolean[] boolArr) {
        if (!this.mDrawValuesReady) {
            return -1;
        }
        int i = this.mYCenter;
        int i2 = this.mXCenter;
        double dSqrt = Math.sqrt(i8.b(f, i2, f - i2, (f2 - i) * (f2 - i)));
        if (this.mHasInnerCircle) {
            int i3 = this.mCircleRadius;
            if (z) {
                boolArr[0] = Boolean.valueOf(((int) Math.abs(dSqrt - ((double) ((int) (((float) i3) * this.mInnerNumbersRadiusMultiplier))))) <= ((int) Math.abs(dSqrt - ((double) ((int) (((float) this.mCircleRadius) * this.mOuterNumbersRadiusMultiplier))))));
            } else {
                float f3 = this.mInnerNumbersRadiusMultiplier;
                int i4 = this.mSelectionRadius;
                int i5 = ((int) (i3 * f3)) - i4;
                float f4 = this.mOuterNumbersRadiusMultiplier;
                int i6 = ((int) (i3 * f4)) + i4;
                int i7 = (int) (((f4 + f3) / 2.0f) * i3);
                if (dSqrt >= i5 && dSqrt <= i7) {
                    boolArr[0] = Boolean.TRUE;
                } else {
                    if (dSqrt > i6 || dSqrt < i7) {
                        return -1;
                    }
                    boolArr[0] = Boolean.FALSE;
                }
            }
        } else if (!z) {
            if (((int) Math.abs(dSqrt - ((double) this.mLineLength))) > ((int) ((1.0f - this.mNumbersRadiusMultiplier) * this.mCircleRadius))) {
                return -1;
            }
        }
        int iAsin = (int) ((Math.asin(((double) Math.abs(f2 - this.mYCenter)) / dSqrt) * 180.0d) / 3.141592653589793d);
        boolean z2 = f > ((float) this.mXCenter);
        boolean z3 = f2 < ((float) this.mYCenter);
        if (z2 && z3) {
            return 90 - iAsin;
        }
        if (z2 && !z3) {
            return iAsin + 90;
        }
        if (z2 || z3) {
            return (z2 || !z3) ? iAsin : iAsin + 270;
        }
        return 270 - iAsin;
    }

    public ObjectAnimator getDisappearAnimator() {
        if (!this.mIsInitialized || !this.mDrawValuesReady) {
            Log.e(TAG, "RadialSelectorView was not ready for animation.");
            return null;
        }
        ObjectAnimator duration = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofKeyframe("animationRadiusMultiplier", Keyframe.ofFloat(0.0f, 1.0f), Keyframe.ofFloat(0.2f, this.mTransitionMidRadiusMultiplier), Keyframe.ofFloat(1.0f, this.mTransitionEndRadiusMultiplier)), PropertyValuesHolder.ofKeyframe("alpha", Keyframe.ofFloat(0.0f, 1.0f), Keyframe.ofFloat(1.0f, 0.0f))).setDuration(500L);
        duration.addUpdateListener(this.mInvalidateUpdateListener);
        return duration;
    }

    public ObjectAnimator getReappearAnimator() {
        if (!this.mIsInitialized || !this.mDrawValuesReady) {
            Log.e(TAG, "RadialSelectorView was not ready for animation.");
            return null;
        }
        ObjectAnimator duration = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofKeyframe("animationRadiusMultiplier", Keyframe.ofFloat(0.0f, this.mTransitionEndRadiusMultiplier), Keyframe.ofFloat(0.2f, this.mTransitionEndRadiusMultiplier), Keyframe.ofFloat(0.84f, this.mTransitionMidRadiusMultiplier), Keyframe.ofFloat(1.0f, 1.0f)), PropertyValuesHolder.ofKeyframe("alpha", Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.2f, 0.0f), Keyframe.ofFloat(1.0f, 1.0f))).setDuration(625L);
        duration.addUpdateListener(this.mInvalidateUpdateListener);
        return duration;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void initialize(Context context, TimePickerController timePickerController, boolean z, boolean z2, int i, boolean z3) {
        if (this.mIsInitialized) {
            Log.e(TAG, "This RadialSelectorView may only be initialized once.");
            return;
        }
        Resources resources = context.getResources();
        this.mPaint.setColor(timePickerController.getAccentColor());
        this.mPaint.setAntiAlias(true);
        timePickerController.isThemeDark();
        this.mSelectionAlpha = 255;
        boolean zIs24HourMode = timePickerController.is24HourMode();
        this.mIs24HourMode = zIs24HourMode;
        if (zIs24HourMode || timePickerController.getVersion() != TimePickerDialog.Version.VERSION_1) {
            this.mCircleRadiusMultiplier = Float.parseFloat(resources.getString(R.string.mdtp_circle_radius_multiplier_24HourMode));
        } else {
            this.mCircleRadiusMultiplier = Float.parseFloat(resources.getString(R.string.mdtp_circle_radius_multiplier));
            this.mAmPmCircleRadiusMultiplier = Float.parseFloat(resources.getString(R.string.mdtp_ampm_circle_radius_multiplier));
        }
        this.mHasInnerCircle = z;
        if (z) {
            this.mInnerNumbersRadiusMultiplier = Float.parseFloat(resources.getString(R.string.mdtp_numbers_radius_multiplier_inner));
            this.mOuterNumbersRadiusMultiplier = Float.parseFloat(resources.getString(R.string.mdtp_numbers_radius_multiplier_outer));
        } else {
            this.mNumbersRadiusMultiplier = Float.parseFloat(resources.getString(R.string.mdtp_numbers_radius_multiplier_normal));
        }
        this.mSelectionRadiusMultiplier = Float.parseFloat(resources.getString(R.string.mdtp_selection_radius_multiplier));
        this.mAnimationRadiusMultiplier = 1.0f;
        this.mTransitionMidRadiusMultiplier = ((z2 ? -1 : 1) * 0.05f) + 1.0f;
        this.mTransitionEndRadiusMultiplier = ((z2 ? 1 : -1) * 0.3f) + 1.0f;
        this.mInvalidateUpdateListener = new InvalidateUpdateListener(this);
        setSelection(i, z3, false);
        this.mIsInitialized = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (getWidth() == 0 || !this.mIsInitialized) {
            return;
        }
        if (!this.mDrawValuesReady) {
            this.mXCenter = getWidth() / 2;
            int height = getHeight() / 2;
            this.mYCenter = height;
            int iMin = (int) (Math.min(this.mXCenter, height) * this.mCircleRadiusMultiplier);
            this.mCircleRadius = iMin;
            if (!this.mIs24HourMode) {
                this.mYCenter = (int) (((double) this.mYCenter) - (((double) ((int) (iMin * this.mAmPmCircleRadiusMultiplier))) * 0.75d));
            }
            this.mSelectionRadius = (int) (iMin * this.mSelectionRadiusMultiplier);
            this.mDrawValuesReady = true;
        }
        int i = (int) (this.mCircleRadius * this.mNumbersRadiusMultiplier * this.mAnimationRadiusMultiplier);
        this.mLineLength = i;
        int iSin = this.mXCenter + ((int) (Math.sin(this.mSelectionRadians) * ((double) i)));
        int iCos = this.mYCenter - ((int) (Math.cos(this.mSelectionRadians) * ((double) this.mLineLength)));
        this.mPaint.setAlpha(this.mSelectionAlpha);
        float f = iSin;
        float f2 = iCos;
        canvas.drawCircle(f, f2, this.mSelectionRadius, this.mPaint);
        if ((this.mSelectionDegrees % 30 != 0) || this.mForceDrawDot) {
            this.mPaint.setAlpha(255);
            canvas.drawCircle(f, f2, (this.mSelectionRadius * 2) / 7, this.mPaint);
        } else {
            double d = this.mLineLength - this.mSelectionRadius;
            int iSin2 = ((int) (Math.sin(this.mSelectionRadians) * d)) + this.mXCenter;
            int iCos2 = this.mYCenter - ((int) (Math.cos(this.mSelectionRadians) * d));
            iSin = iSin2;
            iCos = iCos2;
        }
        this.mPaint.setAlpha(255);
        this.mPaint.setStrokeWidth(3.0f);
        canvas.drawLine(this.mXCenter, this.mYCenter, iSin, iCos, this.mPaint);
    }

    public void setAnimationRadiusMultiplier(float f) {
        this.mAnimationRadiusMultiplier = f;
    }

    public void setSelection(int i, boolean z, boolean z2) {
        this.mSelectionDegrees = i;
        this.mSelectionRadians = (((double) i) * 3.141592653589793d) / 180.0d;
        this.mForceDrawDot = z2;
        if (this.mHasInnerCircle) {
            if (z) {
                this.mNumbersRadiusMultiplier = this.mInnerNumbersRadiusMultiplier;
            } else {
                this.mNumbersRadiusMultiplier = this.mOuterNumbersRadiusMultiplier;
            }
        }
    }
}
