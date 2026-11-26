package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class m31 {
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
    public final boolean a(m31 m31Var, fs2 fs2Var, fs2 fs2Var2) {
        if (m31Var == null) {
            return false;
        }
        if (this instanceof i31) {
            dp1 dp1Var = ((i31) this).a;
            Object objA = m31Var.a();
            return dp1Var.a(objA instanceof dp1 ? (dp1) objA : null, fs2Var, fs2Var2);
        }
        if (this instanceof k31) {
            gw1 gw1Var = ((k31) this).a;
            Object objA2 = m31Var.a();
            return gw1Var.a(objA2 instanceof gw1 ? (gw1) objA2 : null, fs2Var, fs2Var2);
        }
        if (this instanceof h31) {
            bi1 bi1Var = ((h31) this).a;
            Object objA3 = m31Var.a();
            bi1 bi1Var2 = objA3 instanceof bi1 ? (bi1) objA3 : null;
            if (bi1Var2 != null && ((Number) bi1Var.a.a(fs2Var)).doubleValue() == ((Number) bi1Var2.a.a(fs2Var2)).doubleValue() && bi1Var.b.a(fs2Var) == bi1Var2.b.a(fs2Var2) && bi1Var.c.a(fs2Var) == bi1Var2.c.a(fs2Var2)) {
                List list = bi1Var.d;
                List list2 = bi1Var2.d;
                if (list != null) {
                    if (list2 != null && list.size() == list2.size()) {
                        int i = 0;
                        for (Object obj : list) {
                            int i2 = i + 1;
                            if (i < 0) {
                                u96.o();
                                throw null;
                            }
                            if (((wd1) obj).a((wd1) list2.get(i), fs2Var, fs2Var2)) {
                                i = i2;
                            }
                        }
                        if (!defpackage.aa4.e(bi1Var.e.a(fs2Var), bi1Var2.e.a(fs2Var2)) && ((Boolean) bi1Var.f.a(fs2Var)).booleanValue() == ((Boolean) bi1Var2.f.a(fs2Var2)).booleanValue() && bi1Var.g.a(fs2Var) == bi1Var2.g.a(fs2Var2)) {
                            return true;
                        }
                    }
                } else if (list2 == null) {
                    if (!defpackage.aa4.e(bi1Var.e.a(fs2Var), bi1Var2.e.a(fs2Var2))) {
                    }
                }
            }
        } else if (this instanceof l31) {
            t22 t22Var = ((l31) this).a;
            Object objA4 = m31Var.a();
            t22 t22Var2 = objA4 instanceof t22 ? (t22) objA4 : null;
            if (t22Var2 != null && ((Number) t22Var.a.a(fs2Var)).intValue() == ((Number) t22Var2.a.a(fs2Var2)).intValue()) {
                return true;
            }
        } else {
            if (!(this instanceof j31)) {
                defpackage.me0.e();
                return false;
            }
            aq1 aq1Var = ((j31) this).a;
            Object objA5 = m31Var.a();
            aq1 aq1Var2 = objA5 instanceof aq1 ? (aq1) objA5 : null;
            if (aq1Var2 != null && defpackage.aa4.e(aq1Var.a.a(fs2Var), aq1Var2.a.a(fs2Var2))) {
                cr0 cr0Var = aq1Var.b;
                cr0 cr0Var2 = aq1Var2.b;
                if (cr0Var2 == null) {
                    cr0Var.getClass();
                } else if (((Number) cr0Var.a.a(fs2Var)).longValue() == ((Number) cr0Var2.a.a(fs2Var2)).longValue() && ((Number) cr0Var.b.a(fs2Var)).longValue() == ((Number) cr0Var2.b.a(fs2Var2)).longValue() && ((Number) cr0Var.c.a(fs2Var)).longValue() == ((Number) cr0Var2.c.a(fs2Var2)).longValue() && ((Number) cr0Var.d.a(fs2Var)).longValue() == ((Number) cr0Var2.d.a(fs2Var2)).longValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final Object a() {
        if (this instanceof i31) {
            return ((i31) this).a;
        }
        if (this instanceof k31) {
            return ((k31) this).a;
        }
        if (this instanceof h31) {
            return ((h31) this).a;
        }
        if (this instanceof l31) {
            return ((l31) this).a;
        }
        if (this instanceof j31) {
            return ((j31) this).a;
        }
        defpackage.me0.e();
        return null;
    }
}
