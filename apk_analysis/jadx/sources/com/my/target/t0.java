package com.my.target;

import android.os.Build;
import defpackage.at9;
import defpackage.du0;
import defpackage.du9;
import defpackage.w4a;
import defpackage.y14;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class t0 {
    public final HashMap a;
    public final HashMap b;
    public final long c;
    public final int d;
    public boolean e;

    public static final class a {
        public final int a;
        public boolean b = false;

        public a(int i) {
            this.a = i;
        }
    }

    public t0(int i, String str, int i2) {
        HashMap map = new HashMap();
        this.a = map;
        this.b = new HashMap();
        this.d = i2;
        this.c = System.currentTimeMillis();
        map.put("slot", Integer.valueOf(i));
        map.put("network", str);
    }

    public final void a(int i, long j) {
        this.b.put(Integer.valueOf(i), Long.valueOf(j));
    }

    public final void b() {
        if (!this.e) {
            y14.r(null, "MetricMessage: Metrics sending disabled");
            return;
        }
        if (this.b.isEmpty()) {
            y14.r(null, "MetricMessage: Metrics not send: empty");
            return;
        }
        du9 du9Var = at9.l.b.p;
        if (du9Var == null) {
            y14.r(null, "MetricMessage: Metrics not send: basic info not collected");
            return;
        }
        String str = du9Var.a;
        HashMap map = this.a;
        map.put("instanceId", str);
        map.put("os", "Android");
        map.put("osver", Build.VERSION.RELEASE);
        map.put("app", du9Var.b);
        map.put("appver", du9Var.c);
        map.put("sdkver", "5.52.5");
        w4a.d.execute(new du0(this, 2));
    }
}
