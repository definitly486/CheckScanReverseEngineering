package io.appmetrica.analytics.impl;

import android.content.Context;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.qn1;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.mm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1109mm {
    public final HashSet a;
    public final HashMap b;
    public final C1031jm c;
    public List d;
    public HashMap e;
    public long f;
    public boolean g;
    public long h;
    public final Cif i;
    public final Q j;
    public final Q3 k;
    public final L6 l;
    public final C0942ga m;
    public final C0916fa n;
    public final Bo o;

    public C1109mm(Cif cif, Q q, Q3 q3, Hd hd, L6 l6, C0942ga c0942ga, C0916fa c0916fa, Bo bo) {
        HashSet hashSet = new HashSet();
        this.a = hashSet;
        this.b = new HashMap();
        this.c = new C1031jm();
        hashSet.add("appmetrica_google_adv_id");
        hashSet.add("appmetrica_huawei_oaid");
        hashSet.add("appmetrica_yandex_adv_id");
        this.i = cif;
        this.j = q;
        this.k = q3;
        this.l = l6;
        this.m = c0942ga;
        this.n = c0916fa;
        this.o = bo;
        a(hd.a(), cif.q());
        a(StartupParamsCallback.APPMETRICA_DEVICE_ID, cif.j());
        a(StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH, cif.i());
        a("appmetrica_get_ad_url", cif.d());
        a("appmetrica_report_ad_url", cif.e());
        b(cif.o());
        a("appmetrica_google_adv_id", cif.l());
        a("appmetrica_huawei_oaid", cif.m());
        a("appmetrica_yandex_adv_id", cif.r());
        l6.a(cif.h());
        c0942ga.a(cif.k());
        this.d = cif.g();
        String strI = cif.i((String) null);
        this.e = strI != null ? Vm.a(strI) : null;
        this.g = cif.a(true);
        this.f = cif.b(0L);
        this.h = cif.n();
        c();
    }

    public final synchronized boolean a(Collection collection) {
        Boolean bool;
        String str;
        try {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                IdentifiersResult identifiersResult = (IdentifiersResult) this.b.get(str2);
                if (identifiersResult == null) {
                    identifiersResult = (IdentifiersResult) this.l.c.get(str2);
                }
                if (identifiersResult == null) {
                    C0994ia c0994ia = this.m.b;
                    if (!aa4.e(str2, "appmetrica_lib_ssl_enabled") || (bool = c0994ia.a) == null) {
                        identifiersResult = null;
                    } else {
                        boolean zBooleanValue = bool.booleanValue();
                        IdentifierStatus identifierStatus = c0994ia.b;
                        String str3 = c0994ia.c;
                        if (zBooleanValue) {
                            str = TJAdUnitConstants.String.TRUE;
                        } else {
                            if (zBooleanValue) {
                                throw new NoWhenBranchMatchedException();
                            }
                            str = TJAdUnitConstants.String.FALSE;
                        }
                        identifiersResult = new IdentifiersResult(str, identifierStatus, str3);
                    }
                }
                if ("appmetrica_clids".equals(str2)) {
                    if (this.g || a(identifiersResult) || (identifiersResult.id.isEmpty() && !xo.a((Map) this.e))) {
                        return false;
                    }
                } else if ("appmetrica_lib_ssl_enabled".equals(str2)) {
                    if (identifiersResult == null) {
                        return false;
                    }
                } else if (identifiersResult == null || StringUtils.isNullOrEmpty(identifiersResult.id)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean b() {
        return a(Arrays.asList("appmetrica_clids", StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH, StartupParamsCallback.APPMETRICA_DEVICE_ID, "appmetrica_get_ad_url", "appmetrica_report_ad_url", StartupParamsCallback.APPMETRICA_UUID));
    }

    public final void c() {
        C0994ia c0994ia;
        Cif cifD = this.i.i((IdentifiersResult) this.b.get(StartupParamsCallback.APPMETRICA_UUID)).e((IdentifiersResult) this.b.get(StartupParamsCallback.APPMETRICA_DEVICE_ID)).d((IdentifiersResult) this.b.get(StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH)).a((IdentifiersResult) this.b.get("appmetrica_get_ad_url")).b((IdentifiersResult) this.b.get("appmetrica_report_ad_url")).e(this.f).h((IdentifiersResult) this.b.get("appmetrica_clids")).j(Vm.a((Map) this.e)).f((IdentifiersResult) this.b.get("appmetrica_google_adv_id")).g((IdentifiersResult) this.b.get("appmetrica_huawei_oaid")).j((IdentifiersResult) this.b.get("appmetrica_yandex_adv_id")).b(this.g).c(this.l.d).d(this.h);
        C0942ga c0942ga = this.m;
        synchronized (c0942ga) {
            c0994ia = c0942ga.b;
        }
        cifD.a(c0994ia);
    }

    public final void b(IdentifiersResult identifiersResult) {
        if (a(identifiersResult)) {
            return;
        }
        this.b.put("appmetrica_clids", identifiersResult);
    }

    public final boolean a() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.b.get("appmetrica_clids");
        if (!a(identifiersResult) && identifiersResult.id.isEmpty()) {
            return xo.a((Map) this.e);
        }
        return true;
    }

    public final void a(IdentifiersResult identifiersResult, IdentifiersResult identifiersResult2) {
        if (identifiersResult != null) {
            Bo bo = this.o;
            String str = identifiersResult.id;
            bo.getClass();
            if (Bo.a(str)) {
                this.b.put(StartupParamsCallback.APPMETRICA_UUID, identifiersResult);
            }
        }
        String str2 = identifiersResult == null ? null : identifiersResult.id;
        String str3 = identifiersResult2.id;
        if (str2 == null || !(str3 == null || str2.equals(str3))) {
            Bj.a.reportError((str2 == null ? "null_uuid" : "wrong_uuid").concat("_on_client"), defpackage.pg.g("The only true uuid: ", str2, "; backup uuid: ", str3));
        }
    }

    public static boolean a(IdentifiersResult identifiersResult) {
        return identifiersResult == null || identifiersResult.id == null;
    }

    public final void a(String str, IdentifiersResult identifiersResult) {
        if (identifiersResult == null || StringUtils.isNullOrEmpty(identifiersResult.id)) {
            return;
        }
        this.b.put(str, identifiersResult);
    }

    public final synchronized boolean a(List list) {
        boolean zA;
        boolean z;
        try {
            zA = a(qn1.X(list, AbstractC1264sm.a));
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (this.a.contains((String) it.next())) {
                    z = true;
                    break;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return !zA || z || ((AbstractC1264sm.b.currentTimeSeconds() > this.h ? 1 : (AbstractC1264sm.b.currentTimeSeconds() == this.h ? 0 : -1)) > 0) || this.g;
    }

    public C1109mm(Context context, Cif cif) {
        this(cif, new Q(), new Q3(), C1169p4.l().a(context), new L6(), new C0942ga(), new C0916fa(), new Bo());
    }
}
