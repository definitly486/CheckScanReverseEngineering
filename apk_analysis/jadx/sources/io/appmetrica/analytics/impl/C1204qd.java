package io.appmetrica.analytics.impl;

import androidx.compose.material3.internal.CalendarModelKt;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.kx6;
import defpackage.me0;
import defpackage.qn1;
import defpackage.x74;
import defpackage.y74;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.qd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1204qd implements InterfaceC0978hk {
    public final Nl a;
    public final String b;
    public final SystemTimeProvider c;
    public final List d;
    public final String e;
    public final long f;

    public C1204qd(Nl nl, String str, SystemTimeProvider systemTimeProvider, List<C1126nd> list) {
        this.a = nl;
        this.b = str;
        this.c = systemTimeProvider;
        this.d = list;
        this.e = str.toUpperCase(Locale.ROOT) + "_STATUS";
        this.f = CalendarModelKt.MillisecondsIn24Hours;
    }

    public final C0952gk a() {
        Fd fd;
        C1126nd c1126nd;
        if (!this.d.isEmpty()) {
            List listN0 = qn1.n0(this.d, new C1178pd());
            String strA = ((Kd) this.a).a(this.e, (String) null);
            if (strA != null) {
                try {
                    JSONObject jSONObject = new JSONObject(strA);
                    JSONArray jSONArray = jSONObject.getJSONArray("modulesStatus");
                    y74 y74VarN = kx6.n(0, jSONArray.length());
                    ArrayList arrayList = new ArrayList(kn1.q(y74VarN, 10));
                    x74 it = y74VarN.iterator();
                    while (it.d) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(it.nextInt());
                        try {
                            c1126nd = new C1126nd(jSONObject2.getString("moduleName"), jSONObject2.getBoolean("loaded"));
                        } catch (Throwable unused) {
                            c1126nd = new C1126nd("", false);
                        }
                        arrayList.add(c1126nd);
                    }
                    fd = new Fd(arrayList, jSONObject.getLong("lastSendTime"));
                } catch (Throwable unused2) {
                    fd = new Fd(kx2.b, 0L);
                }
            } else {
                fd = null;
            }
            long jCurrentTimeMillis = this.c.currentTimeMillis();
            if (fd == null || jCurrentTimeMillis - fd.b > this.f || !listN0.equals(fd.a)) {
                Fd fd2 = new Fd(listN0, jCurrentTimeMillis);
                Nl nl = this.a;
                Kd kd = (Kd) nl;
                kd.d(kd.g(this.e), fd2.a());
                return new C0952gk(me0.d(new StringBuilder(), this.b, "_status"), fd2.a());
            }
        }
        return null;
    }

    public /* synthetic */ C1204qd(Nl nl, String str, SystemTimeProvider systemTimeProvider, List list, int i, jh2 jh2Var) {
        this(nl, str, (i & 4) != 0 ? new SystemTimeProvider() : systemTimeProvider, list);
    }
}
