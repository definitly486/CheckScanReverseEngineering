package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes6.dex */
public class sj extends AppCompatImageView implements wj {
    public static final /* synthetic */ defpackage.ze4[] f = {mo.a(sj.class, "gravity", "getGravity()I", 0), mo.a(sj.class, "aspectRatio", "getAspectRatio()F", 0), mo.a(sj.class, "imageScale", "getImageScale()Lcom/yandex/div/internal/widget/AspectImageView$Scale;", 0)};
    public final th a;
    public final hp0 b;
    public final hp0 c;
    public final Matrix d;
    public boolean e;

    public sj(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new th();
        this.b = vj.a();
        this.c = nh6.a(qj.NO_SCALE);
        this.d = new Matrix();
        this.e = true;
        super.setScaleType(ImageView.ScaleType.MATRIX);
    }

    public boolean a(int i) {
        return View.MeasureSpec.getMode(i) != 1073741824;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int getBaseline() {
        return getMeasuredHeight() - getPaddingBottom();
    }

    @Override // android.view.View
    public final void invalidate() {
        super.invalidate();
        this.e = true;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        float fMin;
        float fB;
        if ((getImageMatrix() == null || defpackage.aa4.e(getImageMatrix(), this.d)) && this.e && getWidth() > 0 && getHeight() > 0) {
            int width = getWidth();
            int height = getHeight();
            Drawable drawable = getDrawable();
            if (drawable != null) {
                int paddingLeft = (width - getPaddingLeft()) - getPaddingRight();
                if (paddingLeft < 0) {
                    paddingLeft = 0;
                }
                float f2 = paddingLeft;
                int paddingTop = (height - getPaddingTop()) - getPaddingBottom();
                if (paddingTop < 0) {
                    paddingTop = 0;
                }
                float f3 = paddingTop;
                float intrinsicWidth = drawable.getIntrinsicWidth();
                float intrinsicHeight = drawable.getIntrinsicHeight();
                th thVar = this.a;
                defpackage.ze4[] ze4VarArr = f;
                defpackage.ze4 ze4Var = ze4VarArr[0];
                thVar.getClass();
                int absoluteGravity = GravityCompat.getAbsoluteGravity(((Number) thVar.a).intValue(), ViewCompat.getLayoutDirection(this));
                hp0 hp0Var = this.c;
                defpackage.ze4 ze4Var2 = ze4VarArr[2];
                hp0Var.getClass();
                int iOrdinal = ((qj) hp0Var.a).ordinal();
                if (iOrdinal == 0) {
                    fMin = 1.0f;
                } else if (iOrdinal == 1) {
                    fMin = Math.min(f2 / intrinsicWidth, f3 / intrinsicHeight);
                } else if (iOrdinal == 2) {
                    fMin = Math.max(f2 / intrinsicWidth, f3 / intrinsicHeight);
                } else {
                    if (iOrdinal != 3) {
                        defpackage.me0.e();
                        return;
                    }
                    fMin = f2 / intrinsicWidth;
                }
                hp0 hp0Var2 = this.c;
                defpackage.ze4 ze4Var3 = ze4VarArr[2];
                hp0Var2.getClass();
                float f4 = rj.a[((qj) hp0Var2.a).ordinal()] == 4 ? f3 / intrinsicHeight : fMin;
                int i = absoluteGravity & 7;
                float fB2 = 0.0f;
                if (i != 1) {
                    fB = i != 5 ? 0.0f : f2 - (intrinsicWidth * fMin);
                } else {
                    fB = defpackage.rg.b(intrinsicWidth, fMin, f2, 2.0f);
                }
                int i2 = absoluteGravity & 112;
                if (i2 == 16) {
                    fB2 = defpackage.rg.b(intrinsicHeight, f4, f3, 2.0f);
                } else if (i2 == 80) {
                    fB2 = f3 - (intrinsicHeight * f4);
                }
                Matrix matrix = this.d;
                matrix.reset();
                matrix.postScale(fMin, f4);
                matrix.postTranslate(fB, fB2);
                setImageMatrix(this.d);
            }
            this.e = false;
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.e = true;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        hp0 hp0Var = this.b;
        defpackage.ze4 ze4Var = f[1];
        hp0Var.getClass();
        float fFloatValue = ((Number) hp0Var.a).floatValue();
        if (fFloatValue == 0.0f) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        boolean zA = a(i);
        boolean z = View.MeasureSpec.getMode(i2) != 1073741824;
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (!zA && !z) {
            measuredHeight = defpackage.w65.b(measuredWidth / fFloatValue);
        } else if (!zA && z) {
            measuredHeight = defpackage.w65.b(measuredWidth / fFloatValue);
        } else if (zA && !z) {
            measuredWidth = defpackage.w65.b(measuredHeight * fFloatValue);
        } else if (zA && z) {
            measuredHeight = defpackage.w65.b(measuredWidth / fFloatValue);
        }
        setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(measuredWidth, mode), View.MeasureSpec.makeMeasureSpec(measuredHeight, mode2));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.e = true;
    }

    @Override // yads.wj
    public final void setAspectRatio(float f2) {
        this.b.setValue(this, f[1], Float.valueOf(f2));
    }

    public final void setGravity(int i) {
        this.a.setValue(this, f[0], Integer.valueOf(i));
    }

    public final void setImageScale(qj qjVar) {
        this.c.setValue(this, f[2], qjVar);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
    }

    public sj(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ sj(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public sj(Context context) {
        this(context, null, 6, 0);
    }
}
