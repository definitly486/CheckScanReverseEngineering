package defpackage;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
public final class b84 extends wf4<Integer> {
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
    @Override // defpackage.ld0
    public final Object g(vf4 vf4Var, float f) {
        int iIntValue;
        float f2;
        int iIntValue2;
        T t = vf4Var.b;
        if (t == 0) {
            ah.f("Missing values for keyframe.");
            return null;
        }
        T t2 = vf4Var.c;
        if (t2 == 0) {
            iIntValue = vf4Var.k;
            if (iIntValue == 784923401) {
                iIntValue = ((Integer) t).intValue();
                vf4Var.k = iIntValue;
            }
        } else {
            int i = vf4Var.l;
            if (i == 784923401) {
                iIntValue = ((Integer) t2).intValue();
                vf4Var.l = iIntValue;
            } else {
                iIntValue = i;
            }
        }
        by4<A> by4Var = this.e;
        if (by4Var != 0) {
            f2 = f;
            Integer num = (Integer) by4Var.b(vf4Var.g, vf4Var.h.floatValue(), (Integer) t, Integer.valueOf(iIntValue), f2, e(), this.d);
            if (num != null) {
                iIntValue2 = num.intValue();
            }
            return Integer.valueOf(iIntValue2);
        }
        f2 = f;
        int iIntValue3 = vf4Var.k;
        if (iIntValue3 == 784923401) {
            iIntValue3 = ((Integer) t).intValue();
            vf4Var.k = iIntValue3;
        }
        PointF pointF = hb5.a;
        iIntValue2 = (int) ((f2 * (iIntValue - iIntValue3)) + iIntValue3);
        return Integer.valueOf(iIntValue2);
    }
}
