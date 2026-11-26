package yads;

import android.graphics.RectF;

/* JADX INFO: loaded from: classes6.dex */
public final class bn5 implements pf3 {
    public final cg3 a;
    public float b;
    public final RectF c = new RectF();
    public float d;
    public float e;
    public final yf3 f;

    public bn5(cg3 cg3Var) {
        yf3 yf3VarA;
        this.a = cg3Var;
        bg3 bg3Var = cg3Var.c;
        if (bg3Var instanceof zf3) {
            yf3VarA = ((zf3) bg3Var).b;
        } else {
            if (!(bg3Var instanceof ag3)) {
                defpackage.me0.e();
                throw null;
            }
            ag3 ag3Var = (ag3) bg3Var;
            xf3 xf3Var = ag3Var.b;
            float f = xf3Var.a;
            float f2 = ag3Var.c;
            yf3VarA = xf3.a(xf3Var, f + f2, xf3Var.b + f2, 4);
        }
        this.f = yf3VarA;
    }

    @Override // yads.pf3
    public final RectF a(float f, float f2, float f3, boolean z) {
        float fB = this.e;
        if (fB == 0.0f) {
            fB = this.a.b.b().b();
        }
        RectF rectF = this.c;
        if (z) {
            float f4 = this.d;
            float f5 = this.b;
            float f6 = f4 * f5;
            if (f6 > f4) {
                f6 = f4;
            }
            float f7 = fB / 2.0f;
            rectF.left = (f - f6) - f7;
            float f8 = f4 * f5;
            if (f8 < 0.0f) {
                f8 = 0.0f;
            }
            rectF.right = (f - f8) + f7;
        } else {
            float f9 = this.d;
            float f10 = this.b;
            float f11 = f9 * f10;
            if (f11 < 0.0f) {
                f11 = 0.0f;
            }
            float f12 = fB / 2.0f;
            rectF.left = (f11 + f) - f12;
            float f13 = f10 * f9;
            if (f13 <= f9) {
                f9 = f13;
            }
            rectF.right = f9 + f + f12;
        }
        rectF.top = f2 - (this.a.b.b().a() / 2.0f);
        this.c.bottom = (this.a.b.b().a() / 2.0f) + f2;
        RectF rectF2 = this.c;
        float f14 = rectF2.left;
        if (f14 < 0.0f) {
            rectF2.offset(-f14, 0.0f);
        }
        RectF rectF3 = this.c;
        float f15 = rectF3.right;
        if (f15 > f3) {
            rectF3.offset(-(f15 - f3), 0.0f);
        }
        return this.c;
    }

    @Override // yads.pf3
    public final int b(int i) {
        return this.a.c.a();
    }

    @Override // yads.pf3
    public final int c(int i) {
        bg3 bg3Var = this.a.c;
        if (bg3Var instanceof ag3) {
            return ((ag3) bg3Var).d;
        }
        return 0;
    }

    @Override // yads.pf3
    public final float e(int i) {
        bg3 bg3Var = this.a.c;
        if (bg3Var instanceof ag3) {
            return ((ag3) bg3Var).c;
        }
        return 0.0f;
    }

    @Override // yads.pf3
    public final void b(float f) {
        this.e = f;
    }

    @Override // yads.pf3
    public final void a(float f) {
        this.d = f;
    }

    @Override // yads.pf3
    public final void a(int i, float f) {
        this.b = f;
    }

    @Override // yads.pf3
    public final yf3 a(int i) {
        return this.f;
    }
}
