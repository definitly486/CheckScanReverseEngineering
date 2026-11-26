package defpackage;

import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class xz5 implements kf4 {
    public final zx0 b = new zx0();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        for (int i = 0; i < this.b.size(); i++) {
            qz5 qz5Var = (qz5) this.b.keyAt(i);
            V vValueAt = this.b.valueAt(i);
            qz5.b<T> bVar = qz5Var.b;
            if (qz5Var.d == null) {
                qz5Var.d = qz5Var.c.getBytes(kf4.a);
            }
            bVar.a(qz5Var.d, vValueAt, messageDigest);
        }
    }

    public final <T> T c(qz5<T> qz5Var) {
        zx0 zx0Var = this.b;
        return zx0Var.containsKey(qz5Var) ? (T) zx0Var.get(qz5Var) : qz5Var.a;
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (obj instanceof xz5) {
            return this.b.equals(((xz5) obj).b);
        }
        return false;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.b + '}';
    }
}
