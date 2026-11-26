package yads;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qa3 {
    public static final void a(Context context, HashMap map) {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        if (fe5VarA == null || !fe5VarA.B) {
            return;
        }
        oa3 oa3Var = oa3.AD_HEADER_WIDTH;
        map.put("encrypted-request", "1");
    }
}
