package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class is8 extends wf4<bq2> {
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
        T t;
        T t2 = vf4Var.b;
        by4<A> by4Var = this.e;
        if (by4Var == 0) {
            return (f != 1.0f || (t = vf4Var.c) == 0) ? (bq2) t2 : (bq2) t;
        }
        float f2 = vf4Var.g;
        Float f3 = vf4Var.h;
        float fFloatValue = f3 == null ? Float.MAX_VALUE : f3.floatValue();
        bq2 bq2Var = (bq2) t2;
        T t3 = vf4Var.c;
        return (bq2) by4Var.b(f2, fFloatValue, bq2Var, t3 == 0 ? bq2Var : (bq2) t3, f, d(), this.d);
    }
}
