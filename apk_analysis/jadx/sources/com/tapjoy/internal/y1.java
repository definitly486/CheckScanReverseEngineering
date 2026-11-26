package com.tapjoy.internal;

import com.tapjoy.TJUser;
import com.tapjoy.TapjoyUtil;
import defpackage.kv2;
import defpackage.kx2;
import defpackage.qn1;
import defpackage.u96;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class y1 {
    public String a;
    public final Integer b;
    public final Integer c;
    public final List d;
    public final w0 e;

    public y1() {
        w0 w0Var = new w0();
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = kx2.b;
        this.e = w0Var;
        TJUser tJUser = TJUser.INSTANCE;
        this.a = tJUser.getUserIdIfNotEmpty();
        this.b = tJUser.getUserLevelIfNeeded();
        this.c = tJUser.getUserSegmentInt();
        this.d = qn1.t0(tJUser.getUserTags());
    }

    public final void a(HashMap map) {
        map.getClass();
        TapjoyUtil.safePut(map, "publisher_user_id", this.a, true);
        TapjoyUtil.safePut(map, "user_segment", TJUser.INSTANCE.getUserSegmentString(), true);
        TapjoyUtil.safePut(map, "user_level", this.b);
        int i = 0;
        for (Object obj : this.d) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            TapjoyUtil.safePut(map, kv2.b(i, "user_tags[", "]"), (String) obj, true);
            i = i2;
        }
        w0 w0Var = this.e;
        w0Var.getClass();
        TapjoyUtil.safePut(map, "uptime", w0Var.a);
        r1 r1Var = w0Var.b;
        r1Var.getClass();
        TapjoyUtil.safePut(map, "purchase_currency", r1Var.a, true);
        TapjoyUtil.safePut(map, "purchase_total_price", r1Var.b);
        TapjoyUtil.safePut(map, "purchase_last_price", r1Var.d);
        TapjoyUtil.safePut(map, "purchase_last_at", r1Var.c);
        TapjoyUtil.safePut(map, "purchase_total_count", r1Var.e);
    }
}
