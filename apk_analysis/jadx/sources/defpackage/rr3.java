package defpackage;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.LongSparseArray;

/* JADX INFO: loaded from: classes3.dex */
public final class rr3 extends ke0 {
    public ac9 A;
    public final String q;
    public final boolean r;
    public final LongSparseArray<LinearGradient> s;
    public final LongSparseArray<RadialGradient> t;
    public final RectF u;
    public final tr3 v;
    public final int w;
    public final lr3 x;
    public final w96 y;
    public final w96 z;

    /* JADX WARN: Illegal instructions before constructor call */
    public rr3(ox4 ox4Var, nd0 nd0Var, qr3 qr3Var) {
        ds7.b bVar = qr3Var.h;
        bVar.getClass();
        int i = ds7.a.a[bVar.ordinal()];
        Paint.Cap cap = i != 1 ? i != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        ds7.c cVar = qr3Var.i;
        cVar.getClass();
        int i2 = ds7.a.b[cVar.ordinal()];
        super(ox4Var, nd0Var, cap, i2 != 1 ? i2 != 2 ? i2 != 3 ? null : Paint.Join.ROUND : Paint.Join.MITER : Paint.Join.BEVEL, qr3Var.j, qr3Var.d, qr3Var.g, qr3Var.k, qr3Var.l);
        this.s = new LongSparseArray<>();
        this.t = new LongSparseArray<>();
        this.u = new RectF();
        this.q = qr3Var.a;
        this.v = qr3Var.b;
        this.r = qr3Var.m;
        this.w = (int) (ox4Var.b.b() / 32.0f);
        ld0<kr3, kr3> ld0VarA = qr3Var.c.a();
        this.x = (lr3) ld0VarA;
        ld0VarA.a(this);
        nd0Var.c(ld0VarA);
        ld0<PointF, PointF> ld0VarA2 = qr3Var.e.a();
        this.y = (w96) ld0VarA2;
        ld0VarA2.a(this);
        nd0Var.c(ld0VarA2);
        ld0<PointF, PointF> ld0VarA3 = qr3Var.f.a();
        this.z = (w96) ld0VarA3;
        ld0VarA3.a(this);
        nd0Var.c(ld0VarA3);
    }

    public final int[] c(int[] iArr) {
        ac9 ac9Var = this.A;
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
    @Override // defpackage.ke0, defpackage.xs2
    public final void d(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        Shader shader;
        Shader radialGradient;
        if (this.r) {
            return;
        }
        b(this.u, matrix, false);
        tr3 tr3Var = this.v;
        tr3 tr3Var2 = tr3.LINEAR;
        lr3 lr3Var = this.x;
        w96 w96Var = this.z;
        w96 w96Var2 = this.y;
        if (tr3Var == tr3Var2) {
            long j = j();
            LongSparseArray<LinearGradient> longSparseArray = this.s;
            shader = (LinearGradient) longSparseArray.get(j);
            if (shader == null) {
                PointF pointFF = w96Var2.f();
                PointF pointFF2 = w96Var.f();
                kr3 kr3VarF = lr3Var.f();
                radialGradient = new LinearGradient(pointFF.x, pointFF.y, pointFF2.x, pointFF2.y, c(kr3VarF.b), kr3VarF.a, Shader.TileMode.CLAMP);
                longSparseArray.put(j, radialGradient);
                shader = radialGradient;
            }
        } else {
            long j2 = j();
            LongSparseArray<RadialGradient> longSparseArray2 = this.t;
            shader = (RadialGradient) longSparseArray2.get(j2);
            if (shader == null) {
                PointF pointFF3 = w96Var2.f();
                PointF pointFF4 = w96Var.f();
                kr3 kr3VarF2 = lr3Var.f();
                int[] iArrC = c(kr3VarF2.b);
                float[] fArr = kr3VarF2.a;
                float f = pointFF3.x;
                float f2 = pointFF3.y;
                radialGradient = new RadialGradient(f, f2, (float) Math.hypot(pointFF4.x - f, pointFF4.y - f2), iArrC, fArr, Shader.TileMode.CLAMP);
                longSparseArray2.put(j2, radialGradient);
                shader = radialGradient;
            }
        }
        this.i.setShader(shader);
        super.d(canvas, matrix, i, et2Var);
    }

    @Override // defpackage.sx1
    public final String getName() {
        return this.q;
    }

    @Override // defpackage.ke0, defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        super.i(by4Var, obj);
        if (obj == vx4.J) {
            ac9 ac9Var = this.A;
            nd0 nd0Var = this.f;
            if (ac9Var != null) {
                nd0Var.p(ac9Var);
            }
            ac9 ac9Var2 = new ac9(by4Var, null);
            this.A = ac9Var2;
            ac9Var2.a(this);
            nd0Var.c(this.A);
        }
    }

    public final int j() {
        float f = this.y.d;
        float f2 = this.w;
        int iRound = Math.round(f * f2);
        int iRound2 = Math.round(this.z.d * f2);
        int iRound3 = Math.round(this.x.d * f2);
        int i = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i = i * 31 * iRound2;
        }
        return iRound3 != 0 ? i * 31 * iRound3 : i;
    }
}
