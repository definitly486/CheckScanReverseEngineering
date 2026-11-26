package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class wq3 {
    public static List a(ys4 ys4Var, JSONObject jSONObject, String str, nl3 nl3Var, st3 st3Var, l66 l66Var) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            if (length == 0) {
                List list = Collections.EMPTY_LIST;
                try {
                    if (st3Var.a(list)) {
                        return list;
                    }
                    ys4Var.a().b(gt4.a(jSONObject, str, list));
                    return null;
                } catch (ClassCastException unused) {
                    ys4Var.a().b(gt4.b(jSONObject, str, list));
                    return null;
                }
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                Object objOpt = jSONArrayOptJSONArray.opt(i);
                if (objOpt == JSONObject.NULL) {
                    objOpt = null;
                }
                if (objOpt != null) {
                    try {
                        Object objInvoke = nl3Var.invoke(objOpt);
                        if (objInvoke != null) {
                            try {
                                if (l66Var.mo9528a(objInvoke)) {
                                    arrayList.add(objInvoke);
                                } else {
                                    ys4Var.a().b(gt4.a(jSONArrayOptJSONArray, str, i, objInvoke));
                                }
                            } catch (ClassCastException unused2) {
                                ys4Var.a().b(gt4.b(jSONArrayOptJSONArray, str, i, objInvoke));
                            }
                        }
                    } catch (ClassCastException unused3) {
                        ys4Var.a().b(gt4.b(jSONArrayOptJSONArray, str, i, objOpt));
                    } catch (Exception e) {
                        ys4Var.a().b(gt4.a(jSONArrayOptJSONArray, str, i, objOpt, e));
                    }
                }
            }
            try {
                if (st3Var.a(arrayList)) {
                    return arrayList;
                }
                ys4Var.a().b(gt4.a(jSONObject, str, arrayList));
            } catch (ClassCastException unused4) {
                ys4Var.a().b(gt4.b(jSONObject, str, arrayList));
                return null;
            }
        }
        return null;
    }

    public static List b(ys4 ys4Var, JSONObject jSONObject, String str, defpackage.cl4 cl4Var, st3 st3Var) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            if (length == 0) {
                List list = Collections.EMPTY_LIST;
                try {
                    if (st3Var.a(list)) {
                        return list;
                    }
                    ys4Var.a().b(gt4.a(jSONObject, str, list));
                    return null;
                } catch (ClassCastException unused) {
                    ys4Var.a().b(gt4.b(jSONObject, str, list));
                    return null;
                }
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject == JSONObject.NULL) {
                    jSONObjectOptJSONObject = null;
                }
                if (jSONObjectOptJSONObject != null) {
                    try {
                        Object objA = ((ln0) cl4Var.getValue()).a(ys4Var, jSONObjectOptJSONObject);
                        if (objA != null) {
                            arrayList.add(objA);
                        }
                    } catch (Exception e) {
                        ys4Var.a().b(gt4.a(jSONArrayOptJSONArray, str, i, e));
                    }
                }
            }
            try {
                if (st3Var.a(arrayList)) {
                    return arrayList;
                }
                ys4Var.a().b(gt4.a(jSONObject, str, arrayList));
            } catch (ClassCastException unused2) {
                ys4Var.a().b(gt4.b(jSONObject, str, arrayList));
                return null;
            }
        }
        return null;
    }

    public static Object c(ys4 ys4Var, JSONObject jSONObject, String str, defpackage.cl4 cl4Var) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            return null;
        }
        try {
            return ((ln0) cl4Var.getValue()).a(ys4Var, jSONObjectOptJSONObject);
        } catch (Exception e) {
            ys4Var.a().b(gt4.a(jSONObject, str, e));
            return null;
        }
    }

    public static List d(ys4 ys4Var, JSONObject jSONObject, String str, defpackage.cl4 cl4Var) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int length = jSONArrayOptJSONArray.length();
        if (length == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject == JSONObject.NULL) {
                jSONObjectOptJSONObject = null;
            }
            if (jSONObjectOptJSONObject != null) {
                try {
                    Object objA = ((ln0) cl4Var.getValue()).a(ys4Var, jSONObjectOptJSONObject);
                    if (objA != null) {
                        arrayList.add(objA);
                    }
                } catch (Exception e) {
                    ys4Var.a().b(gt4.a(jSONArrayOptJSONArray, str, i, e));
                }
            }
        }
        return arrayList;
    }

    public static List b(ys4 ys4Var, JSONObject jSONObject, String str, defpackage.cl4 cl4Var) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            if (length == 0) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject == JSONObject.NULL) {
                    jSONObjectOptJSONObject = null;
                }
                if (jSONObjectOptJSONObject != null) {
                    try {
                        Object objA = ((ln0) cl4Var.getValue()).a(ys4Var, jSONObjectOptJSONObject);
                        if (objA != null) {
                            arrayList.add(objA);
                        }
                    } catch (Exception e) {
                        ys4Var.a().b(gt4.a(jSONArrayOptJSONArray, str, i, e));
                    }
                }
            }
            return arrayList;
        }
        throw gt4.a(str, jSONObject);
    }

    public static Object a(ys4 ys4Var, JSONObject jSONObject, String str) {
        return a(ys4Var, jSONObject, str, uq3.b, uq3.a);
    }

    public static Object a(ys4 ys4Var, JSONObject jSONObject, String str, defpackage.cl4 cl4Var) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject != null) {
            try {
                Object objA = ((ln0) cl4Var.getValue()).a(ys4Var, jSONObjectOptJSONObject);
                if (objA != null) {
                    return objA;
                }
                throw gt4.a(jSONObject, str, (Object) null);
            } catch (Exception e) {
                throw gt4.a(jSONObject, str, e);
            }
        }
        throw gt4.a(str, jSONObject);
    }

    public static List a(ys4 ys4Var, JSONObject jSONObject, String str, defpackage.cl4 cl4Var, st3 st3Var) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            if (length == 0) {
                List list = Collections.EMPTY_LIST;
                try {
                    if (!st3Var.a(list)) {
                        ys4Var.a().b(gt4.a(jSONObject, str, list));
                    }
                    return list;
                } catch (ClassCastException unused) {
                    ys4Var.a().b(gt4.b(jSONObject, str, list));
                    return list;
                }
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject == JSONObject.NULL) {
                    jSONObjectOptJSONObject = null;
                }
                if (jSONObjectOptJSONObject != null) {
                    try {
                        Object objA = ((ln0) cl4Var.getValue()).a(ys4Var, jSONObjectOptJSONObject);
                        if (objA != null) {
                            arrayList.add(objA);
                        }
                    } catch (Exception e) {
                        ys4Var.a().b(gt4.a(jSONArrayOptJSONArray, str, i, e));
                    }
                }
            }
            try {
                if (st3Var.a(arrayList)) {
                    return arrayList;
                }
                throw gt4.a(jSONObject, str, arrayList);
            } catch (ClassCastException unused2) {
                throw gt4.b(jSONObject, str, arrayList);
            }
        }
        throw gt4.a(str, jSONObject);
    }

    public static Object a(String str, JSONObject jSONObject) {
        return a(jSONObject, str, uq3.b, uq3.a);
    }

    public static Object a(JSONObject jSONObject, String str, nl3 nl3Var, l66 l66Var) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt == JSONObject.NULL) {
            objOpt = null;
        }
        if (objOpt != null) {
            try {
                Object objInvoke = nl3Var.invoke(objOpt);
                if (objInvoke != null) {
                    try {
                        if (l66Var.mo9528a(objInvoke)) {
                            return objInvoke;
                        }
                        throw gt4.a(jSONObject, str, objInvoke);
                    } catch (ClassCastException unused) {
                        throw gt4.b(jSONObject, str, objInvoke);
                    }
                }
                throw gt4.a(jSONObject, str, objOpt);
            } catch (ClassCastException unused2) {
                throw gt4.b(jSONObject, str, objOpt);
            } catch (Exception e) {
                throw gt4.a(jSONObject, str, objOpt, e);
            }
        }
        throw gt4.a(str, jSONObject);
    }

    public static Object a(ys4 ys4Var, JSONObject jSONObject, String str, nl3 nl3Var, l66 l66Var) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt == JSONObject.NULL) {
            objOpt = null;
        }
        if (objOpt == null) {
            return null;
        }
        try {
            Object objInvoke = nl3Var.invoke(objOpt);
            if (objInvoke == null) {
                ys4Var.a().b(gt4.a(jSONObject, str, objOpt));
                return null;
            }
            try {
                if (l66Var.mo9528a(objInvoke)) {
                    return objInvoke;
                }
                ys4Var.a().b(gt4.a(jSONObject, str, objOpt));
                return null;
            } catch (ClassCastException unused) {
                ys4Var.a().b(gt4.b(jSONObject, str, objOpt));
                return null;
            }
        } catch (ClassCastException unused2) {
            ys4Var.a().b(gt4.b(jSONObject, str, objOpt));
            return null;
        } catch (Exception e) {
            ys4Var.a().b(gt4.a(jSONObject, str, objOpt, e));
            return null;
        }
    }

    public static String a(JSONObject jSONObject) {
        Object objOpt = jSONObject.opt(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        if (objOpt == JSONObject.NULL) {
            objOpt = null;
        }
        if (objOpt != null) {
            try {
                return (String) objOpt;
            } catch (ClassCastException unused) {
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, objOpt);
            } catch (Exception e) {
                throw gt4.a(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, objOpt, e);
            }
        }
        throw gt4.a(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, jSONObject);
    }
}
