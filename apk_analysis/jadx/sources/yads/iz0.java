package yads;

import android.net.Uri;
import defpackage.nl3;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
import yads.iz0;
import yads.u66;

/* JADX INFO: loaded from: classes6.dex */
public final class iz0 implements yy0 {
    public static final u66 a(iz0 iz0Var, Object obj, vq0 vq0Var, String str, u66 u66Var) {
        String lowerCase = "array";
        if (u66Var instanceof m66) {
            boolean z = obj instanceof JSONArray;
            JSONArray jSONArray = (JSONArray) (z ? obj : null);
            if (jSONArray == null) {
                if (obj instanceof Integer ? true : obj instanceof Double) {
                    lowerCase = "number";
                } else if (obj instanceof JSONObject) {
                    lowerCase = "dict";
                } else if (!z) {
                    lowerCase = obj.getClass().getSimpleName().toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                }
                o01.a(vq0Var, new IllegalArgumentException(defpackage.pg.g("Trying to set value with invalid type (", lowerCase, ") to variable ", str)));
            }
            if (jSONArray != null) {
                ((m66) u66Var).a(jSONArray);
                return u66Var;
            }
        } else if (u66Var instanceof n66) {
            Boolean bool = (Boolean) (obj instanceof Boolean ? obj : null);
            if (bool == null) {
                if (obj instanceof Integer ? true : obj instanceof Double) {
                    lowerCase = "number";
                } else if (obj instanceof JSONObject) {
                    lowerCase = "dict";
                } else if (!(obj instanceof JSONArray)) {
                    lowerCase = obj.getClass().getSimpleName().toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                }
                o01.a(vq0Var, new IllegalArgumentException(defpackage.pg.g("Trying to set value with invalid type (", lowerCase, ") to variable ", str)));
            }
            if (bool != null) {
                ((n66) u66Var).a(bool.booleanValue());
                return u66Var;
            }
        } else if (u66Var instanceof o66) {
            boolean z2 = obj instanceof Integer;
            Integer num = (Integer) (z2 ? obj : null);
            if (num == null) {
                if (z2 ? true : obj instanceof Double) {
                    lowerCase = "number";
                } else if (obj instanceof JSONObject) {
                    lowerCase = "dict";
                } else if (!(obj instanceof JSONArray)) {
                    lowerCase = obj.getClass().getSimpleName().toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                }
                o01.a(vq0Var, new IllegalArgumentException(defpackage.pg.g("Trying to set value with invalid type (", lowerCase, ") to variable ", str)));
            }
            if (num != null) {
                ((o66) u66Var).a(l20.b(num.intValue()));
                return u66Var;
            }
        } else if (u66Var instanceof p66) {
            boolean z3 = obj instanceof JSONObject;
            JSONObject jSONObject = (JSONObject) (z3 ? obj : null);
            if (jSONObject == null) {
                if (obj instanceof Integer ? true : obj instanceof Double) {
                    lowerCase = "number";
                } else if (z3) {
                    lowerCase = "dict";
                } else if (!(obj instanceof JSONArray)) {
                    lowerCase = obj.getClass().getSimpleName().toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                }
                o01.a(vq0Var, new IllegalArgumentException(defpackage.pg.g("Trying to set value with invalid type (", lowerCase, ") to variable ", str)));
            }
            if (jSONObject != null) {
                ((p66) u66Var).a(jSONObject);
                return u66Var;
            }
        } else if (u66Var instanceof q66) {
            boolean z4 = obj instanceof Double;
            Double d = (Double) (z4 ? obj : null);
            if (d == null) {
                if (obj instanceof Integer ? true : z4) {
                    lowerCase = "number";
                } else if (obj instanceof JSONObject) {
                    lowerCase = "dict";
                } else if (!(obj instanceof JSONArray)) {
                    lowerCase = obj.getClass().getSimpleName().toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                }
                o01.a(vq0Var, new IllegalArgumentException(defpackage.pg.g("Trying to set value with invalid type (", lowerCase, ") to variable ", str)));
            }
            if (d != null) {
                ((q66) u66Var).a(d.doubleValue());
                return u66Var;
            }
        } else if (u66Var instanceof r66) {
            Long l = (Long) (obj instanceof Long ? obj : null);
            if (l == null) {
                if (obj instanceof Integer ? true : obj instanceof Double) {
                    lowerCase = "number";
                } else if (obj instanceof JSONObject) {
                    lowerCase = "dict";
                } else if (!(obj instanceof JSONArray)) {
                    lowerCase = obj.getClass().getSimpleName().toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                }
                o01.a(vq0Var, new IllegalArgumentException(defpackage.pg.g("Trying to set value with invalid type (", lowerCase, ") to variable ", str)));
            }
            if (l != null) {
                ((r66) u66Var).a(l.longValue());
                return u66Var;
            }
        } else if (u66Var instanceof s66) {
            String str2 = (String) (obj instanceof String ? obj : null);
            if (str2 == null) {
                if (obj instanceof Integer ? true : obj instanceof Double) {
                    lowerCase = "number";
                } else if (obj instanceof JSONObject) {
                    lowerCase = "dict";
                } else if (!(obj instanceof JSONArray)) {
                    lowerCase = obj.getClass().getSimpleName().toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                }
                o01.a(vq0Var, new IllegalArgumentException(defpackage.pg.g("Trying to set value with invalid type (", lowerCase, ") to variable ", str)));
            }
            if (str2 != null) {
                u66Var.c(str2);
                return u66Var;
            }
        } else if (u66Var instanceof t66) {
            Uri uri = (Uri) (obj instanceof Uri ? obj : null);
            if (uri == null) {
                if (obj instanceof Integer ? true : obj instanceof Double) {
                    lowerCase = "number";
                } else if (obj instanceof JSONObject) {
                    lowerCase = "dict";
                } else if (!(obj instanceof JSONArray)) {
                    lowerCase = obj.getClass().getSimpleName().toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                }
                o01.a(vq0Var, new IllegalArgumentException(defpackage.pg.g("Trying to set value with invalid type (", lowerCase, ") to variable ", str)));
            }
            if (uri != null) {
                ((t66) u66Var).a(uri);
            }
        }
        return u66Var;
    }

    public final void a(ly0 ly0Var, final vq0 vq0Var, fs2 fs2Var) {
        final String str = (String) ly0Var.a.b.a(fs2Var);
        final Object objC = o01.c(ly0Var.a.a, fs2Var);
        l76.a(vq0Var, str, fs2Var, new nl3() { // from class: jz9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return iz0.a(this.b, objC, vq0Var, str, (u66) obj);
            }
        });
    }

    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        if (!(ry0Var instanceof ly0)) {
            return false;
        }
        a((ly0) ry0Var, vq0Var, fs2Var);
        return true;
    }
}
