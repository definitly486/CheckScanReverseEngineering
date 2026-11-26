package defpackage;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.MaskFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ea3 implements xs2, ld0.a, pf4 {
    public final Path a;
    public final ch4 b;
    public final nd0 c;
    public final String d;
    public final boolean e;
    public final ArrayList f;
    public final tn1 g;
    public final b84 h;
    public ac9 i;
    public final ox4 j;
    public ld0<Float, Float> k;
    public float l;

    public ea3(ox4 ox4Var, nd0 nd0Var, ur7 ur7Var) {
        Path path = new Path();
        this.a = path;
        this.b = new ch4(1);
        this.f = new ArrayList();
        this.c = nd0Var;
        String str = ur7Var.c;
        fl flVar = ur7Var.e;
        cl clVar = ur7Var.d;
        this.d = str;
        this.e = ur7Var.f;
        this.j = ox4Var;
        if (nd0Var.m() != null) {
            tc3 tc3VarA = ((dl) nd0Var.m().a).a();
            this.k = tc3VarA;
            tc3VarA.a(this);
            nd0Var.c(this.k);
        }
        if (clVar == null) {
            this.g = null;
            this.h = null;
            return;
        }
        path.setFillType(ur7Var.b);
        ld0<Integer, Integer> ld0VarA = clVar.a();
        this.g = (tn1) ld0VarA;
        ld0VarA.a(this);
        nd0Var.c(ld0VarA);
        ld0<Integer, Integer> ld0VarA2 = flVar.a();
        this.h = (b84) ld0VarA2;
        ld0VarA2.a(this);
        nd0Var.c(ld0VarA2);
    }

    @Override // defpackage.of4
    public final void a(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
        hb5.g(nf4Var, i, arrayList, nf4Var2, this);
    }

    @Override // defpackage.xs2
    public final void b(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.a;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f;
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
        MaskFilter maskFilter;
        if (this.e) {
            return;
        }
        dt dtVar = ah4.a;
        tn1 tn1Var = this.g;
        int iM = tn1Var.m(tn1Var.b(), tn1Var.d());
        float fIntValue = this.h.f().intValue() / 100.0f;
        int iC = (hb5.c((int) (i * fIntValue)) << 24) | (iM & ViewCompat.MEASURED_SIZE_MASK);
        ch4 ch4Var = this.b;
        ch4Var.setColor(iC);
        ac9 ac9Var = this.i;
        if (ac9Var != null) {
            ch4Var.setColorFilter((ColorFilter) ac9Var.f());
        }
        ld0<Float, Float> ld0Var = this.k;
        if (ld0Var != null) {
            float fFloatValue = ld0Var.f().floatValue();
            if (fFloatValue == 0.0f) {
                ch4Var.setMaskFilter(null);
            } else if (fFloatValue != this.l) {
                nd0 nd0Var = this.c;
                if (nd0Var.A == fFloatValue) {
                    maskFilter = nd0Var.B;
                } else {
                    BlurMaskFilter blurMaskFilter = new BlurMaskFilter(fFloatValue / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    nd0Var.B = blurMaskFilter;
                    nd0Var.A = fFloatValue;
                    maskFilter = blurMaskFilter;
                }
                ch4Var.setMaskFilter(maskFilter);
            }
            this.l = fFloatValue;
        }
        if (et2Var != null) {
            et2Var.a((int) (fIntValue * 255.0f), ch4Var);
        } else {
            ch4Var.clearShadowLayer();
        }
        Path path = this.a;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f;
            if (i2 >= arrayList.size()) {
                canvas.drawPath(path, ch4Var);
                dt dtVar2 = ah4.a;
                return;
            } else {
                path.addPath(((l46) arrayList.get(i2)).getPath(), matrix);
                i2++;
            }
        }
    }

    @Override // ld0.a
    public final void e() {
        this.j.invalidateSelf();
    }

    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
        for (int i = 0; i < list2.size(); i++) {
            sx1 sx1Var = list2.get(i);
            if (sx1Var instanceof l46) {
                this.f.add((l46) sx1Var);
            }
        }
    }

    @Override // defpackage.sx1
    public final String getName() {
        return this.d;
    }

    @Override // defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        PointF pointF = vx4.a;
        if (obj == 1) {
            this.g.k(by4Var);
            return;
        }
        if (obj == 4) {
            this.h.k(by4Var);
            return;
        }
        ColorFilter colorFilter = vx4.I;
        nd0 nd0Var = this.c;
        if (obj == colorFilter) {
            ac9 ac9Var = this.i;
            if (ac9Var != null) {
                nd0Var.p(ac9Var);
            }
            ac9 ac9Var2 = new ac9(by4Var, null);
            this.i = ac9Var2;
            ac9Var2.a(this);
            nd0Var.c(this.i);
            return;
        }
        if (obj == vx4.e) {
            ld0<Float, Float> ld0Var = this.k;
            if (ld0Var != null) {
                ld0Var.k(by4Var);
                return;
            }
            ac9 ac9Var3 = new ac9(by4Var, null);
            this.k = ac9Var3;
            ac9Var3.a(this);
            nd0Var.c(this.k);
        }
    }
}
