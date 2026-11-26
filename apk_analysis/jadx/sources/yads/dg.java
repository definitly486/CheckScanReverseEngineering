package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class dg {
    public static final dg a = new dg();
    public static volatile vg b;

    public static final vg a(Context context) {
        vg vgVar;
        vg vgVar2 = b;
        if (vgVar2 != null) {
            return vgVar2;
        }
        synchronized (a) {
            Context contextA = w60.a(context);
            vgVar = b;
            if (vgVar == null) {
                vgVar = new vg(contextA);
                b = vgVar;
            }
        }
        return vgVar;
    }
}
