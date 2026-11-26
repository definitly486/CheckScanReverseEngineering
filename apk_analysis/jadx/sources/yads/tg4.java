package yads;

import android.content.Context;
import java.util.Map;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
public final class tg4 implements a85 {
    public final zg4 a;

    public tg4(Context context, q84 q84Var) {
        this.a = new zg4(context, q84Var);
    }

    @Override // yads.a85
    public final Object a(en4 en4Var) {
        zg4 zg4Var = this.a;
        ni6 ni6Var = zg4Var.a;
        ni6Var.a.getClass();
        int i = en4Var.a;
        b95 b95Var = new b95(en4Var.b);
        Map map = en4Var.c;
        Map map2 = defpackage.mx2.b;
        if (map == null) {
            map = map2;
        }
        String strA = ni6Var.b.a(new a95(i, b95Var, map));
        if (strA == null || strA.length() == 0) {
            return null;
        }
        Map map3 = en4Var.c;
        if (map3 != null) {
            map2 = map3;
        }
        try {
            return zg4Var.b.a(strA, new yo(map2));
        } catch (JSONException e) {
            defpackage.sj0.d(e);
            return null;
        } catch (rg4 e2) {
            defpackage.sj0.d(e2);
            return null;
        }
    }
}
