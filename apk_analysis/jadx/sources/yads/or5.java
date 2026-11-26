package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.fh8;
import defpackage.u96;
import defpackage.ws6;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class or5 {
    public final defpackage.cl4 a;

    public or5(ws6 ws6Var) {
        this.a = new fh8(new defpackage.hc5(ws6Var, 5));
    }

    public final boolean a(kr5 kr5Var, long j, ao2 ao2Var) throws JSONException {
        Object string;
        ir5 ir5Var;
        String strC = defpackage.bj.c("stored_value_", kr5Var.a());
        boolean z = kr5Var instanceof gr5;
        if (z ? true : kr5Var instanceof fr5 ? true : kr5Var instanceof br5 ? true : kr5Var instanceof ar5 ? true : kr5Var instanceof dr5 ? true : kr5Var instanceof er5) {
            string = kr5Var.b();
        } else {
            if (!(kr5Var instanceof jr5 ? true : kr5Var instanceof cr5)) {
                defpackage.me0.e();
                return false;
            }
            string = kr5Var.b().toString();
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("expiration_time", (j * 1000) + System.currentTimeMillis());
        hr5 hr5Var = ir5.c;
        if (z) {
            ir5Var = ir5.STRING;
        } else if (kr5Var instanceof fr5) {
            ir5Var = ir5.INTEGER;
        } else if (kr5Var instanceof br5) {
            ir5Var = ir5.BOOLEAN;
        } else if (kr5Var instanceof er5) {
            ir5Var = ir5.NUMBER;
        } else if (kr5Var instanceof cr5) {
            ir5Var = ir5.COLOR;
        } else if (kr5Var instanceof jr5) {
            ir5Var = ir5.URL;
        } else if (kr5Var instanceof ar5) {
            ir5Var = ir5.ARRAY;
        } else {
            if (!(kr5Var instanceof dr5)) {
                defpackage.me0.e();
                return false;
            }
            ir5Var = ir5.DICT;
        }
        hr5Var.getClass();
        jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, ir5Var.b);
        jSONObject.put("value", string);
        o45 o45VarA = ((n45) this.a.getValue()).a(new l45(u96.h(i45.a(strC, jSONObject))));
        Iterator it = o45VarA.a().iterator();
        while (it.hasNext()) {
            ao2Var.b.add((m45) it.next());
            ao2Var.a();
        }
        return o45VarA.a().isEmpty();
    }

    public final kr5 a(String str, ao2 ao2Var) throws IOException {
        JSONObject jSONObjectC;
        String strC = defpackage.bj.c("stored_value_", str);
        o45 o45VarA = ((n45) this.a.getValue()).a(u96.h(strC));
        if (ao2Var != null) {
            Iterator it = o45VarA.a().iterator();
            while (it.hasNext()) {
                ao2Var.b.add((m45) it.next());
                ao2Var.a();
            }
        }
        k45 k45Var = (k45) defpackage.qn1.V(o45VarA.b());
        if (k45Var != null && (jSONObjectC = k45Var.c()) != null) {
            if (jSONObjectC.has("expiration_time")) {
                if (System.currentTimeMillis() >= jSONObjectC.getLong("expiration_time")) {
                    ((n45) this.a.getValue()).a(new defpackage.ad(strC, 2));
                    return null;
                }
            }
            try {
                String string = jSONObjectC.getString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                ir5.c.getClass();
                ir5 ir5VarA = hr5.a(string);
                if (ir5VarA == null) {
                    a(ao2Var, str, string);
                    return null;
                }
                return a(jSONObjectC, ir5VarA, str);
            } catch (JSONException e) {
                a(ao2Var, str, e);
            }
        }
        return null;
    }

    public static final boolean a(String str, k45 k45Var) {
        return defpackage.aa4.e(k45Var.a(), str);
    }

    public static final n45 a(ws6 ws6Var) {
        return ((dp3) ws6Var.get()).a;
    }

    public static void a(ao2 ao2Var, String str, String str2) {
        lr5 lr5Var = new lr5(defpackage.n2.d("Stored value '", str, "' declaration failed because of unknown type '", str2, "'"), null, 2);
        if (ao2Var != null) {
            ao2Var.a((RuntimeException) lr5Var);
        }
    }

    public static void a(ao2 ao2Var, String str, JSONException jSONException) {
        lr5 lr5Var = new lr5(defpackage.pg.g("Stored value '", str, "' declaration failed: ", jSONException.getMessage()), jSONException);
        if (ao2Var != null) {
            ao2Var.a((RuntimeException) lr5Var);
        }
    }

    public static kr5 a(JSONObject jSONObject, ir5 ir5Var, String str) {
        switch (ir5Var) {
            case STRING:
                return new gr5(str, jSONObject.getString("value"));
            case INTEGER:
                return new fr5(str, jSONObject.getLong("value"));
            case BOOLEAN:
                return new br5(str, jSONObject.getBoolean("value"));
            case NUMBER:
                return new er5(str, jSONObject.getDouble("value"));
            case COLOR:
                return new cr5(str, k20.a(jSONObject.getString("value")));
            case URL:
                return new jr5(str, p46.a(jSONObject.getString("value")));
            case ARRAY:
                return new ar5(str, jSONObject.getJSONArray("value"));
            case DICT:
                return new dr5(str, jSONObject.getJSONObject("value"));
            default:
                defpackage.me0.e();
                return null;
        }
    }
}
