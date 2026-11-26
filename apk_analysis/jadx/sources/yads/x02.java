package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class x02 {
    /* JADX WARN: Code duplicated, block: B:75:0x00d0 A[RETURN] */
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
    public final boolean a(x02 x02Var, fs2 fs2Var, fs2 fs2Var2) {
        boolean zA;
        boolean zA2;
        boolean zA3;
        boolean zA4;
        if (x02Var == null) {
            return false;
        }
        if (this instanceof u02) {
            af1 af1Var = ((u02) this).a;
            Object objA = x02Var.a();
            return af1Var.a(objA instanceof af1 ? (af1) objA : null, fs2Var, fs2Var2);
        }
        if (this instanceof v02) {
            pp1 pp1Var = ((v02) this).a;
            Object objA2 = x02Var.a();
            pp1 pp1Var2 = objA2 instanceof pp1 ? (pp1) objA2 : null;
            if (pp1Var2 != null) {
                h12 h12Var = pp1Var.a;
                h12 h12Var2 = pp1Var2.a;
                if (h12Var != null) {
                    zA3 = h12Var.a(h12Var2, fs2Var, fs2Var2);
                } else {
                    zA3 = h12Var2 == null;
                }
                if (zA3) {
                    h12 h12Var3 = pp1Var.b;
                    h12 h12Var4 = pp1Var2.b;
                    if (h12Var3 != null) {
                        zA4 = h12Var3.a(h12Var4, fs2Var, fs2Var2);
                    } else {
                        zA4 = h12Var4 == null;
                    }
                    if (zA4) {
                        as2 as2Var = pp1Var.c;
                        Double d = as2Var != null ? (Double) as2Var.a(fs2Var) : null;
                        as2 as2Var2 = pp1Var2.c;
                        if (defpackage.aa4.b(d, as2Var2 != null ? (Double) as2Var2.a(fs2Var2) : null)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        if (!(this instanceof w02)) {
            defpackage.me0.e();
            return false;
        }
        ej2 ej2Var = ((w02) this).a;
        Object objA3 = x02Var.a();
        ej2 ej2Var2 = objA3 instanceof ej2 ? (ej2) objA3 : null;
        if (ej2Var2 != null) {
            as2 as2Var3 = ej2Var.a;
            Boolean bool = as2Var3 != null ? (Boolean) as2Var3.a(fs2Var) : null;
            as2 as2Var4 = ej2Var2.a;
            if (defpackage.aa4.e(bool, as2Var4 != null ? (Boolean) as2Var4.a(fs2Var2) : null)) {
                h12 h12Var5 = ej2Var.b;
                h12 h12Var6 = ej2Var2.b;
                if (h12Var5 != null) {
                    zA = h12Var5.a(h12Var6, fs2Var, fs2Var2);
                } else {
                    zA = h12Var6 == null;
                }
                if (zA) {
                    h12 h12Var7 = ej2Var.c;
                    h12 h12Var8 = ej2Var2.c;
                    if (h12Var7 != null) {
                        zA2 = h12Var7.a(h12Var8, fs2Var, fs2Var2);
                    } else {
                        zA2 = h12Var8 == null;
                    }
                    if (zA2) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final Object a() {
        if (this instanceof u02) {
            return ((u02) this).a;
        }
        if (this instanceof v02) {
            return ((v02) this).a;
        }
        if (this instanceof w02) {
            return ((w02) this).a;
        }
        defpackage.me0.e();
        return null;
    }
}
