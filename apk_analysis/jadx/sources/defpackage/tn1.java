package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class tn1 extends wf4<Integer> {
    @Override // defpackage.ld0
    public final Object g(vf4 vf4Var, float f) {
        return Integer.valueOf(m(vf4Var, f));
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
    public final int m(vf4<Integer> vf4Var, float f) {
        float f2;
        Float f3;
        Integer num = vf4Var.b;
        Integer num2 = vf4Var.b;
        if (num == null || vf4Var.c == null) {
            ah.f("Missing values for keyframe.");
            return 0;
        }
        by4<A> by4Var = this.e;
        if (by4Var == 0 || (f3 = vf4Var.h) == null) {
            f2 = f;
        } else {
            f2 = f;
            Integer num3 = (Integer) by4Var.b(vf4Var.g, f3.floatValue(), num2, vf4Var.c, f2, e(), this.d);
            if (num3 != null) {
                return num3.intValue();
            }
        }
        return dh5.c(hb5.b(f2, 0.0f, 1.0f), num2.intValue(), vf4Var.c.intValue());
    }
}
