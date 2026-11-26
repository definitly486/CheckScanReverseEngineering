package yads;

import android.content.Context;
import android.net.Uri;
import defpackage.fh8;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class al4 {
    public final Context a;
    public final defpackage.cl4 b = new fh8(new defpackage.iz0(this, 3));
    public final ConcurrentHashMap c = new ConcurrentHashMap();

    public al4(Context context) {
        this.a = context.getApplicationContext();
    }

    public final void a(String str, vc6 vc6Var, String str2) {
        qk2 qk2Var = (qk2) this.b.getValue();
        if (qk2Var == null) {
            vc6Var.b();
            a();
            return;
        }
        Uri uri = Uri.parse(str);
        le3 le3Var = oe3.c;
        tk2 tk2Var = new tk2(str2, uri, null, k55.f, null, null, null);
        this.c.put(str2, vc6Var);
        qk2Var.b.add(new vj6(str2, vc6Var));
        qk2Var.c++;
        qk2Var.a.obtainMessage(6, 0, 0, tk2Var).sendToTarget();
        if (qk2Var.d) {
            qk2Var.d = false;
            qk2Var.c++;
            qk2Var.a.obtainMessage(1, 0, 0).sendToTarget();
            boolean zA = qk2Var.a();
            Iterator it = qk2Var.b.iterator();
            while (it.hasNext()) {
                ((ok2) it.next()).getClass();
            }
            if (zA) {
                Iterator it2 = qk2Var.b.iterator();
                while (it2.hasNext()) {
                    ((ok2) it2.next()).getClass();
                }
            }
        }
    }

    public static final qk2 a(al4 al4Var) {
        return ed6.b(al4Var.a);
    }

    public final void a() {
        Iterator it = this.c.entrySet().iterator();
        while (it.hasNext()) {
            String str = (String) ((Map.Entry) it.next()).getKey();
            qk2 qk2Var = (qk2) this.b.getValue();
            if (qk2Var != null) {
                qk2Var.c++;
                qk2Var.a.obtainMessage(7, str).sendToTarget();
            }
        }
        this.c.clear();
    }
}
