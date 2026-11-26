package yads;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import defpackage.kx6;
import java.util.ArrayList;
import java.util.Random;

/* JADX INFO: loaded from: classes6.dex */
public final class dx3 extends px4 {
    public final bx3 b;
    public final zo1 c;
    public final ArrayList d = new ArrayList();
    public final Paint e;
    public float f;
    public float g;
    public boolean h;
    public long i;

    public dx3(bx3 bx3Var, zo1 zo1Var) {
        this.b = bx3Var;
        this.c = zo1Var;
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        this.e = paint;
        this.f = -1.0f;
        this.g = -1.0f;
    }

    @Override // yads.px4
    public final int a(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        return (int) paint.measureText(charSequence, i, i2);
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        Resources resources;
        DisplayMetrics displayMetrics;
        float fMeasureText = paint.measureText(charSequence, i, i2);
        float f2 = i5 - i3;
        bx3 bx3Var = this.b;
        if (bx3Var instanceof ax3) {
            this.e.setColor(((ax3) bx3Var).a);
            canvas.drawRect(f, i3, f + fMeasureText, i5, this.e);
            this.h = false;
            return;
        }
        if (bx3Var instanceof zw3) {
            if (fMeasureText != this.f || f2 != this.g || this.d.isEmpty()) {
                zw3 zw3Var = (zw3) bx3Var;
                this.f = fMeasureText;
                this.g = f2;
                this.d.clear();
                this.i = ((((long) i2) * 19349663) ^ (((long) i) * 73856093)) ^ ((long) defpackage.w65.b(zw3Var.b * 1000.0f));
                Random random = new Random(this.i);
                float fMax = Math.max(1.0f, zw3Var.e);
                float f3 = 3.1415927f;
                float fPow = ((float) Math.pow(fMax, 2.0d)) * 3.1415927f * ((((float) Math.pow(1.5d, 3.0d)) - ((float) Math.pow(0.699999988079071d, 3.0d))) / 2.4f);
                float f4 = 0.0f;
                float f5 = fPow > 0.0f ? (fMeasureText * f2) / fPow : 0.0f;
                float f6 = zw3Var.b;
                if (f6 >= 1.0f) {
                    f4 = 0.99f;
                } else if (f6 > 0.0f) {
                    f4 = f6;
                }
                int iF = kx6.f(defpackage.w65.b(f5 * f4), 1, 800);
                zo1 zo1Var = this.c;
                float f7 = (zo1Var == null || (resources = zo1Var.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null) ? 1.0f : displayMetrics.density;
                float f8 = 2.0f * f7;
                float f9 = (f7 * 9.0f) - f8;
                int i6 = 0;
                while (i6 < iF) {
                    float fNextFloat = ((random.nextFloat() * 0.8f) + 0.7f) * fMax;
                    float fNextFloat2 = ((float) (((double) random.nextFloat()) * 6.283185307179586d)) - f3;
                    float fNextFloat3 = (random.nextFloat() * f9) + f8;
                    double d = fNextFloat2;
                    float fCos = ((float) Math.cos(d)) * fNextFloat3;
                    float fSin = ((float) Math.sin(d)) * fNextFloat3;
                    float fNextFloat4 = (random.nextFloat() - 0.5f) * 0.5f;
                    float fNextFloat5 = (random.nextFloat() * 6000.0f) + 6000.0f;
                    this.d.add(new cx3(random.nextFloat() * fMeasureText, random.nextFloat() * f2, fNextFloat, fCos, fSin, fNextFloat4, fNextFloat5, random.nextFloat() * fNextFloat5 * 0.5f));
                    i6++;
                    f3 = 3.1415927f;
                }
            }
            zw3 zw3Var2 = (zw3) bx3Var;
            this.e.setColor(zw3Var2.a);
            for (cx3 cx3Var : this.d) {
                float f10 = cx3Var.a;
                float f11 = cx3Var.c;
                float fD = kx6.d(f10, f11, fMeasureText - f11);
                float f12 = cx3Var.b;
                float f13 = cx3Var.c;
                canvas.drawCircle(f + fD, i3 + kx6.d(f12, f13, f2 - f13), cx3Var.c, this.e);
            }
            if (zw3Var2.c) {
                this.h = true;
                zo1 zo1Var2 = this.c;
                if (zo1Var2 != null) {
                    kt4 kt4Var = zo1Var2.u;
                    if (kt4Var == null) {
                        kt4Var = new kt4(zo1Var2);
                        zo1Var2.u = kt4Var;
                    }
                    kt4Var.d.add(this);
                    kt4Var.a();
                    return;
                }
                return;
            }
            this.h = false;
            zo1 zo1Var3 = this.c;
            if (zo1Var3 != null) {
                kt4 kt4Var2 = zo1Var3.u;
                if (kt4Var2 == null) {
                    kt4Var2 = new kt4(zo1Var3);
                    zo1Var3.u = kt4Var2;
                }
                kt4Var2.d.remove(this);
                if (kt4Var2.d.isEmpty()) {
                    kt4Var2.b();
                }
            }
        }
    }
}
