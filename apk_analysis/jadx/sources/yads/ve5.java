package yads;

import defpackage.k57;
import defpackage.u96;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ve5 {
    public final q84 a;
    public final ws5 b;
    public final eu5 c;
    public final on2 d;
    public final et e;
    public final lp2 f;
    public final b7 g;
    public final oq5 h;
    public final ej5 i;
    public final mv4 j;

    public ve5(q84 q84Var) {
        ws5 ws5Var = new ws5();
        eu5 eu5Var = new eu5();
        on2 on2Var = new on2();
        et etVar = new et();
        lp2 lp2Var = new lp2();
        b7 b7Var = new b7();
        oq5 oq5Var = new oq5();
        ej5 ej5Var = new ej5();
        mv4 mv4Var = new mv4();
        this.a = q84Var;
        this.b = ws5Var;
        this.c = eu5Var;
        this.d = on2Var;
        this.e = etVar;
        this.f = lp2Var;
        this.g = b7Var;
        this.h = oq5Var;
        this.i = ej5Var;
        this.j = mv4Var;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x006a  */
    public static List a(JSONArray jSONArray) {
        sz4 sz4Var;
        Object next;
        if (jSONArray != null && jSONArray.length() != 0) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            defpackage.ar4 ar4VarE = u96.e();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("ad_unit_id");
                    if (strOptString.length() <= 0) {
                        strOptString = null;
                    }
                    if (strOptString != null) {
                        rz4 rz4Var = sz4.Companion;
                        String strOptString2 = jSONObjectOptJSONObject.optString("format");
                        rz4Var.getClass();
                        if (strOptString2 == null) {
                            sz4Var = null;
                        } else {
                            if (strOptString2.length() <= 0) {
                                strOptString2 = null;
                            }
                            if (strOptString2 != null) {
                                Iterator<E> it = sz4.e.iterator();
                                do {
                                    if (!it.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = it.next();
                                } while (!defpackage.aa4.e(((sz4) next).b, strOptString2));
                                sz4Var = (sz4) next;
                            } else {
                                sz4Var = null;
                            }
                        }
                        if (sz4Var != null && linkedHashSet.add(new defpackage.b36(strOptString, sz4Var))) {
                            ar4VarE.add(new qz4(strOptString, sz4Var));
                        }
                    }
                }
            }
            defpackage.ar4 ar4VarD = u96.d(ar4VarE);
            if (!ar4VarD.isEmpty()) {
                return ar4VarD;
            }
        }
        return null;
    }

    public static Integer a(String str, JSONObject jSONObject) {
        Object aVar;
        if (!jSONObject.has(str)) {
            jSONObject = null;
        }
        if (jSONObject == null) {
            return null;
        }
        try {
            aVar = Integer.valueOf(jSONObject.getInt(str));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        return (Integer) (aVar instanceof k57.a ? null : aVar);
    }
}
