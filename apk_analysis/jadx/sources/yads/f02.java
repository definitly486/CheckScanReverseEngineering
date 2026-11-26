package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f02 {
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
    public final boolean a(f02 f02Var, fs2 fs2Var, fs2 fs2Var2) {
        Object obj;
        boolean zA;
        Object obj2;
        if (f02Var == null) {
            return false;
        }
        if (this instanceof e02) {
            gy1 gy1Var = ((e02) this).a;
            if (f02Var instanceof e02) {
                obj2 = ((e02) f02Var).a;
            } else {
                if (!(f02Var instanceof d02)) {
                    defpackage.me0.e();
                    return false;
                }
                obj2 = ((d02) f02Var).a;
            }
            return gy1Var.a(obj2 instanceof gy1 ? (gy1) obj2 : null, fs2Var, fs2Var2);
        }
        if (!(this instanceof d02)) {
            defpackage.me0.e();
            return false;
        }
        q61 q61Var = ((d02) this).a;
        if (f02Var instanceof e02) {
            obj = ((e02) f02Var).a;
        } else {
            if (!(f02Var instanceof d02)) {
                defpackage.me0.e();
                return false;
            }
            obj = ((d02) f02Var).a;
        }
        q61 q61Var2 = obj instanceof q61 ? (q61) obj : null;
        if (q61Var2 != null) {
            as2 as2Var = q61Var.a;
            Integer num = as2Var != null ? (Integer) as2Var.a(fs2Var) : null;
            as2 as2Var2 = q61Var2.a;
            if (defpackage.aa4.e(num, as2Var2 != null ? (Integer) as2Var2.a(fs2Var2) : null) && q61Var.b.a(q61Var2.b, fs2Var, fs2Var2)) {
                l42 l42Var = q61Var.c;
                l42 l42Var2 = q61Var2.c;
                if (l42Var != null) {
                    zA = l42Var.a(l42Var2, fs2Var, fs2Var2);
                } else {
                    zA = l42Var2 == null;
                }
                if (zA) {
                    return true;
                }
            }
        }
        return false;
    }
}
