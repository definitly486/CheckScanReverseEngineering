package yads;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;

/* JADX INFO: loaded from: classes6.dex */
public class st5 extends AppCompatEditText implements ox2 {
    public boolean a;
    public boolean b;
    public boolean c;
    public final nx2 d;
    public int e;

    public st5(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = true;
        this.d = new nx2(this);
    }

    @Override // android.widget.TextView
    public final int getCompoundPaddingBottom() {
        return super.getCompoundPaddingBottom() + this.d.c;
    }

    @Override // android.widget.TextView
    public final int getCompoundPaddingTop() {
        return super.getCompoundPaddingTop() + this.d.b;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int maxLines;
        super.onMeasure(i, i2);
        nx2 nx2Var = this.d;
        if (getLineCount() == 0) {
            maxLines = 1;
        } else {
            maxLines = getLineCount() > getMaxLines() ? getMaxLines() : getLineCount();
        }
        if (nx2Var.d == -1 || nh6.a(i2)) {
            return;
        }
        int paddingBottom = nx2Var.a.getPaddingBottom() + nx2Var.a.getPaddingTop() + ow5.a(nx2Var.a, maxLines) + (maxLines >= nx2Var.a.getLineCount() ? nx2Var.b + nx2Var.c : 0);
        int minimumHeight = nx2Var.a.getMinimumHeight();
        if (paddingBottom < minimumHeight) {
            paddingBottom = minimumHeight;
        }
        super.setMeasuredDimension(getMeasuredWidthAndState(), View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE ? View.MeasureSpec.makeMeasureSpec(Math.min(paddingBottom, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE) : View.MeasureSpec.makeMeasureSpec(paddingBottom, 1073741824));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (getLayout() == null || i2 == 0) {
            return;
        }
        this.b = (i2 - getCompoundPaddingTop()) - getCompoundPaddingBottom() >= ow5.a(this, getLayout().getLineCount());
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int maxLines;
        int maxLines2;
        int maxLines3;
        super.onTextChanged(charSequence, i, i2, i3);
        if (Build.VERSION.SDK_INT < 28) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams == null || layoutParams.height != -3) {
                if (getLineCount() == 0) {
                    maxLines = 1;
                } else {
                    maxLines = getLineCount() > getMaxLines() ? getMaxLines() : getLineCount();
                }
                this.e = maxLines;
            } else {
                int i4 = this.e;
                if (getLineCount() == 0) {
                    maxLines2 = 1;
                } else {
                    maxLines2 = getLineCount() > getMaxLines() ? getMaxLines() : getLineCount();
                }
                if (i4 != maxLines2) {
                    if (getLineCount() == 0) {
                        maxLines3 = 1;
                    } else {
                        maxLines3 = getLineCount() > getMaxLines() ? getMaxLines() : getLineCount();
                    }
                    this.e = maxLines3;
                    requestLayout();
                }
            }
        }
        int height = getHeight();
        if (getLayout() == null || height == 0) {
            return;
        }
        this.b = (height - getCompoundPaddingTop()) - getCompoundPaddingBottom() >= ow5.a(this, getLayout().getLineCount());
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.a || this.b) {
            if (this.c) {
                this.c = false;
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.c = true;
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 1 || action == 3) {
            this.c = false;
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // yads.ox2
    public void setFixedLineHeight(int i) {
        nx2 nx2Var = this.d;
        if (nx2Var.d == i) {
            return;
        }
        nx2Var.d = i;
        nx2Var.a(i);
    }

    @Override // android.widget.TextView
    public void setHorizontallyScrolling(boolean z) {
        this.a = z;
        super.setHorizontallyScrolling(z);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        nx2 nx2Var = this.d;
        nx2Var.a(nx2Var.d);
    }

    public st5(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ st5(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public st5(Context context) {
        this(context, null, 6, 0);
    }
}
