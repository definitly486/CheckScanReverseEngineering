package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes6.dex */
public class ri5 extends View {
    public final Paint a;
    public final Rect b;
    public boolean c;
    public boolean d;
    public int e;
    public int f;

    public ri5(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint();
        paint.setColor(0);
        this.a = paint;
        this.b = new Rect();
        this.d = true;
        this.f = 17;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (Color.alpha(this.a.getColor()) > 0) {
            if (this.c) {
                int paddingTop = this.d ? getPaddingTop() : getPaddingLeft();
                int paddingBottom = this.d ? getPaddingBottom() : getPaddingRight();
                int height = this.d ? getHeight() : getWidth();
                int i = (height - paddingTop) - paddingBottom;
                int i2 = this.f;
                if (i2 == 17) {
                    paddingTop = defpackage.k.b(i, this.e, 2, paddingTop);
                } else if (i2 != 8388611) {
                    paddingTop = i2 != 8388613 ? 0 : (height - paddingBottom) - this.e;
                }
                boolean z = this.d;
                Rect rect = this.b;
                if (z) {
                    rect.top = paddingTop;
                    rect.bottom = Math.min(i, this.e) + paddingTop;
                    this.b.left = getPaddingLeft();
                    this.b.right = getWidth() - getPaddingRight();
                } else {
                    rect.left = paddingTop;
                    rect.right = Math.min(i, this.e) + paddingTop;
                    this.b.top = getPaddingTop();
                    this.b.bottom = getHeight() - getPaddingBottom();
                }
                this.c = false;
            }
            canvas.drawRect(this.b, this.a);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        boolean z = this.d;
        int i3 = this.e;
        if (z) {
            paddingBottom += i3;
        } else {
            paddingRight += i3;
        }
        int iMax = Math.max(paddingRight, getSuggestedMinimumWidth());
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            iMax = Math.min(iMax, size);
        } else if (mode == 1073741824) {
            iMax = size;
        }
        int iMax2 = Math.max(paddingBottom, getSuggestedMinimumHeight());
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            iMax2 = Math.min(iMax2, size2);
        } else if (mode2 == 1073741824) {
            iMax2 = size2;
        }
        setMeasuredDimension(iMax, iMax2);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.c = true;
    }

    public final void setDividerColor(int i) {
        if (this.a.getColor() != i) {
            this.a.setColor(i);
            invalidate();
        }
    }

    public final void setDividerColorResource(int i) {
        setDividerColor(ContextCompat.getColor(getContext(), i));
    }

    public final void setDividerGravity(int i) {
        if (this.f != i) {
            this.f = i;
            this.c = true;
            invalidate();
        }
    }

    public final void setDividerHeightResource(int i) {
        setDividerThickness(getResources().getDimensionPixelSize(i));
    }

    public final void setDividerThickness(int i) {
        if (this.e != i) {
            this.e = i;
            this.c = true;
            requestLayout();
        }
    }

    public final void setHorizontal(boolean z) {
        if (this.d != z) {
            this.d = z;
            this.c = true;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        this.c = true;
    }

    public ri5(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ ri5(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public ri5(Context context) {
        this(context, null, 6, 0);
    }
}
