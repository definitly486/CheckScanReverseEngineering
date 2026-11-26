package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class y48 implements s82.a<Object> {
    public final /* synthetic */ nc5.a b;
    public final /* synthetic */ z48 c;

    public y48(z48 z48Var, nc5.a aVar) {
        this.c = z48Var;
        this.b = aVar;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // s82.a
    public final void d(Object obj) {
        z48 z48Var = this.c;
        nc5.a<?> aVar = this.b;
        nc5.a<?> aVar2 = z48Var.g;
        if (aVar2 == null || aVar2 != aVar) {
            return;
        }
        z48 z48Var2 = this.c;
        nc5.a aVar3 = this.b;
        sn2 sn2Var = z48Var2.b.p;
        if (obj != null && sn2Var.c(aVar3.c.c())) {
            z48Var2.f = obj;
            z48Var2.c.n(od2.f.SWITCH_TO_SOURCE_SERVICE);
        } else {
            od2 od2Var = z48Var2.c;
            kf4 kf4Var = aVar3.a;
            s82<Data> s82Var = aVar3.c;
            od2Var.c(kf4Var, obj, s82Var, s82Var.c(), z48Var2.h);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // s82.a
    public final void e(Exception exc) {
        z48 z48Var = this.c;
        nc5.a<?> aVar = this.b;
        nc5.a<?> aVar2 = z48Var.g;
        if (aVar2 == null || aVar2 != aVar) {
            return;
        }
        z48 z48Var2 = this.c;
        nc5.a aVar3 = this.b;
        od2 od2Var = z48Var2.c;
        kf4 kf4Var = z48Var2.h;
        s82<Data> s82Var = aVar3.c;
        od2Var.a(kf4Var, exc, s82Var, s82Var.c());
    }
}
