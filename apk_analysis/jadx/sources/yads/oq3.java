package yads;

import defpackage.nl3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class oq3 {
    public static final y50 a = new y50(Collections.EMPTY_LIST);

    public static ds2 a(ys4 ys4Var, JSONObject jSONObject, String str, p36 p36Var, nl3 nl3Var, st3 st3Var, l66 l66Var) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            if (length == 0) {
                List list = Collections.EMPTY_LIST;
                try {
                    if (st3Var.a(list)) {
                        return a;
                    }
                    ys4Var.a().b(gt4.a(jSONObject, str, list));
                    return a;
                } catch (ClassCastException unused) {
                    ys4Var.a().b(gt4.b(jSONObject, str, list));
                    return a;
                }
            }
            ArrayList arrayList = new ArrayList(length);
            et4 et4VarA = null;
            boolean z = false;
            for (int i = 0; i < length; i++) {
                Object objOpt = jSONArrayOptJSONArray.opt(i);
                Object obj = objOpt == JSONObject.NULL ? null : objOpt;
                if (obj != null) {
                    if (as2.a(obj)) {
                        if (et4VarA == null) {
                            et4VarA = ys4Var.a();
                        }
                        et4 et4Var = et4VarA;
                        arrayList.add(new yr2(str + "[" + i + "]", obj.toString(), nl3Var, l66Var, et4Var, p36Var, null));
                        z = true;
                        et4VarA = et4Var;
                    } else {
                        try {
                            Object objInvoke = nl3Var.invoke(obj);
                            if (objInvoke != null) {
                                p36Var.getClass();
                                if (objInvoke instanceof Integer) {
                                    try {
                                        if (l66Var.mo9528a(objInvoke)) {
                                            arrayList.add(objInvoke);
                                        } else {
                                            ys4Var.a().b(gt4.a(jSONArrayOptJSONArray, str, i, objInvoke));
                                        }
                                    } catch (ClassCastException unused2) {
                                        ys4Var.a().b(gt4.b(jSONArrayOptJSONArray, str, i, objInvoke));
                                    }
                                } else {
                                    ys4Var.a().b(gt4.b(jSONArrayOptJSONArray, str, i, obj));
                                }
                            }
                        } catch (ClassCastException unused3) {
                            ys4Var.a().b(gt4.b(jSONArrayOptJSONArray, str, i, obj));
                        } catch (Exception e) {
                            ys4Var.a().b(gt4.a(jSONArrayOptJSONArray, str, i, obj, e));
                        }
                    }
                }
            }
            if (z) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Object obj2 = arrayList.get(i2);
                    if (!(obj2 instanceof as2)) {
                        arrayList.set(i2, obj2 instanceof String ? new zr2((String) obj2, ys4Var.a()) : new xr2(obj2));
                    }
                }
                return new hd4(str, arrayList, st3Var, ys4Var.a());
            }
            try {
                if (st3Var.a(arrayList)) {
                    return new y50(arrayList);
                }
                ys4Var.a().b(gt4.a(jSONObject, str, arrayList));
            } catch (ClassCastException unused4) {
                ys4Var.a().b(gt4.b(jSONObject, str, arrayList));
                return null;
            }
        }
        return null;
    }

    public static as2 b(ys4 ys4Var, JSONObject jSONObject, String str, n36 n36Var) {
        return a(ys4Var, jSONObject, str, n36Var, uq3.b, uq3.a, (as2) null);
    }

    public static as2 a(ys4 ys4Var, JSONObject jSONObject, String str, n36 n36Var) {
        return a(ys4Var, jSONObject, str, n36Var, uq3.b, uq3.a);
    }

    public static as2 a(ys4 ys4Var, JSONObject jSONObject, String str, n36 n36Var, nl3 nl3Var) {
        return a(ys4Var, jSONObject, str, n36Var, nl3Var, uq3.a, (as2) null);
    }

    public static as2 a(ys4 ys4Var, JSONObject jSONObject, String str, n36 n36Var, nl3 nl3Var, l66 l66Var) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt == JSONObject.NULL) {
            objOpt = null;
        }
        Object obj = objOpt;
        if (obj != null) {
            if (as2.a(obj)) {
                return new yr2(str, obj.toString(), nl3Var, l66Var, ys4Var.a(), n36Var, null);
            }
            try {
                Object objInvoke = nl3Var.invoke(obj);
                if (objInvoke != null) {
                    if (n36Var.a(objInvoke)) {
                        try {
                            if (l66Var.mo9528a(objInvoke)) {
                                et4 et4VarA = ys4Var.a();
                                if (objInvoke instanceof String) {
                                    return new zr2((String) objInvoke, et4VarA);
                                }
                                return new xr2(objInvoke);
                            }
                            throw gt4.a(jSONObject, str, obj);
                        } catch (ClassCastException unused) {
                            throw gt4.b(jSONObject, str, obj);
                        }
                    }
                    throw gt4.b(jSONObject, str, obj);
                }
                throw gt4.a(jSONObject, str, obj);
            } catch (ClassCastException unused2) {
                throw gt4.b(jSONObject, str, obj);
            } catch (Exception e) {
                throw gt4.a(jSONObject, str, obj, e);
            }
        }
        throw gt4.a(str, jSONObject);
    }

    public static as2 a(ys4 ys4Var, JSONObject jSONObject, String str, n36 n36Var, nl3 nl3Var, l66 l66Var, as2 as2Var) {
        Object objOpt = jSONObject.opt(str);
        Object obj = objOpt == JSONObject.NULL ? null : objOpt;
        if (obj == null) {
            return null;
        }
        if (as2.a(obj)) {
            return new yr2(str, obj.toString(), nl3Var, l66Var, ys4Var.a(), n36Var, as2Var);
        }
        try {
            Object objInvoke = nl3Var.invoke(obj);
            if (objInvoke == null) {
                ys4Var.a().b(gt4.a(jSONObject, str, obj));
                return null;
            }
            if (!n36Var.a(objInvoke)) {
                ys4Var.a().b(gt4.b(jSONObject, str, obj));
                return null;
            }
            try {
                if (!l66Var.mo9528a(objInvoke)) {
                    ys4Var.a().b(gt4.a(jSONObject, str, obj));
                    return null;
                }
                et4 et4VarA = ys4Var.a();
                if (objInvoke instanceof String) {
                    return new zr2((String) objInvoke, et4VarA);
                }
                return new xr2(objInvoke);
            } catch (ClassCastException unused) {
                ys4Var.a().b(gt4.b(jSONObject, str, obj));
                return null;
            }
        } catch (ClassCastException unused2) {
            ys4Var.a().b(gt4.b(jSONObject, str, obj));
            return null;
        } catch (Exception e) {
            ys4Var.a().b(gt4.a(jSONObject, str, obj, e));
            return null;
        }
    }
}
