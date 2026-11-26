package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class tc3 extends wf4<Float> {
    @Override // defpackage.ld0
    public final Object g(vf4 vf4Var, float f) {
        return Float.valueOf(n(vf4Var, f));
    }

    public final float m() {
        return n(b(), d());
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
    public final float n(vf4<Float> vf4Var, float f) {
        float f2;
        Float f3 = vf4Var.b;
        Float f4 = vf4Var.b;
        if (f3 == null || vf4Var.c == null) {
            ah.f("Missing values for keyframe.");
            return 0.0f;
        }
        by4<A> by4Var = this.e;
        if (by4Var != 0) {
            f2 = f;
            Float f5 = (Float) by4Var.b(vf4Var.g, vf4Var.h.floatValue(), f4, vf4Var.c, f2, e(), this.d);
            if (f5 != null) {
                return f5.floatValue();
            }
        } else {
            f2 = f;
        }
        float fFloatValue = vf4Var.i;
        if (fFloatValue == -3987645.8f) {
            fFloatValue = f4.floatValue();
            vf4Var.i = fFloatValue;
        }
        float fFloatValue2 = vf4Var.j;
        if (fFloatValue2 == -3987645.8f) {
            fFloatValue2 = vf4Var.c.floatValue();
            vf4Var.j = fFloatValue2;
        }
        return hb5.f(fFloatValue, fFloatValue2, f2);
    }
}
