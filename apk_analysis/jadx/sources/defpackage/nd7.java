package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class nd7 extends wf4<od7> {
    public final od7 i;

    public nd7(List<vf4<od7>> list) {
        super(list);
        this.i = new od7();
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
    @Override // defpackage.ld0
    public final Object g(vf4 vf4Var, float f) {
        T t;
        float f2;
        T t2 = vf4Var.b;
        if (t2 == 0 || (t = vf4Var.c) == 0) {
            ah.f("Missing values for keyframe.");
            return null;
        }
        od7 od7Var = (od7) t2;
        od7 od7Var2 = (od7) t;
        by4<A> by4Var = this.e;
        if (by4Var != 0) {
            f2 = f;
            od7 od7Var3 = (od7) by4Var.b(vf4Var.g, vf4Var.h.floatValue(), od7Var, od7Var2, f2, e(), this.d);
            if (od7Var3 != null) {
                return od7Var3;
            }
        } else {
            f2 = f;
        }
        float f3 = hb5.f(od7Var.a, od7Var2.a, f2);
        float f4 = hb5.f(od7Var.b, od7Var2.b, f2);
        od7 od7Var4 = this.i;
        od7Var4.a = f3;
        od7Var4.b = f4;
        return od7Var4;
    }
}
