package com.wdullaer.materialdatetimepicker.time;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.Log;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.wdullaer.materialdatetimepicker.R;

/* JADX INFO: loaded from: classes5.dex */
public class CircleView extends View {
    private static final String TAG = "CircleView";
    private float mAmPmCircleRadiusMultiplier;
    private int mCircleColor;
    private int mCircleRadius;
    private float mCircleRadiusMultiplier;
    private int mDotColor;
    private boolean mDrawValuesReady;
    private boolean mIs24HourMode;
    private boolean mIsInitialized;
    private final Paint mPaint;
    private int mXCenter;
    private int mYCenter;

    public CircleView(Context context) {
        super(context);
        this.mPaint = new Paint();
        this.mIsInitialized = false;
    }

    public void initialize(Context context, TimePickerController timePickerController) {
        if (this.mIsInitialized) {
            Log.e(TAG, "CircleView may only be initialized once.");
            return;
        }
        Resources resources = context.getResources();
        this.mCircleColor = ContextCompat.getColor(context, timePickerController.isThemeDark() ? R.color.mdtp_circle_background_dark_theme : R.color.mdtp_circle_color);
        this.mDotColor = timePickerController.getAccentColor();
        this.mPaint.setAntiAlias(true);
        boolean zIs24HourMode = timePickerController.is24HourMode();
        this.mIs24HourMode = zIs24HourMode;
        if (zIs24HourMode || timePickerController.getVersion() != TimePickerDialog.Version.VERSION_1) {
            this.mCircleRadiusMultiplier = Float.parseFloat(resources.getString(R.string.mdtp_circle_radius_multiplier_24HourMode));
        } else {
            this.mCircleRadiusMultiplier = Float.parseFloat(resources.getString(R.string.mdtp_circle_radius_multiplier));
            this.mAmPmCircleRadiusMultiplier = Float.parseFloat(resources.getString(R.string.mdtp_ampm_circle_radius_multiplier));
        }
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
            this.mDrawValuesReady = true;
        }
        this.mPaint.setColor(this.mCircleColor);
        canvas.drawCircle(this.mXCenter, this.mYCenter, this.mCircleRadius, this.mPaint);
        this.mPaint.setColor(this.mDotColor);
        canvas.drawCircle(this.mXCenter, this.mYCenter, 8.0f, this.mPaint);
    }
}
