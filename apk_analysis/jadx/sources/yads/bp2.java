package yads;

import defpackage.ll3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bp2 {
    public final yo2 a;

    public bp2(yo2 yo2Var) {
        this.a = yo2Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(ko2 ko2Var) {
        defpackage.b36 b36Var;
        Object objA = a(ko2Var.f);
        ko2Var.a(ko2Var.f.a());
        cz5 cz5Var = ko2Var.e;
        boolean zEquals = true;
        char c = 1;
        if (cz5Var instanceof xy5) {
            return a((xy5) cz5Var, objA, new defpackage.na6(c == true ? 1 : 0, this, ko2Var));
        }
        Object objA2 = a(ko2Var.g);
        ko2Var.a(ko2Var.g.a());
        if (objA.getClass().equals(objA2.getClass())) {
            b36Var = new defpackage.b36(objA, objA2);
        } else if ((objA instanceof Long) && (objA2 instanceof Double)) {
            b36Var = new defpackage.b36(Double.valueOf(((Number) objA).longValue()), objA2);
        } else {
            b36Var = ((objA instanceof Double) && (objA2 instanceof Long)) ? new defpackage.b36(objA, Double.valueOf(((Number) objA2).longValue())) : new defpackage.b36(objA, objA2);
        }
        A a = b36Var.b;
        Class<?> cls = a.getClass();
        Object obj = b36Var.c;
        boolean zEquals2 = cls.equals(obj.getClass());
        cz5 cz5Var2 = ko2Var.e;
        if (!zEquals2) {
            wo2.a(cz5Var2, a, obj);
            throw null;
        }
        if (cz5Var2 instanceof qy5) {
            qy5 qy5Var = (qy5) cz5Var2;
            if (qy5Var instanceof oy5) {
                zEquals = a.equals(obj);
            } else {
                if (!(qy5Var instanceof py5)) {
                    defpackage.me0.e();
                    return null;
                }
                if (a.equals(obj)) {
                    zEquals = false;
                }
            }
            return Boolean.valueOf(zEquals);
        }
        if (cz5Var2 instanceof bz5) {
            return zo2.a((bz5) cz5Var2, a, obj);
        }
        if (cz5Var2 instanceof uy5) {
            return zo2.a((uy5) cz5Var2, a, obj);
        }
        if (!(cz5Var2 instanceof ny5)) {
            wo2.a(cz5Var2, a, obj);
            throw null;
        }
        ny5 ny5Var = (ny5) cz5Var2;
        if ((a instanceof Double) && (obj instanceof Double)) {
            return a(ny5Var, (Comparable) a, (Comparable) obj);
        }
        if ((a instanceof Long) && (obj instanceof Long)) {
            return a(ny5Var, (Comparable) a, (Comparable) obj);
        }
        if ((a instanceof fd0) && (obj instanceof fd0)) {
            return a(ny5Var, (Comparable) a, (Comparable) obj);
        }
        wo2.a(ny5Var, a, obj);
        throw null;
    }

    public final Object a(ro2 ro2Var) {
        Object objA = a(ro2Var.e());
        ro2Var.a(ro2Var.e().a());
        mz5 mz5VarF = ro2Var.f();
        if (mz5VarF instanceof kz5) {
            if (objA instanceof Long) {
                return Long.valueOf(((Number) objA).longValue());
            }
            if (objA instanceof Double) {
                return Double.valueOf(((Number) objA).doubleValue());
            }
            wo2.a("+" + objA, "A Number is expected after a unary plus.");
            throw null;
        }
        if (mz5VarF instanceof iz5) {
            if (objA instanceof Long) {
                return Long.valueOf(-((Number) objA).longValue());
            }
            if (objA instanceof Double) {
                return Double.valueOf(-((Number) objA).doubleValue());
            }
            wo2.a("-" + objA, "A Number is expected after a unary minus.");
            throw null;
        }
        if (defpackage.aa4.e(mz5VarF, jz5.a)) {
            if (!(objA instanceof Boolean)) {
                String str = objA instanceof String ? "'" : "";
                wo2.a("!" + str + objA + str, "A Boolean is expected after a unary not.");
                throw null;
            }
            return Boolean.valueOf(!((Boolean) objA).booleanValue());
        }
        throw new vo2(ro2Var.f() + " was incorrectly parsed as a unary operator.");
    }

    public final Object a(uo2 uo2Var) {
        try {
            Object objA = uo2Var.a(this);
            uo2Var.c = true;
            return objA;
        } catch (vo2 e) {
            throw e;
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "";
            }
            throw new vo2(e2, message);
        }
    }

    public final yo2 a() {
        return this.a;
    }

    public static final Object a(bp2 bp2Var, ko2 ko2Var) {
        Object objA = bp2Var.a(ko2Var.g);
        ko2Var.a(ko2Var.g.a());
        return objA;
    }

    public static Boolean a(xy5 xy5Var, Object obj, ll3 ll3Var) {
        if (obj instanceof Boolean) {
            boolean z = xy5Var instanceof wy5;
            if (z) {
                Boolean bool = (Boolean) obj;
                if (bool.booleanValue()) {
                    return bool;
                }
            }
            if (xy5Var instanceof vy5) {
                Boolean bool2 = (Boolean) obj;
                if (!bool2.booleanValue()) {
                    return bool2;
                }
            }
            Object objInvoke = ll3Var.invoke();
            if (objInvoke instanceof Boolean) {
                return Boolean.valueOf(!z ? !(((Boolean) obj).booleanValue() && ((Boolean) objInvoke).booleanValue()) : !(((Boolean) obj).booleanValue() || ((Boolean) objInvoke).booleanValue()));
            }
            wo2.a(xy5Var, obj, objInvoke);
            throw null;
        }
        wo2.a(obj + " " + xy5Var + " ...", "'" + xy5Var + "' must be called with boolean operands.");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002b  */
    /* JADX WARN: Code duplicated, block: B:22:0x002d  */
    public static Boolean a(ny5 ny5Var, Comparable comparable, Comparable comparable2) {
        boolean z;
        if (ny5Var instanceof ly5) {
            if (comparable.compareTo(comparable2) < 0) {
                z = true;
            } else {
                z = false;
            }
        } else if (ny5Var instanceof my5) {
            if (comparable.compareTo(comparable2) <= 0) {
                z = true;
            } else {
                z = false;
            }
        } else if (ny5Var instanceof ky5) {
            if (comparable.compareTo(comparable2) >= 0) {
                z = true;
            } else {
                z = false;
            }
        } else {
            if (!(ny5Var instanceof jy5)) {
                defpackage.me0.e();
                return null;
            }
            if (comparable.compareTo(comparable2) > 0) {
                z = true;
            } else {
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }

    public final Object a(po2 po2Var) {
        po2Var.getClass();
        Object objA = a(po2Var.e());
        po2Var.a(po2Var.e().a());
        if (objA instanceof Boolean) {
            if (((Boolean) objA).booleanValue()) {
                Object objA2 = a(po2Var.f());
                po2Var.a(po2Var.f().a());
                return objA2;
            }
            Object objA3 = a(po2Var.g());
            po2Var.a(po2Var.g().a());
            return objA3;
        }
        wo2.a(po2Var.e() + " ? " + po2Var.f() + " : " + po2Var.g(), "Ternary must be called with a Boolean value as a condition.");
        throw null;
    }

    public final Object a(no2 no2Var) {
        xo2 xo2Var;
        ArrayList arrayList = new ArrayList();
        for (uo2 uo2Var : (ArrayList) no2Var.e()) {
            arrayList.add(a(uo2Var));
            no2Var.a(uo2Var.a());
        }
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
        for (Object obj : arrayList) {
            xo2 xo2Var2 = xo2.INTEGER;
            if (obj instanceof Long) {
                xo2Var = xo2.INTEGER;
            } else if (obj instanceof Double) {
                xo2Var = xo2.NUMBER;
            } else if (obj instanceof Boolean) {
                xo2Var = xo2.BOOLEAN;
            } else if (obj instanceof String) {
                xo2Var = xo2.STRING;
            } else if (obj instanceof fd0) {
                xo2Var = xo2.DATETIME;
            } else if (obj instanceof l20) {
                xo2Var = xo2.COLOR;
            } else if (obj instanceof q46) {
                xo2Var = xo2.URL;
            } else if (obj instanceof JSONObject) {
                xo2Var = xo2.DICT;
            } else {
                if (!(obj instanceof JSONArray)) {
                    if (obj == null) {
                        defpackage.qg.h("Unable to find type for null");
                        return null;
                    }
                    defpackage.qg.h("Unable to find type for ".concat(obj.getClass().getName()));
                    return null;
                }
                xo2Var = xo2.ARRAY;
            }
            arrayList2.add(xo2Var);
        }
        try {
            u13 u13VarA = this.a.a().a(no2Var.f().a(), arrayList2);
            uo2 uo2VarA = bs2.a(no2Var);
            no2Var.a(u13VarA.e());
            return u13VarA.b(this.a, uo2VarA, a(u13VarA, arrayList));
        } catch (vo2 e) {
            String strA = no2Var.f().a();
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            wo2.a(strA, arrayList, message, e);
            throw null;
        }
    }

    public final Object a(lo2 lo2Var) {
        xo2 xo2Var;
        ArrayList arrayList = new ArrayList();
        for (uo2 uo2Var : (ArrayList) lo2Var.e()) {
            arrayList.add(a(uo2Var));
            lo2Var.a(uo2Var.a());
        }
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
        for (Object obj : arrayList) {
            xo2 xo2Var2 = xo2.INTEGER;
            if (obj instanceof Long) {
                xo2Var = xo2.INTEGER;
            } else if (obj instanceof Double) {
                xo2Var = xo2.NUMBER;
            } else if (obj instanceof Boolean) {
                xo2Var = xo2.BOOLEAN;
            } else if (obj instanceof String) {
                xo2Var = xo2.STRING;
            } else if (obj instanceof fd0) {
                xo2Var = xo2.DATETIME;
            } else if (obj instanceof l20) {
                xo2Var = xo2.COLOR;
            } else if (obj instanceof q46) {
                xo2Var = xo2.URL;
            } else if (obj instanceof JSONObject) {
                xo2Var = xo2.DICT;
            } else {
                if (!(obj instanceof JSONArray)) {
                    if (obj == null) {
                        defpackage.qg.h("Unable to find type for null");
                        return null;
                    }
                    defpackage.qg.h("Unable to find type for ".concat(obj.getClass().getName()));
                    return null;
                }
                xo2Var = xo2.ARRAY;
            }
            arrayList2.add(xo2Var);
        }
        try {
            u13 u13VarB = this.a.a().b(lo2Var.f().a(), arrayList2);
            uo2 uo2VarA = bs2.a(lo2Var);
            lo2Var.a(u13VarB.e());
            try {
                return u13VarB.b(this.a, uo2VarA, a(u13VarB, arrayList));
            } catch (bm3 unused) {
                throw new bm3(wo2.a(u13VarB.c(), (List) arrayList), 0);
            }
        } catch (vo2 e) {
            String strA = lo2Var.f().a();
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            wo2.a(strA, message, arrayList);
            throw null;
        }
    }

    public static ArrayList a(u13 u13Var, ArrayList arrayList) {
        xo2 xo2Var;
        List listA = u13Var.a();
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
        int i = 0;
        for (Object objValueOf : arrayList) {
            int i2 = i + 1;
            if (i >= 0) {
                int iG = u96.g(listA);
                if (i > iG) {
                    i = iG;
                }
                xo2 xo2VarA = ((w13) listA.get(i)).a();
                xo2 xo2Var2 = xo2.INTEGER;
                boolean z = objValueOf instanceof Long;
                if (z) {
                    xo2Var = xo2.INTEGER;
                } else if (objValueOf instanceof Double) {
                    xo2Var = xo2.NUMBER;
                } else if (objValueOf instanceof Boolean) {
                    xo2Var = xo2.BOOLEAN;
                } else if (objValueOf instanceof String) {
                    xo2Var = xo2.STRING;
                } else if (objValueOf instanceof fd0) {
                    xo2Var = xo2.DATETIME;
                } else if (objValueOf instanceof l20) {
                    xo2Var = xo2.COLOR;
                } else if (objValueOf instanceof q46) {
                    xo2Var = xo2.URL;
                } else if (objValueOf instanceof JSONObject) {
                    xo2Var = xo2.DICT;
                } else {
                    if (!(objValueOf instanceof JSONArray)) {
                        if (objValueOf == null) {
                            defpackage.qg.h("Unable to find type for null");
                            return null;
                        }
                        defpackage.qg.h("Unable to find type for ".concat(objValueOf.getClass().getName()));
                        return null;
                    }
                    xo2Var = xo2.ARRAY;
                }
                if (xo2VarA != xo2Var && z && ap2.a[xo2VarA.ordinal()] == 1) {
                    objValueOf = Double.valueOf(((Number) objValueOf).longValue());
                }
                arrayList2.add(objValueOf);
                i = i2;
            } else {
                u96.o();
                throw null;
            }
        }
        return arrayList2;
    }
}
