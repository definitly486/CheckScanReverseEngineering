package yads;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class a26 {
    public static final a26 g = new a26();
    public static final Handler h = new Handler(Looper.getMainLooper());
    public static Handler i = null;
    public static final y16 j = new y16();
    public static final z16 k = new z16();
    public long f;
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public final ap6 d = new ap6();
    public final ip6 c = new ip6();
    public final lp6 e = new lp6(new sp6());

    public final void a(View view, yp6 yp6Var, JSONObject jSONObject, boolean z) {
        char c;
        Object obj;
        boolean z2;
        if (mq6.a(view) == null) {
            ap6 ap6Var = this.d;
            if (ap6Var.d.contains(view)) {
                c = 1;
            } else {
                c = ap6Var.j ? (char) 2 : (char) 3;
            }
            if (c == 3) {
                return;
            }
            JSONObject jSONObjectA = yp6Var.a(view);
            rp6.a(jSONObject, jSONObjectA);
            ap6 ap6Var2 = this.d;
            if (ap6Var2.a.size() == 0) {
                obj = null;
            } else {
                Object obj2 = (String) ap6Var2.a.get(view);
                if (obj2 != null) {
                    ap6Var2.a.remove(view);
                }
                obj = obj2;
            }
            boolean z3 = false;
            if (obj != null) {
                try {
                    jSONObjectA.put("adSessionId", obj);
                } catch (JSONException e) {
                    Log.e("OMIDLIB", "Error with setting ad session id", e);
                }
                ap6 ap6Var3 = this.d;
                if (ap6Var3.i.containsKey(view)) {
                    ap6Var3.i.put(view, Boolean.TRUE);
                } else {
                    z3 = true;
                }
                try {
                    jSONObjectA.put("hasWindowFocus", Boolean.valueOf(z3));
                } catch (JSONException e2) {
                    Log.e("OMIDLIB", "Error with setting has window focus", e2);
                }
                boolean zContains = this.d.h.contains(obj);
                Object objValueOf = Boolean.valueOf(zContains);
                if (zContains) {
                    try {
                        jSONObjectA.put("isPipActive", objValueOf);
                    } catch (JSONException e3) {
                        Log.e("OMIDLIB", "Error with setting is picture-in-picture active", e3);
                    }
                }
                this.d.j = true;
                return;
            }
            ap6 ap6Var4 = this.d;
            vo6 vo6Var = (vo6) ap6Var4.b.get(view);
            if (vo6Var != null) {
                ap6Var4.b.remove(view);
            }
            if (vo6Var != null) {
                cq6 cq6Var = vo6Var.a;
                JSONArray jSONArray = new JSONArray();
                Iterator it = vo6Var.b.iterator();
                while (it.hasNext()) {
                    jSONArray.put((String) it.next());
                }
                try {
                    jSONObjectA.put("isFriendlyObstructionFor", jSONArray);
                    jSONObjectA.put("friendlyObstructionClass", cq6Var.b);
                    jSONObjectA.put("friendlyObstructionPurpose", cq6Var.c);
                    jSONObjectA.put("friendlyObstructionReason", cq6Var.d);
                } catch (JSONException e4) {
                    Log.e("OMIDLIB", "Error with setting friendly obstruction", e4);
                }
                z2 = true;
            } else {
                z2 = false;
            }
            yp6Var.a(view, jSONObjectA, this, c == 1, z || z2);
        }
    }
}
