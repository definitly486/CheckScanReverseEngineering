package com.wdullaer.materialdatetimepicker.date;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.wdullaer.materialdatetimepicker.R;

/* JADX INFO: loaded from: classes5.dex */
public class TextViewWithCircularIndicator extends AppCompatTextView {
    private static final int SELECTED_CIRCLE_ALPHA = 255;
    private int mCircleColor;
    Paint mCirclePaint;
    private boolean mDrawCircle;
    private final String mItemIsSelectedText;

    public TextViewWithCircularIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCirclePaint = new Paint();
        this.mCircleColor = ContextCompat.getColor(context, R.color.mdtp_accent_color);
        this.mItemIsSelectedText = context.getResources().getString(R.string.mdtp_item_is_selected);
        init();
    }

    private ColorStateList createTextColor(int i, boolean z) {
        return new ColorStateList(new int[][]{new int[]{android.R.attr.state_pressed}, new int[]{android.R.attr.state_selected}, new int[0]}, new int[]{i, -1, z ? -1 : -16777216});
    }

    private void init() {
        this.mCirclePaint.setFakeBoldText(true);
        this.mCirclePaint.setAntiAlias(true);
        this.mCirclePaint.setColor(this.mCircleColor);
        this.mCirclePaint.setTextAlign(Paint.Align.CENTER);
        this.mCirclePaint.setStyle(Paint.Style.FILL);
        this.mCirclePaint.setAlpha(255);
    }

    public void drawIndicator(boolean z) {
        this.mDrawCircle = z;
    }

    @Override // android.view.View
    public CharSequence getContentDescription() {
        CharSequence text = getText();
        return this.mDrawCircle ? String.format(this.mItemIsSelectedText, text) : text;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mDrawCircle) {
            int width = getWidth();
            int height = getHeight();
            canvas.drawCircle(width / 2, height / 2, Math.min(width, height) / 2, this.mCirclePaint);
        }
        setSelected(this.mDrawCircle);
        super.onDraw(canvas);
    }

    public void setAccentColor(int i, boolean z) {
        this.mCircleColor = i;
        this.mCirclePaint.setColor(i);
        setTextColor(createTextColor(i, z));
    }
}
