package io.appmetrica.analytics.impl;

import android.content.Context;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.q4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1195q4 {
    public final C1120n7 a;
    public Gb b;
    public Hb c;
    public C1151oc d;

    public C1195q4(File file) {
        this.a = new C1120n7(file);
    }

    public final synchronized Va a(Context context) {
        Hb hb;
        hb = this.c;
        if (hb == null) {
            hb = new Hb(c(context));
            this.c = hb;
        }
        return hb;
    }

    public final synchronized Va b(Context context) {
        return c(context);
    }

    public final Va c(Context context) {
        C1151oc c1151oc;
        Gb gb = this.b;
        if (gb != null) {
            return gb;
        }
        synchronized (this) {
            c1151oc = this.d;
            if (c1151oc == null) {
                C1120n7 c1120n7 = this.a;
                String strA = new C1094m7(c1120n7.a, c1120n7.b, true).a(context, new C0807b4());
                Z6 z6 = H5.c;
                z6.getClass();
                HashMap map = new HashMap();
                map.put("preferences", E5.a);
                C1291tn c1291tn = z6.c;
                C1016j7 c1016j7 = z6.a;
                C0913f7 c0913f7 = c1016j7.c;
                C0939g7 c0939g7 = c1016j7.d;
                Ka ka = new Ka(false);
                ka.a(112, new C0833c4());
                C1367wn c1367wn = new C1367wn("service database", map);
                c1291tn.getClass();
                c1151oc = new C1151oc(context, strA, new C1097ma(strA), new C1317un(c0913f7, c0939g7, ka, c1367wn));
                this.d = c1151oc;
            }
        }
        Gb gb2 = new Gb("preferences", c1151oc, C1169p4.l().c.b());
        this.b = gb2;
        return gb2;
    }
}
