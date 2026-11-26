package yads;

import java.util.Map;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
public final class fn4 {
    public final w45 a;
    public final y45 b;

    public fn4() {
        w45 w45Var = new w45();
        y45 y45VarA = y45.b.a();
        this.a = w45Var;
        this.b = y45VarA;
    }

    public final en4 a(r75 r75Var) {
        String str;
        y45 y45Var = this.b;
        y45Var.getClass();
        synchronized (y45.c) {
            str = (String) y45Var.a.get(r75Var);
            y45Var.a.remove(r75Var);
        }
        if (str == null) {
            return null;
        }
        try {
            this.a.getClass();
            u45 u45VarA = w45.a(str);
            byte[] bytes = u45VarA.b.getBytes(defpackage.ha1.b);
            bytes.getClass();
            return new en4(200, bytes, (Map) u45VarA.a, false);
        } catch (JSONException unused) {
            return null;
        }
    }
}
