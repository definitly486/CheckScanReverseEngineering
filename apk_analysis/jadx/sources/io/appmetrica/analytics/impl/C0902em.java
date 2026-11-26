package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.em, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0902em implements InterfaceC0928fm {
    public static final Map k = Collections.unmodifiableMap(new C0825bm());
    public final Ei b;
    public final C1109mm c;
    public final Handler d;
    public PublicLogger e;
    public HashMap i;
    public final List a = Arrays.asList(StartupParamsCallback.APPMETRICA_UUID, StartupParamsCallback.APPMETRICA_DEVICE_ID, StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH, "appmetrica_get_ad_url", "appmetrica_report_ad_url", "appmetrica_clids");
    public final Object g = new Object();
    public final WeakHashMap h = new WeakHashMap();
    public boolean j = false;
    public final C0851cm f = new C0851cm(this);

    public C0902em(Ei ei, C1109mm c1109mm, Handler handler) {
        this.b = ei;
        this.c = c1109mm;
        this.d = handler;
    }

    public final void a(Bundle bundle, StartupParamsCallback startupParamsCallback) {
        Zl zl;
        if (this.h.containsKey(startupParamsCallback)) {
            List list = (List) this.h.get(startupParamsCallback);
            if (this.c.a((Collection) list)) {
                startupParamsCallback.onReceive(a(list));
            } else {
                StartupParamsCallback.Reason reason = null;
                if (bundle.containsKey("startup_error_key_code")) {
                    int i = bundle.getInt("startup_error_key_code");
                    zl = Zl.UNKNOWN;
                    if (i == 1) {
                        zl = Zl.NETWORK;
                    } else if (i == 2) {
                        zl = Zl.PARSE;
                    }
                } else {
                    zl = null;
                }
                if (zl == null) {
                    if (this.c.a()) {
                        zl = Zl.UNKNOWN;
                    } else {
                        PublicLogger publicLogger = this.e;
                        if (publicLogger != null) {
                            publicLogger.warning("Clids error. Passed clids: %s, and clids from server are empty.", this.i);
                        }
                        reason = new StartupParamsCallback.Reason("INCONSISTENT_CLIDS");
                    }
                }
                if (reason == null) {
                    reason = (StartupParamsCallback.Reason) CollectionUtils.getOrDefault(k, zl, StartupParamsCallback.Reason.UNKNOWN);
                }
                startupParamsCallback.onRequestError(reason, a(list));
            }
            this.h.remove(startupParamsCallback);
            if (this.h.isEmpty()) {
                C1242s0 c1242s0 = this.b.d;
                synchronized (c1242s0.f) {
                    c1242s0.c = false;
                    c1242s0.d();
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0082 A[Catch: all -> 0x007f, TryCatch #0 {all -> 0x007f, blocks: (B:4:0x0063, B:6:0x0071, B:14:0x0096, B:16:0x00c5, B:17:0x00cc, B:19:0x00d2, B:20:0x00d9, B:22:0x00ee, B:25:0x00f9, B:26:0x0105, B:23:0x00f3, B:11:0x0082, B:13:0x008f), top: B:32:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x008f A[Catch: all -> 0x007f, TryCatch #0 {all -> 0x007f, blocks: (B:4:0x0063, B:6:0x0071, B:14:0x0096, B:16:0x00c5, B:17:0x00cc, B:19:0x00d2, B:20:0x00d9, B:22:0x00ee, B:25:0x00f9, B:26:0x0105, B:23:0x00f3, B:11:0x0082, B:13:0x008f), top: B:32:0x0063 }] */
    public final void b(Bundle bundle) {
        String str;
        IdentifiersResult identifiersResultA = C0936g4.a(bundle, "Uuid");
        IdentifiersResult identifiersResultA2 = C0936g4.a(bundle, "DeviceId");
        IdentifiersResult identifiersResultA3 = C0936g4.a(bundle, "DeviceIdHash");
        IdentifiersResult identifiersResultA4 = C0936g4.a(bundle, "AdUrlReport");
        IdentifiersResult identifiersResultA5 = C0936g4.a(bundle, "AdUrlGet");
        IdentifiersResult identifiersResultA6 = C0936g4.a(bundle, "Clids");
        IdentifiersResult identifiersResultA7 = C0936g4.a(bundle, "RequestClids");
        IdentifiersResult identifiersResultA8 = C0936g4.a(bundle, "GAID");
        IdentifiersResult identifiersResultA9 = C0936g4.a(bundle, "HOAID");
        IdentifiersResult identifiersResultA10 = C0936g4.a(bundle, "YANDEX_ADV_ID");
        IdentifiersResult identifiersResultA11 = C0936g4.a(bundle, "CUSTOM_SDK_HOSTS");
        long j = bundle.getLong("ServerTimeOffset");
        long j2 = bundle.getLong("NextStartupTime");
        C0994ia c0994iaA = C0936g4.a(bundle);
        Bundle bundle2 = bundle.getBundle("module_configs");
        C1109mm c1109mm = this.c;
        synchronized (c1109mm) {
            try {
                IdentifiersResult identifiersResult = (IdentifiersResult) c1109mm.b.get(StartupParamsCallback.APPMETRICA_UUID);
                if (identifiersResult != null) {
                    Bo bo = c1109mm.o;
                    String str2 = identifiersResult.id;
                    bo.getClass();
                    if (!Bo.a(str2)) {
                        Bo bo2 = c1109mm.o;
                        str = identifiersResultA.id;
                        bo2.getClass();
                        if (Bo.a(str)) {
                            c1109mm.b.put(StartupParamsCallback.APPMETRICA_UUID, identifiersResultA);
                        }
                    }
                } else {
                    Bo bo3 = c1109mm.o;
                    str = identifiersResultA.id;
                    bo3.getClass();
                    if (Bo.a(str)) {
                        c1109mm.b.put(StartupParamsCallback.APPMETRICA_UUID, identifiersResultA);
                    }
                }
                c1109mm.a(StartupParamsCallback.APPMETRICA_DEVICE_ID, identifiersResultA2);
                c1109mm.a(StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH, identifiersResultA3);
                c1109mm.b.put("appmetrica_google_adv_id", identifiersResultA8);
                c1109mm.b.put("appmetrica_huawei_oaid", identifiersResultA9);
                c1109mm.b.put("appmetrica_yandex_adv_id", identifiersResultA10);
                c1109mm.l.a(identifiersResultA11);
                c1109mm.m.a(c0994iaA);
                if (!C1109mm.a(identifiersResultA5)) {
                    c1109mm.b.put("appmetrica_get_ad_url", identifiersResultA5);
                }
                if (!C1109mm.a(identifiersResultA4)) {
                    c1109mm.b.put("appmetrica_report_ad_url", identifiersResultA4);
                }
                c1109mm.f = j;
                Q3 q3 = c1109mm.k;
                HashMap map = c1109mm.e;
                HashMap mapA = AbstractC1305ub.a(identifiersResultA7.id);
                q3.getClass();
                if (xo.a((Map) map) ? xo.a((Map) mapA) : map.equals(mapA)) {
                    c1109mm.b.put("appmetrica_clids", identifiersResultA6);
                    c1109mm.g = false;
                }
                c1109mm.h = j2;
                c1109mm.c();
            } catch (Throwable th) {
                throw th;
            }
        }
        C1169p4.l().m().a(bundle2, new SdkIdentifiers(identifiersResultA.id, identifiersResultA2.id, identifiersResultA3.id));
        h();
    }

    public final O6 c() {
        return this.f;
    }

    public final String d() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.c.b.get(StartupParamsCallback.APPMETRICA_DEVICE_ID);
        if (identifiersResult == null) {
            return null;
        }
        return identifiersResult.id;
    }

    public final C1045ka e() {
        C0994ia c0994ia;
        C1109mm c1109mm = this.c;
        C0916fa c0916fa = c1109mm.n;
        C0942ga c0942ga = c1109mm.m;
        synchronized (c0942ga) {
            c0994ia = c0942ga.b;
        }
        c0916fa.getClass();
        Boolean bool = c0994ia.a;
        return new C1045ka();
    }

    public final long f() {
        return this.c.f;
    }

    public final String g() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.c.b.get(StartupParamsCallback.APPMETRICA_UUID);
        if (identifiersResult == null) {
            return null;
        }
        return identifiersResult.id;
    }

    public final void h() {
        WeakHashMap weakHashMap = new WeakHashMap();
        for (Map.Entry entry : this.h.entrySet()) {
            List list = (List) entry.getValue();
            if (this.c.a((Collection) list)) {
                weakHashMap.put((StartupParamsCallback) entry.getKey(), list);
            }
        }
        Iterator it = weakHashMap.entrySet().iterator();
        while (it.hasNext()) {
            StartupParamsCallback startupParamsCallback = (StartupParamsCallback) ((Map.Entry) it.next()).getKey();
            if (startupParamsCallback != null) {
                a(new Bundle(), startupParamsCallback);
            }
        }
        weakHashMap.clear();
    }

    public final void i() {
        synchronized (this.g) {
            try {
                if (!this.j || this.c.b()) {
                    this.j = true;
                    a(this.a, this.f, this.i, false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Bundle bundle) {
        b(bundle, null);
    }

    public final void a(PublicLogger publicLogger) {
        this.e = publicLogger;
    }

    public final void a(List list, O6 o6, Map map, boolean z) {
        P6 p6 = new P6(this.d, o6);
        Ei ei = this.b;
        ei.getClass();
        Bundle bundle = new Bundle();
        bundle.putParcelable("io.appmetrica.analytics.impl.IdentifiersData", new C0995ib(p6, list, map, z));
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        PublicLogger anonymousInstance = PublicLogger.getAnonymousInstance();
        Set set = I9.a;
        C0781a4 c0781a4 = new C0781a4("", "", 1536, 0, anonymousInstance);
        c0781a4.m = bundle;
        Q4 q4 = ei.a;
        ei.a(Ei.a(c0781a4, q4), q4, 1, (Map) null);
    }

    public final void a(Map<String, String> map) {
        if (xo.a((Map) map)) {
            return;
        }
        synchronized (this.g) {
            try {
                HashMap mapB = Vm.b(map);
                this.i = mapB;
                this.b.a(mapB);
                C1109mm c1109mm = this.c;
                c1109mm.getClass();
                if (!xo.a((Map) mapB) && !xo.a(mapB, c1109mm.e)) {
                    c1109mm.e = new HashMap(mapB);
                    c1109mm.g = true;
                    c1109mm.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(String str) {
        synchronized (this.g) {
            this.b.a(str);
        }
    }

    public final void a(StartupParamsCallback startupParamsCallback, List<String> list, Map<String, String> map) {
        synchronized (this.g) {
            try {
                C1109mm c1109mm = this.c;
                c1109mm.getClass();
                if (!xo.a((Map) map) && !xo.a(map, c1109mm.e)) {
                    c1109mm.e = new HashMap(map);
                    c1109mm.g = true;
                    c1109mm.c();
                }
                a(startupParamsCallback, list);
                if (this.c.a((List) list)) {
                    a(list, new C0877dm(this, startupParamsCallback), map, true);
                } else {
                    a(new Bundle(), startupParamsCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final StartupParamsCallback.Result a(List list) {
        HashMap map = new HashMap();
        C1109mm c1109mm = this.c;
        synchronized (c1109mm) {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    IdentifiersResult identifiersResult = (IdentifiersResult) c1109mm.b.get(str);
                    if (identifiersResult != null) {
                        map.put(str, c1109mm.c.a(identifiersResult));
                    }
                }
                c1109mm.l.a(list, map);
                c1109mm.m.a(list, map);
            } catch (Throwable th) {
                throw th;
            }
        }
        return new StartupParamsCallback.Result(map);
    }

    public final void a(StartupParamsCallback startupParamsCallback, List list) {
        if (this.h.isEmpty()) {
            C1242s0 c1242s0 = this.b.d;
            synchronized (c1242s0.f) {
                c1242s0.c = true;
                c1242s0.c();
            }
        }
        this.h.put(startupParamsCallback, list);
    }

    public final AdvIdentifiersResult a() {
        C1109mm c1109mm = this.c;
        Q q = c1109mm.j;
        IdentifiersResult identifiersResult = (IdentifiersResult) c1109mm.b.get("appmetrica_google_adv_id");
        IdentifiersResult identifiersResult2 = (IdentifiersResult) c1109mm.b.get("appmetrica_huawei_oaid");
        IdentifiersResult identifiersResult3 = (IdentifiersResult) c1109mm.b.get("appmetrica_yandex_adv_id");
        q.getClass();
        return new AdvIdentifiersResult(Q.a(identifiersResult), Q.a(identifiersResult2), Q.a(identifiersResult3));
    }

    public final void b(Bundle bundle, StartupParamsCallback startupParamsCallback) {
        synchronized (this.g) {
            try {
                b(bundle);
                h();
                if (startupParamsCallback != null) {
                    a(bundle, startupParamsCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(List<String> list) {
        synchronized (this.g) {
            try {
                List list2 = this.c.d;
                if (xo.a((Collection) list)) {
                    if (!xo.a((Collection) list2)) {
                        C1109mm c1109mm = this.c;
                        c1109mm.d = null;
                        c1109mm.i.a((List<String>) null);
                        this.b.a((List) null);
                    }
                } else if (!xo.a(list, list2)) {
                    C1109mm c1109mm2 = this.c;
                    c1109mm2.d = list;
                    c1109mm2.i.a(list);
                    this.b.a(list);
                } else {
                    this.b.a(list2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(String str) {
        synchronized (this.g) {
            this.b.b(str);
        }
    }

    public final Map<String, String> b() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.c.b.get("appmetrica_clids");
        String str = identifiersResult == null ? null : identifiersResult.id;
        if (!TextUtils.isEmpty(str)) {
            return AbstractC1305ub.a(str);
        }
        return this.i;
    }
}
