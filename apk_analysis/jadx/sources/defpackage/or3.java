package defpackage;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.LongSparseArray;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class or3 implements xs2, ld0.a, pf4 {
    public final String a;
    public final boolean b;
    public final nd0 c;
    public final LongSparseArray<LinearGradient> d = new LongSparseArray<>();
    public final LongSparseArray<RadialGradient> e = new LongSparseArray<>();
    public final Path f;
    public final ch4 g;
    public final RectF h;
    public final ArrayList i;
    public final tr3 j;
    public final lr3 k;
    public final b84 l;
    public final w96 m;
    public final w96 n;
    public ac9 o;
    public ac9 p;
    public final ox4 q;
    public final int r;
    public ld0<Float, Float> s;
    public float t;

    public or3(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var, nr3 nr3Var) {
        Path path = new Path();
        this.f = path;
        this.g = new ch4(1);
        this.h = new RectF();
        this.i = new ArrayList();
        this.t = 0.0f;
        this.c = nd0Var;
        this.a = nr3Var.g;
        this.b = nr3Var.h;
        this.q = ox4Var;
        this.j = nr3Var.a;
        path.setFillType(nr3Var.b);
        this.r = (int) (nw4Var.b() / 32.0f);
        ld0<kr3, kr3> ld0VarA = nr3Var.c.a();
        this.k = (lr3) ld0VarA;
        ld0VarA.a(this);
        nd0Var.c(ld0VarA);
        ld0<Integer, Integer> ld0VarA2 = nr3Var.d.a();
        this.l = (b84) ld0VarA2;
        ld0VarA2.a(this);
        nd0Var.c(ld0VarA2);
        ld0<PointF, PointF> ld0VarA3 = nr3Var.e.a();
        this.m = (w96) ld0VarA3;
        ld0VarA3.a(this);
        nd0Var.c(ld0VarA3);
        ld0<PointF, PointF> ld0VarA4 = nr3Var.f.a();
        this.n = (w96) ld0VarA4;
        ld0VarA4.a(this);
        nd0Var.c(ld0VarA4);
        if (nd0Var.m() != null) {
            tc3 tc3VarA = ((dl) nd0Var.m().a).a();
            this.s = tc3VarA;
            tc3VarA.a(this);
            nd0Var.c(this.s);
        }
    }

    @Override // defpackage.of4
    public final void a(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
        hb5.g(nf4Var, i, arrayList, nf4Var2, this);
    }

    @Override // defpackage.xs2
    public final void b(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.f;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.i;
            if (i >= arrayList.size()) {
                path.computeBounds(rectF, false);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                return;
            } else {
                path.addPath(((l46) arrayList.get(i)).getPath(), matrix);
                i++;
            }
        }
    }

    public final int[] c(int[] iArr) {
        ac9 ac9Var = this.p;
        if (ac9Var != null) {
            Integer[] numArr = (Integer[]) ac9Var.f();
            int i = 0;
            if (iArr.length == numArr.length) {
                while (i < iArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i < numArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            }
        }
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.xs2
    public final void d(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        float[] fArr;
        int[] iArr;
        Shader linearGradient;
        int[] iArr2;
        if (this.b) {
            return;
        }
        dt dtVar = ah4.a;
        Path path = this.f;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.i;
            if (i2 >= arrayList.size()) {
                break;
            }
            path.addPath(((l46) arrayList.get(i2)).getPath(), matrix);
            i2++;
        }
        path.computeBounds(this.h, false);
        tr3 tr3Var = this.j;
        tr3 tr3Var2 = tr3.LINEAR;
        lr3 lr3Var = this.k;
        w96 w96Var = this.n;
        w96 w96Var2 = this.m;
        if (tr3Var == tr3Var2) {
            long j = j();
            LongSparseArray<LinearGradient> longSparseArray = this.d;
            linearGradient = (LinearGradient) longSparseArray.get(j);
            if (linearGradient == null) {
                PointF pointFF = w96Var2.f();
                PointF pointFF2 = w96Var.f();
                kr3 kr3VarF = lr3Var.f();
                int[] iArrC = c(kr3VarF.b);
                float[] fArr2 = kr3VarF.a;
                if (iArrC.length < 2) {
                    fArr2 = new float[]{0.0f, 1.0f};
                    iArr2 = new int[]{iArrC[0], iArrC[0]};
                } else {
                    iArr2 = iArrC;
                }
                linearGradient = new LinearGradient(pointFF.x, pointFF.y, pointFF2.x, pointFF2.y, iArr2, fArr2, Shader.TileMode.CLAMP);
                longSparseArray.put(j, linearGradient);
            }
        } else {
            long j2 = j();
            LongSparseArray<RadialGradient> longSparseArray2 = this.e;
            RadialGradient radialGradient = longSparseArray2.get(j2);
            if (radialGradient != null) {
                linearGradient = radialGradient;
            } else {
                PointF pointFF3 = w96Var2.f();
                PointF pointFF4 = w96Var.f();
                kr3 kr3VarF2 = lr3Var.f();
                int[] iArrC2 = c(kr3VarF2.b);
                float[] fArr3 = kr3VarF2.a;
                if (iArrC2.length < 2) {
                    iArr = new int[]{iArrC2[0], iArrC2[0]};
                    fArr = new float[]{0.0f, 1.0f};
                } else {
                    fArr = fArr3;
                    iArr = iArrC2;
                }
                float f = pointFF3.x;
                float f2 = pointFF3.y;
                float fHypot = (float) Math.hypot(pointFF4.x - f, pointFF4.y - f2);
                if (fHypot <= 0.0f) {
                    fHypot = 0.001f;
                }
                RadialGradient radialGradient2 = new RadialGradient(f, f2, fHypot, iArr, fArr, Shader.TileMode.CLAMP);
                longSparseArray2.put(j2, radialGradient2);
                linearGradient = radialGradient2;
            }
        }
        linearGradient.setLocalMatrix(matrix);
        ch4 ch4Var = this.g;
        ch4Var.setShader(linearGradient);
        ac9 ac9Var = this.o;
        if (ac9Var != null) {
            ch4Var.setColorFilter((ColorFilter) ac9Var.f());
        }
        ld0<Float, Float> ld0Var = this.s;
        if (ld0Var != null) {
            float fFloatValue = ld0Var.f().floatValue();
            if (fFloatValue == 0.0f) {
                ch4Var.setMaskFilter(null);
            } else if (fFloatValue != this.t) {
                ch4Var.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.t = fFloatValue;
        }
        float fIntValue = this.l.f().intValue() / 100.0f;
        ch4Var.setAlpha(hb5.c((int) (i * fIntValue)));
        if (et2Var != null) {
            et2Var.a((int) (fIntValue * 255.0f), ch4Var);
        }
        canvas.drawPath(path, ch4Var);
        dt dtVar2 = ah4.a;
    }

    @Override // ld0.a
    public final void e() {
        this.q.invalidateSelf();
    }

    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
        for (int i = 0; i < list2.size(); i++) {
            sx1 sx1Var = list2.get(i);
            if (sx1Var instanceof l46) {
                this.i.add((l46) sx1Var);
            }
        }
    }

    @Override // defpackage.sx1
    public final String getName() {
        return this.a;
    }

    @Override // defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        PointF pointF = vx4.a;
        if (obj == 4) {
            this.l.k(by4Var);
            return;
        }
        ColorFilter colorFilter = vx4.I;
        nd0 nd0Var = this.c;
        if (obj == colorFilter) {
            ac9 ac9Var = this.o;
            if (ac9Var != null) {
                nd0Var.p(ac9Var);
            }
            ac9 ac9Var2 = new ac9(by4Var, null);
            this.o = ac9Var2;
            ac9Var2.a(this);
            nd0Var.c(this.o);
            return;
        }
        if (obj == vx4.J) {
            ac9 ac9Var3 = this.p;
            if (ac9Var3 != null) {
                nd0Var.p(ac9Var3);
            }
            this.d.clear();
            this.e.clear();
            ac9 ac9Var4 = new ac9(by4Var, null);
            this.p = ac9Var4;
            ac9Var4.a(this);
            nd0Var.c(this.p);
            return;
        }
        if (obj == vx4.e) {
            ld0<Float, Float> ld0Var = this.s;
            if (ld0Var != null) {
                ld0Var.k(by4Var);
                return;
            }
            ac9 ac9Var5 = new ac9(by4Var, null);
            this.s = ac9Var5;
            ac9Var5.a(this);
            nd0Var.c(this.s);
        }
    }

    public final int j() {
        float f = this.m.d;
        float f2 = this.r;
        int iRound = Math.round(f * f2);
        int iRound2 = Math.round(this.n.d * f2);
        int iRound3 = Math.round(this.k.d * f2);
        int i = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i = i * 31 * iRound2;
        }
        return iRound3 != 0 ? i * 31 * iRound3 : i;
    }
}
