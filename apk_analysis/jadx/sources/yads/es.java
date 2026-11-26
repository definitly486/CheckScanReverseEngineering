package yads;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class es extends r75 {
    public static final int v = 10000;
    public final Context s;
    public final ds t;
    public final w75 u;

    public es(Context context, int i, String str, ds dsVar, w75 w75Var) {
        super(i, str, dsVar);
        this.s = context;
        this.t = dsVar;
        this.u = w75Var;
        this.j = false;
        this.o = new am0(v, 1.0f, 0);
    }

    public final void a(Map map) {
        xi5 xi5Var;
        String strB = v83.b(map, oa3.AD_SERVER_SIDE_CLIENT_IP);
        if (strB != null) {
            Context context = this.s;
            xi5 xi5Var2 = wi5.b;
            if (xi5Var2 == null) {
                synchronized (wi5.a) {
                    xi5Var = wi5.b;
                    if (xi5Var == null) {
                        xi5Var = new xi5(bv3.a(context, "YadPreferenceFile"));
                        wi5.b = xi5Var;
                    }
                }
                xi5Var2 = xi5Var;
            }
            ((av3) xi5Var2.a).a("ServerSideClientIP", strB);
        }
    }

    @Override // yads.r75
    public final void a(Object obj) {
        this.t.a(obj);
    }

    @Override // yads.r75
    public hi6 a(hi6 hi6Var) {
        return hi6Var;
    }
}
