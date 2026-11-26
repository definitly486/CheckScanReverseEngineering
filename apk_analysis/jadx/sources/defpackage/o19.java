package defpackage;

import android.graphics.Matrix;
import android.graphics.PointF;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public final class o19 {
    public final Matrix b;
    public final Matrix c;
    public final Matrix d;
    public final float[] e;
    public ld0<PointF, PointF> l;
    public ld0<?, PointF> m;
    public ld0<od7, od7> n;
    public ld0<Float, Float> o;
    public ld0<Integer, Integer> p;
    public tc3 q;
    public tc3 r;
    public tc3 s;
    public tc3 t;
    public tc3 u;
    public ld0<?, Float> v;
    public ld0<?, Float> w;
    public final boolean x;
    public final Matrix a = new Matrix();
    public float f = Float.NaN;
    public float g = Float.NaN;
    public float h = Float.NaN;
    public float i = 1.0f;
    public float j = 1.0f;
    public boolean k = true;

    public o19(ql qlVar) {
        eeb eebVar = qlVar.a;
        this.l = eebVar == null ? null : eebVar.a();
        sl<PointF, PointF> slVar = qlVar.b;
        this.m = slVar == null ? null : slVar.a();
        il ilVar = qlVar.c;
        this.n = ilVar == null ? null : ilVar.a();
        dl dlVar = qlVar.d;
        this.o = dlVar == null ? null : dlVar.a();
        dl dlVar2 = qlVar.f;
        this.q = dlVar2 == null ? null : dlVar2.a();
        this.x = qlVar.m;
        dl dlVar3 = qlVar.h;
        this.s = dlVar3 == null ? null : dlVar3.a();
        dl dlVar4 = qlVar.i;
        this.t = dlVar4 == null ? null : dlVar4.a();
        dl dlVar5 = qlVar.j;
        this.u = dlVar5 == null ? null : dlVar5.a();
        if (this.q != null) {
            this.b = new Matrix();
            this.c = new Matrix();
            this.d = new Matrix();
            this.e = new float[9];
        } else {
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
        }
        dl dlVar6 = qlVar.g;
        this.r = dlVar6 == null ? null : dlVar6.a();
        fl flVar = qlVar.e;
        if (flVar != null) {
            this.p = flVar.a();
        }
        dl dlVar7 = qlVar.k;
        if (dlVar7 != null) {
            this.v = dlVar7.a();
        } else {
            this.v = null;
        }
        dl dlVar8 = qlVar.l;
        if (dlVar8 != null) {
            this.w = dlVar8.a();
        } else {
            this.w = null;
        }
    }

    public final void a(nd0 nd0Var) {
        nd0Var.c(this.p);
        nd0Var.c(this.v);
        nd0Var.c(this.w);
        nd0Var.c(this.l);
        nd0Var.c(this.m);
        nd0Var.c(this.n);
        nd0Var.c(this.o);
        nd0Var.c(this.q);
        nd0Var.c(this.r);
        nd0Var.c(this.s);
        nd0Var.c(this.t);
        nd0Var.c(this.u);
    }

    public final void b(ld0.a aVar) {
        ld0<Integer, Integer> ld0Var = this.p;
        if (ld0Var != null) {
            ld0Var.a(aVar);
        }
        ld0<?, Float> ld0Var2 = this.v;
        if (ld0Var2 != null) {
            ld0Var2.a(aVar);
        }
        ld0<?, Float> ld0Var3 = this.w;
        if (ld0Var3 != null) {
            ld0Var3.a(aVar);
        }
        ld0<PointF, PointF> ld0Var4 = this.l;
        if (ld0Var4 != null) {
            ld0Var4.a(aVar);
        }
        ld0<?, PointF> ld0Var5 = this.m;
        if (ld0Var5 != null) {
            ld0Var5.a(aVar);
        }
        ld0<od7, od7> ld0Var6 = this.n;
        if (ld0Var6 != null) {
            ld0Var6.a(aVar);
        }
        ld0<Float, Float> ld0Var7 = this.o;
        if (ld0Var7 != null) {
            ld0Var7.a(aVar);
        }
        tc3 tc3Var = this.q;
        if (tc3Var != null) {
            tc3Var.a(aVar);
        }
        tc3 tc3Var2 = this.r;
        if (tc3Var2 != null) {
            tc3Var2.a(aVar);
        }
        tc3 tc3Var3 = this.s;
        if (tc3Var3 != null) {
            tc3Var3.a(aVar);
            this.s.a(new ld0.a() { // from class: l19
                @Override // ld0.a
                public final void e() {
                    this.a.k = true;
                }
            });
        }
        tc3 tc3Var4 = this.t;
        if (tc3Var4 != null) {
            tc3Var4.a(aVar);
            this.t.a(new ld0.a() { // from class: m19
                @Override // ld0.a
                public final void e() {
                    this.a.k = true;
                }
            });
        }
        tc3 tc3Var5 = this.u;
        if (tc3Var5 != null) {
            tc3Var5.a(aVar);
            this.u.a(new ld0.a() { // from class: n19
                @Override // ld0.a
                public final void e() {
                    this.a.k = true;
                }
            });
        }
    }

    public final boolean c(by4 by4Var, Object obj) {
        Float fValueOf = Float.valueOf(100.0f);
        Float fValueOf2 = Float.valueOf(0.0f);
        if (obj == vx4.a) {
            ld0<PointF, PointF> ld0Var = this.l;
            if (ld0Var == null) {
                this.l = new ac9(by4Var, new PointF());
                return true;
            }
            ld0Var.k(by4Var);
            return true;
        }
        if (obj == vx4.b) {
            ld0<?, PointF> ld0Var2 = this.m;
            if (ld0Var2 == null) {
                this.m = new ac9(by4Var, new PointF());
                return true;
            }
            ld0Var2.k(by4Var);
            return true;
        }
        if (obj == vx4.c) {
            ld0<?, PointF> ld0Var3 = this.m;
            if (ld0Var3 instanceof h68) {
                ((h68) ld0Var3).m = by4Var;
                return true;
            }
        }
        if (obj == vx4.d) {
            ld0<?, PointF> ld0Var4 = this.m;
            if (ld0Var4 instanceof h68) {
                ((h68) ld0Var4).n = by4Var;
                return true;
            }
        }
        if (obj == vx4.j) {
            ld0<od7, od7> ld0Var5 = this.n;
            if (ld0Var5 == null) {
                this.n = new ac9(by4Var, new od7());
                return true;
            }
            ld0Var5.k(by4Var);
            return true;
        }
        if (obj == vx4.k) {
            ld0<Float, Float> ld0Var6 = this.o;
            if (ld0Var6 == null) {
                this.o = new ac9(by4Var, fValueOf2);
                return true;
            }
            ld0Var6.k(by4Var);
            return true;
        }
        if (obj == 3) {
            ld0<Integer, Integer> ld0Var7 = this.p;
            if (ld0Var7 == null) {
                this.p = new ac9(by4Var, 100);
                return true;
            }
            ld0Var7.k(by4Var);
            return true;
        }
        if (obj == vx4.A) {
            ld0<?, Float> ld0Var8 = this.v;
            if (ld0Var8 == null) {
                this.v = new ac9(by4Var, fValueOf);
                return true;
            }
            ld0Var8.k(by4Var);
            return true;
        }
        if (obj == vx4.B) {
            ld0<?, Float> ld0Var9 = this.w;
            if (ld0Var9 == null) {
                this.w = new ac9(by4Var, fValueOf);
                return true;
            }
            ld0Var9.k(by4Var);
            return true;
        }
        if (obj == vx4.o) {
            tc3 tc3Var = this.q;
            if (tc3Var == null) {
                tc3Var = new tc3(Collections.singletonList(new vf4(fValueOf2)));
                this.q = tc3Var;
            }
            tc3Var.k(by4Var);
            return true;
        }
        if (obj == vx4.p) {
            tc3 tc3Var2 = this.r;
            if (tc3Var2 == null) {
                tc3Var2 = new tc3(Collections.singletonList(new vf4(fValueOf2)));
                this.r = tc3Var2;
            }
            tc3Var2.k(by4Var);
            return true;
        }
        if (obj == vx4.l) {
            tc3 tc3Var3 = this.s;
            if (tc3Var3 == null) {
                tc3Var3 = new tc3(Collections.singletonList(new vf4(fValueOf2)));
                this.s = tc3Var3;
            }
            tc3Var3.k(by4Var);
            return true;
        }
        if (obj == vx4.m) {
            tc3 tc3Var4 = this.t;
            if (tc3Var4 == null) {
                tc3Var4 = new tc3(Collections.singletonList(new vf4(fValueOf2)));
                this.t = tc3Var4;
            }
            tc3Var4.k(by4Var);
            return true;
        }
        if (obj != vx4.n) {
            return false;
        }
        tc3 tc3Var5 = this.u;
        if (tc3Var5 == null) {
            tc3Var5 = new tc3(Collections.singletonList(new vf4(fValueOf2)));
            this.u = tc3Var5;
        }
        tc3Var5.k(by4Var);
        return true;
    }

    public final void d() {
        for (int i = 0; i < 9; i++) {
            this.e[i] = 0.0f;
        }
    }

    public final Matrix e() {
        tc3 tc3Var;
        tc3 tc3Var2;
        PointF pointFF;
        od7 od7VarF;
        PointF pointFF2;
        Matrix matrix = this.a;
        matrix.reset();
        tc3 tc3Var3 = this.s;
        if ((tc3Var3 == null || tc3Var3.m() == 0.0f) && (((tc3Var = this.t) == null || tc3Var.m() == 0.0f) && ((tc3Var2 = this.u) == null || tc3Var2.m() == 0.0f))) {
            ld0<?, PointF> ld0Var = this.m;
            if (ld0Var != null && (pointFF2 = ld0Var.f()) != null) {
                float f = pointFF2.x;
                if (f != 0.0f || pointFF2.y != 0.0f) {
                    matrix.preTranslate(f, pointFF2.y);
                }
            }
            if (!this.x) {
                ld0<Float, Float> ld0Var2 = this.o;
                if (ld0Var2 != null) {
                    float fFloatValue = ld0Var2 instanceof ac9 ? ld0Var2.f().floatValue() : ((tc3) ld0Var2).m();
                    if (fFloatValue != 0.0f) {
                        matrix.preRotate(fFloatValue);
                    }
                }
            } else if (ld0Var != null) {
                float f2 = ld0Var.d;
                PointF pointFF3 = ld0Var.f();
                float f3 = pointFF3.x;
                float f4 = pointFF3.y;
                ld0Var.j(1.0E-4f + f2);
                PointF pointFF4 = ld0Var.f();
                ld0Var.j(f2);
                matrix.preRotate((float) Math.toDegrees(Math.atan2(pointFF4.y - f4, pointFF4.x - f3)));
            }
            tc3 tc3Var4 = this.q;
            if (tc3Var4 != null) {
                tc3 tc3Var5 = this.r;
                float fCos = tc3Var5 == null ? 0.0f : (float) Math.cos(Math.toRadians((-tc3Var5.m()) + 90.0f));
                tc3 tc3Var6 = this.r;
                float fSin = tc3Var6 == null ? 1.0f : (float) Math.sin(Math.toRadians((-tc3Var6.m()) + 90.0f));
                float fTan = (float) Math.tan(Math.toRadians(tc3Var4.m()));
                d();
                float[] fArr = this.e;
                fArr[0] = fCos;
                fArr[1] = fSin;
                float f5 = -fSin;
                fArr[3] = f5;
                fArr[4] = fCos;
                fArr[8] = 1.0f;
                Matrix matrix2 = this.b;
                matrix2.setValues(fArr);
                d();
                fArr[0] = 1.0f;
                fArr[3] = fTan;
                fArr[4] = 1.0f;
                fArr[8] = 1.0f;
                Matrix matrix3 = this.c;
                matrix3.setValues(fArr);
                d();
                fArr[0] = fCos;
                fArr[1] = f5;
                fArr[3] = fSin;
                fArr[4] = fCos;
                fArr[8] = 1.0f;
                Matrix matrix4 = this.d;
                matrix4.setValues(fArr);
                matrix3.preConcat(matrix2);
                matrix4.preConcat(matrix3);
                matrix.preConcat(matrix4);
            }
            ld0<od7, od7> ld0Var3 = this.n;
            if (ld0Var3 != null && (od7VarF = ld0Var3.f()) != null) {
                float f6 = od7VarF.a;
                if (f6 != 1.0f || od7VarF.b != 1.0f) {
                    matrix.preScale(f6, od7VarF.b);
                }
            }
            ld0<PointF, PointF> ld0Var4 = this.l;
            if (ld0Var4 != null && (pointFF = ld0Var4.f()) != null) {
                float f7 = pointFF.x;
                if (f7 != 0.0f || pointFF.y != 0.0f) {
                    matrix.preTranslate(-f7, -pointFF.y);
                }
            }
        } else {
            tc3 tc3Var7 = this.s;
            float fM = tc3Var7 != null ? tc3Var7.m() : 0.0f;
            tc3 tc3Var8 = this.t;
            float fM2 = tc3Var8 != null ? tc3Var8.m() : 0.0f;
            tc3 tc3Var9 = this.u;
            float fM3 = tc3Var9 != null ? tc3Var9.m() : 0.0f;
            if (this.k || fM != this.f || fM2 != this.g || fM3 != this.h) {
                this.f = fM;
                this.g = fM2;
                this.h = fM3;
                if (fM != 0.0f) {
                    this.i = (float) Math.cos(Math.toRadians(fM));
                } else {
                    this.i = 1.0f;
                }
                if (fM2 != 0.0f) {
                    this.j = (float) Math.cos(Math.toRadians(fM2));
                } else {
                    this.j = 1.0f;
                }
                this.k = false;
            }
            ld0<PointF, PointF> ld0Var5 = this.l;
            PointF pointFF5 = ld0Var5 == null ? null : ld0Var5.f();
            ld0<?, PointF> ld0Var6 = this.m;
            PointF pointFF6 = ld0Var6 == null ? null : ld0Var6.f();
            ld0<od7, od7> ld0Var7 = this.n;
            od7 od7VarF2 = ld0Var7 != null ? ld0Var7.f() : null;
            float f8 = od7VarF2 != null ? od7VarF2.a : 1.0f;
            float f9 = od7VarF2 != null ? od7VarF2.b : 1.0f;
            float f10 = this.i;
            float f11 = this.j;
            matrix.reset();
            if (pointFF6 != null) {
                float f12 = pointFF6.x;
                if (f12 != 0.0f || pointFF6.y != 0.0f) {
                    matrix.preTranslate(f12, pointFF6.y);
                }
            }
            if (fM3 != 0.0f) {
                matrix.preRotate(fM3);
            }
            if (fM2 != 0.0f) {
                matrix.preScale(f11, 1.0f);
            }
            if (fM != 0.0f) {
                matrix.preScale(1.0f, f10);
            }
            if (f8 != 1.0f || f9 != 1.0f) {
                matrix.preScale(f8, f9);
            }
            if (pointFF5 != null) {
                float f13 = pointFF5.x;
                if (f13 != 0.0f || pointFF5.y != 0.0f) {
                    matrix.preTranslate(-f13, -pointFF5.y);
                    return matrix;
                }
            }
        }
        return matrix;
    }

    public final Matrix f(float f) {
        ld0<?, PointF> ld0Var = this.m;
        PointF pointFF = ld0Var == null ? null : ld0Var.f();
        ld0<od7, od7> ld0Var2 = this.n;
        od7 od7VarF = ld0Var2 == null ? null : ld0Var2.f();
        ld0<PointF, PointF> ld0Var3 = this.l;
        PointF pointFF2 = ld0Var3 != null ? ld0Var3.f() : null;
        Matrix matrix = this.a;
        matrix.reset();
        if (pointFF != null) {
            matrix.preTranslate(pointFF.x * f, pointFF.y * f);
        }
        tc3 tc3Var = this.s;
        float fM = tc3Var != null ? tc3Var.m() * f : 0.0f;
        tc3 tc3Var2 = this.t;
        float fM2 = tc3Var2 != null ? tc3Var2.m() * f : 0.0f;
        tc3 tc3Var3 = this.u;
        float fM3 = tc3Var3 != null ? tc3Var3.m() * f : 0.0f;
        if (fM == 0.0f && fM2 == 0.0f && fM3 == 0.0f) {
            ld0<Float, Float> ld0Var4 = this.o;
            if (ld0Var4 != null) {
                matrix.preRotate(ld0Var4.f().floatValue() * f, pointFF2 == null ? 0.0f : pointFF2.x, pointFF2 != null ? pointFF2.y : 0.0f);
            }
        } else {
            float fCos = fM != 0.0f ? (float) Math.cos(Math.toRadians(fM)) : 1.0f;
            float fCos2 = fM2 != 0.0f ? (float) Math.cos(Math.toRadians(fM2)) : 1.0f;
            if (fM3 != 0.0f) {
                matrix.preRotate(fM3, pointFF2 == null ? 0.0f : pointFF2.x, pointFF2 != null ? pointFF2.y : 0.0f);
            }
            if (fM2 != 0.0f) {
                matrix.preScale(fCos2, 1.0f);
            }
            if (fM != 0.0f) {
                matrix.preScale(1.0f, fCos);
            }
        }
        if (od7VarF != null) {
            double d = f;
            matrix.preScale((float) Math.pow(od7VarF.a, d), (float) Math.pow(od7VarF.b, d));
        }
        return matrix;
    }
}
