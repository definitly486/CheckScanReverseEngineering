package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s21 {
    /* JADX WARN: Code duplicated, block: B:76:0x01a7 A[RETURN] */
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
    public final boolean a(s21 s21Var, fs2 fs2Var, fs2 fs2Var2) {
        if (s21Var == null) {
            return false;
        }
        if (this instanceof q21) {
            i21 i21Var = ((q21) this).a;
            Object objA = s21Var.a();
            i21 i21Var2 = objA instanceof i21 ? (i21) objA : null;
            if (i21Var2 == null) {
                i21Var.getClass();
            } else {
                List list = i21Var.a;
                List list2 = i21Var2.a;
                if (list.size() == list2.size()) {
                    int i = 0;
                    for (Object obj : list) {
                        int i2 = i + 1;
                        if (i < 0) {
                            u96.o();
                            throw null;
                        }
                        if (((s21) obj).a((s21) list2.get(i), fs2Var, fs2Var2)) {
                            i = i2;
                        }
                    }
                    return true;
                }
            }
            return false;
        }
        if (this instanceof o21) {
            od1 od1Var = ((o21) this).a;
            Object objA2 = s21Var.a();
            return od1Var.a(objA2 instanceof od1 ? (od1) objA2 : null, fs2Var, fs2Var2);
        }
        if (this instanceof p21) {
            ny1 ny1Var = ((p21) this).a;
            Object objA3 = s21Var.a();
            ny1 ny1Var2 = objA3 instanceof ny1 ? (ny1) objA3 : null;
            if (ny1Var2 == null) {
                ny1Var.getClass();
            } else if (((Number) ny1Var.a.a(fs2Var)).longValue() == ((Number) ny1Var2.a.a(fs2Var2)).longValue() && ny1Var.b.a(fs2Var) == ny1Var2.b.a(fs2Var2) && ((Number) ny1Var.c.a(fs2Var)).doubleValue() == ((Number) ny1Var2.c.a(fs2Var2)).doubleValue() && ((Number) ny1Var.d.a(fs2Var)).doubleValue() == ((Number) ny1Var2.d.a(fs2Var2)).doubleValue() && ((Number) ny1Var.e.a(fs2Var)).doubleValue() == ((Number) ny1Var2.e.a(fs2Var2)).doubleValue() && ((Number) ny1Var.f.a(fs2Var)).longValue() == ((Number) ny1Var2.f.a(fs2Var2)).longValue()) {
                return true;
            }
            return false;
        }
        if (!(this instanceof r21)) {
            defpackage.me0.e();
            return false;
        }
        p12 p12Var = ((r21) this).a;
        Object objA4 = s21Var.a();
        p12 p12Var2 = objA4 instanceof p12 ? (p12) objA4 : null;
        if (p12Var2 == null) {
            p12Var.getClass();
        } else {
            ac1 ac1Var = p12Var.a;
            ac1 ac1Var2 = p12Var2.a;
            if ((ac1Var != null ? ac1Var.a(ac1Var2, fs2Var, fs2Var2) : ac1Var2 == null) && ((Number) p12Var.b.a(fs2Var)).longValue() == ((Number) p12Var2.b.a(fs2Var2)).longValue() && p12Var.c.a(fs2Var) == p12Var2.c.a(fs2Var2) && p12Var.d.a(fs2Var) == p12Var2.d.a(fs2Var2) && ((Number) p12Var.e.a(fs2Var)).longValue() == ((Number) p12Var2.e.a(fs2Var2)).longValue()) {
                return true;
            }
        }
        return false;
    }

    public final Object a() {
        if (this instanceof q21) {
            return ((q21) this).a;
        }
        if (this instanceof o21) {
            return ((o21) this).a;
        }
        if (this instanceof p21) {
            return ((p21) this).a;
        }
        if (this instanceof r21) {
            return ((r21) this).a;
        }
        defpackage.me0.e();
        return null;
    }
}
