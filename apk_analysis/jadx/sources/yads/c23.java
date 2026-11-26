package yads;

import android.content.Context;
import android.location.Location;

/* JADX INFO: loaded from: classes6.dex */
public final class c23 implements lv3 {
    public final qv3 a;
    public final Object b = new Object();

    public c23(Context context, String str) {
        this.a = new qv3(context, str);
    }

    @Override // yads.lv3
    public final Location a() {
        Location location;
        synchronized (this.b) {
            try {
                qv3 qv3Var = this.a;
                pv3 pv3VarA = qv3Var.c;
                if (pv3VarA == null) {
                    pv3VarA = qv3Var.a();
                }
                location = null;
                if (pv3VarA != null) {
                    Object objA = f55.a(pv3VarA.a, "isComplete", new Object[0]);
                    Boolean bool = objA instanceof Boolean ? (Boolean) objA : null;
                    if (bool != null ? bool.booleanValue() : false) {
                        Object objA2 = f55.a(pv3VarA.a, "getResult", new Object[0]);
                        location = objA2 instanceof Location ? (Location) objA2 : null;
                        qv3 qv3Var2 = this.a;
                        qv3Var2.c = qv3Var2.a();
                        qv3Var2.c = qv3Var2.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return location;
    }
}
