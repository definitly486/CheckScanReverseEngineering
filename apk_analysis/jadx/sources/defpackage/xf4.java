package defpackage;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public final class xf4 {
    public static SparseArrayCompat<WeakReference<Interpolator>> b;
    public static final LinearInterpolator a = new LinearInterpolator();
    public static final td4.a c = td4.a.a("t", CmcdData.STREAMING_FORMAT_SS, "e", "o", "i", CmcdData.STREAMING_FORMAT_HLS, "to", "ti");
    public static final td4.a d = td4.a.a("x", "y");

    public static Interpolator a(PointF pointF, PointF pointF2) {
        WeakReference<Interpolator> weakReference;
        Interpolator interpolatorCreate;
        pointF.x = hb5.b(pointF.x, -1.0f, 1.0f);
        pointF.y = hb5.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = hb5.b(pointF2.x, -1.0f, 1.0f);
        float fB = hb5.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fB;
        float f = pointF.x;
        float f2 = pointF.y;
        float f3 = pointF2.x;
        Matrix matrix = ib9.a;
        int i = f != 0.0f ? (int) (527.0f * f) : 17;
        if (f2 != 0.0f) {
            i = (int) (i * 31 * f2);
        }
        if (f3 != 0.0f) {
            i = (int) (i * 31 * f3);
        }
        if (fB != 0.0f) {
            i = (int) (i * 31 * fB);
        }
        dt dtVar = ah4.a;
        synchronized (xf4.class) {
            SparseArrayCompat<WeakReference<Interpolator>> sparseArrayCompat = b;
            if (sparseArrayCompat == null) {
                sparseArrayCompat = new SparseArrayCompat<>();
                b = sparseArrayCompat;
            }
            weakReference = sparseArrayCompat.get(i);
        }
        Interpolator interpolator = weakReference != null ? weakReference.get() : null;
        if (weakReference != null && interpolator != null) {
            return interpolator;
        }
        try {
            interpolatorCreate = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
        } catch (IllegalArgumentException e) {
            interpolatorCreate = "The Path cannot loop back on itself.".equals(e.getMessage()) ? PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
        }
        dt dtVar2 = ah4.a;
        try {
            WeakReference<Interpolator> weakReference2 = new WeakReference<>(interpolatorCreate);
            synchronized (xf4.class) {
                b.put(i, weakReference2);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        return interpolatorCreate;
    }

    /* JADX WARN: Code duplicated, block: B:96:0x0227  */
    public static <T> vf4<T> b(td4 td4Var, nw4 nw4Var, float f, cc9<T> cc9Var, boolean z, boolean z2) {
        T t;
        Interpolator interpolatorA;
        Interpolator interpolatorA2;
        Interpolator interpolatorA3;
        T t2;
        vf4<T> vf4Var;
        td4.a aVar;
        LinearInterpolator linearInterpolator;
        td4.a aVar2;
        PointF pointF;
        float f2;
        td4.a aVar3 = c;
        LinearInterpolator linearInterpolator2 = a;
        if (!z || !z2) {
            td4.a aVar4 = aVar3;
            if (!z) {
                return new vf4<>(cc9Var.e(td4Var, f));
            }
            td4Var.n();
            PointF pointFB = null;
            PointF pointFB2 = null;
            PointF pointFB3 = null;
            PointF pointFB4 = null;
            boolean z3 = false;
            T tE = null;
            float fE = 0.0f;
            T tE2 = null;
            while (td4Var.v()) {
                aVar4 = aVar4;
                switch (td4Var.X(aVar4)) {
                    case 0:
                        fE = (float) td4Var.E();
                        continue;
                    case 1:
                        tE = cc9Var.e(td4Var, f);
                        break;
                    case 2:
                        tE2 = cc9Var.e(td4Var, f);
                        break;
                    case 3:
                        pointFB4 = ie4.b(td4Var, 1.0f);
                        break;
                    case 4:
                        pointFB = ie4.b(td4Var, 1.0f);
                        break;
                    case 5:
                        z3 = td4Var.P() == 1;
                        break;
                    case 6:
                        pointFB2 = ie4.b(td4Var, f);
                        break;
                    case 7:
                        pointFB3 = ie4.b(td4Var, f);
                        break;
                    default:
                        td4Var.e0();
                        break;
                }
            }
            td4Var.p();
            if (!z3) {
                if (pointFB4 == null || pointFB == null) {
                    t = tE2;
                } else {
                    interpolatorA = a(pointFB4, pointFB);
                    t = tE2;
                }
                vf4<T> vf4Var2 = new vf4<>(nw4Var, tE, t, interpolatorA, fE, (Float) null);
                vf4Var2.o = pointFB2;
                vf4Var2.p = pointFB3;
                return vf4Var2;
            }
            t = tE;
            interpolatorA = linearInterpolator2;
            vf4<T> vf4Var3 = new vf4<>(nw4Var, tE, t, interpolatorA, fE, (Float) null);
            vf4Var3.o = pointFB2;
            vf4Var3.p = pointFB3;
            return vf4Var3;
        }
        td4Var.n();
        PointF pointF2 = null;
        PointF pointFB5 = null;
        PointF pointFB6 = null;
        boolean z4 = false;
        PointF pointFB7 = null;
        PointF pointFB8 = null;
        PointF pointF3 = null;
        T tE3 = null;
        PointF pointF4 = null;
        PointF pointF5 = null;
        float fE2 = 0.0f;
        T tE4 = null;
        while (td4Var.v()) {
            int iX = td4Var.X(aVar3);
            td4.a aVar5 = d;
            switch (iX) {
                case 0:
                    aVar = aVar3;
                    linearInterpolator = linearInterpolator2;
                    fE2 = (float) td4Var.E();
                    break;
                case 1:
                    tE3 = cc9Var.e(td4Var, f);
                    continue;
                case 2:
                    tE4 = cc9Var.e(td4Var, f);
                    continue;
                case 3:
                    td4.a aVar6 = aVar3;
                    PointF pointF6 = pointFB5;
                    LinearInterpolator linearInterpolator3 = linearInterpolator2;
                    boolean z5 = z4;
                    T t3 = tE3;
                    if (td4Var.U() == td4.b.BEGIN_OBJECT) {
                        td4Var.n();
                        float fE3 = 0.0f;
                        float fE4 = 0.0f;
                        float fE5 = 0.0f;
                        float fE6 = 0.0f;
                        while (td4Var.v()) {
                            int iX2 = td4Var.X(aVar5);
                            if (iX2 == 0) {
                                td4.b bVarU = td4Var.U();
                                td4.b bVar = td4.b.NUMBER;
                                if (bVarU == bVar) {
                                    fE5 = (float) td4Var.E();
                                    fE3 = fE5;
                                } else {
                                    td4Var.m();
                                    fE3 = (float) td4Var.E();
                                    fE5 = td4Var.U() == bVar ? (float) td4Var.E() : fE3;
                                    td4Var.o();
                                }
                            } else if (iX2 != 1) {
                                td4Var.e0();
                            } else {
                                td4.b bVarU2 = td4Var.U();
                                td4.b bVar2 = td4.b.NUMBER;
                                if (bVarU2 == bVar2) {
                                    fE6 = (float) td4Var.E();
                                    fE4 = fE6;
                                } else {
                                    td4Var.m();
                                    fE4 = (float) td4Var.E();
                                    fE6 = td4Var.U() == bVar2 ? (float) td4Var.E() : fE4;
                                    td4Var.o();
                                }
                            }
                        }
                        pointF3 = new PointF(fE3, fE4);
                        pointF4 = new PointF(fE5, fE6);
                        td4Var.p();
                    } else {
                        pointFB7 = ie4.b(td4Var, f);
                    }
                    z4 = z5;
                    tE3 = t3;
                    linearInterpolator2 = linearInterpolator3;
                    aVar3 = aVar6;
                    pointFB5 = pointF6;
                    continue;
                case 4:
                    linearInterpolator = linearInterpolator2;
                    boolean z6 = z4;
                    if (td4Var.U() == td4.b.BEGIN_OBJECT) {
                        td4Var.n();
                        float f3 = 0.0f;
                        float f4 = 0.0f;
                        float fE7 = 0.0f;
                        float fE8 = 0.0f;
                        while (td4Var.v()) {
                            tE3 = tE3;
                            int iX3 = td4Var.X(aVar5);
                            if (iX3 != 0) {
                                aVar2 = aVar3;
                                if (iX3 != 1) {
                                    td4Var.e0();
                                    tE3 = tE3;
                                    aVar3 = aVar2;
                                } else {
                                    td4.b bVarU3 = td4Var.U();
                                    td4.b bVar3 = td4.b.NUMBER;
                                    if (bVarU3 == bVar3) {
                                        pointF = pointFB5;
                                        fE8 = (float) td4Var.E();
                                        pointFB6 = pointFB6;
                                        f4 = fE8;
                                    } else {
                                        pointF = pointFB5;
                                        PointF pointF7 = pointFB6;
                                        td4Var.m();
                                        float fE9 = (float) td4Var.E();
                                        if (td4Var.U() == bVar3) {
                                            f4 = fE9;
                                            fE8 = (float) td4Var.E();
                                        } else {
                                            f4 = fE9;
                                            fE8 = f4;
                                        }
                                        td4Var.o();
                                        pointFB6 = pointF7;
                                    }
                                }
                            } else {
                                aVar2 = aVar3;
                                pointF = pointFB5;
                                PointF pointF8 = pointFB6;
                                td4.b bVarU4 = td4Var.U();
                                td4.b bVar4 = td4.b.NUMBER;
                                if (bVarU4 == bVar4) {
                                    fE7 = (float) td4Var.E();
                                    pointFB6 = pointF8;
                                    f3 = fE7;
                                } else {
                                    td4Var.m();
                                    pointFB6 = pointF8;
                                    float fE10 = (float) td4Var.E();
                                    if (td4Var.U() == bVar4) {
                                        f2 = fE10;
                                        fE7 = (float) td4Var.E();
                                    } else {
                                        f2 = fE10;
                                        fE7 = f2;
                                    }
                                    td4Var.o();
                                    f3 = f2;
                                }
                            }
                            aVar3 = aVar2;
                            pointFB5 = pointF;
                        }
                        aVar = aVar3;
                        PointF pointF9 = new PointF(f3, f4);
                        pointF2 = new PointF(fE7, fE8);
                        td4Var.p();
                        z4 = z6;
                        pointF5 = pointF9;
                    } else {
                        pointFB8 = ie4.b(td4Var, f);
                        z4 = z6;
                        linearInterpolator2 = linearInterpolator;
                    }
                    break;
                case 5:
                    if (td4Var.P() == 1) {
                        z4 = true;
                    } else {
                        z4 = false;
                        continue;
                    }
                    break;
                case 6:
                    pointFB5 = ie4.b(td4Var, f);
                    continue;
                case 7:
                    pointFB6 = ie4.b(td4Var, f);
                    continue;
                default:
                    td4Var.e0();
                    continue;
            }
            linearInterpolator2 = linearInterpolator;
            aVar3 = aVar;
        }
        PointF pointF10 = pointFB5;
        Interpolator interpolatorA4 = linearInterpolator2;
        boolean z7 = z4;
        T t4 = tE3;
        td4Var.p();
        if (z7) {
            t2 = t4;
        } else {
            if (pointFB7 == null || pointFB8 == null) {
                if (pointF3 != null && pointF4 != null && pointF5 != null && pointF2 != null) {
                    interpolatorA2 = a(pointF3, pointF5);
                    interpolatorA3 = a(pointF4, pointF2);
                    t2 = tE4;
                    interpolatorA4 = null;
                }
                if (interpolatorA2 != null || interpolatorA3 == null) {
                    vf4Var = new vf4<>(nw4Var, t4, t2, interpolatorA4, fE2, (Float) null);
                } else {
                    vf4Var = new vf4<>(nw4Var, t4, t2, interpolatorA2, interpolatorA3, fE2);
                }
                vf4Var.o = pointF10;
                vf4Var.p = pointFB6;
                return vf4Var;
            }
            interpolatorA4 = a(pointFB7, pointFB8);
            t2 = tE4;
        }
        interpolatorA2 = null;
        interpolatorA3 = null;
        if (interpolatorA2 != null) {
            vf4Var = new vf4<>(nw4Var, t4, t2, interpolatorA4, fE2, (Float) null);
        } else {
            vf4Var = new vf4<>(nw4Var, t4, t2, interpolatorA4, fE2, (Float) null);
        }
        vf4Var.o = pointF10;
        vf4Var.p = pointFB6;
        return vf4Var;
    }
}
