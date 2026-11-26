package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import defpackage.r07;
import io.appmetrica.analytics.coreapi.internal.system.NetworkType;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.u7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1301u7 {
    public final Context a;
    public final int b;
    public final Go c;
    public final K8 d;
    public final C1061l0 e;
    public final V8 f;
    public final C1376x7 g;
    public final C0783a6 h;

    public C1301u7(Context context, C1108ml c1108ml, int i, Go go, K8 k8, C1061l0 c1061l0, V8 v8, C1376x7 c1376x7) {
        this.a = context;
        this.b = i;
        this.c = go;
        this.d = k8;
        this.e = c1061l0;
        this.f = v8;
        this.g = c1376x7;
        this.h = k8.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String b() {
        r07 r07Var = new r07();
        An anC = Fa.I.C();
        C1275t7 c1275t7 = new C1275t7(r07Var);
        synchronized (anC) {
            anC.b.a(c1275t7);
        }
        return (String) r07Var.b;
    }

    public final C1198q7 a() {
        long jOptLong;
        So so;
        Integer numValueOf = Integer.valueOf(this.h.e);
        String name = this.h.getName();
        String value = this.h.getValue();
        Go go = this.c;
        int i = this.b;
        synchronized (go) {
            try {
                JSONObject jSONObjectA = go.a.a();
                JSONObject jSONObjectOptJSONObject = jSONObjectA.optJSONObject("numbers_of_type");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                }
                jOptLong = jSONObjectOptJSONObject.optLong(String.valueOf(i));
                jSONObjectOptJSONObject.put(String.valueOf(i), 1 + jOptLong);
                go.a.a(jSONObjectA.put("numbers_of_type", jSONObjectOptJSONObject));
            } catch (Throwable th) {
                throw th;
            }
        }
        Long lValueOf = Long.valueOf(jOptLong);
        C1376x7 c1376x7 = this.g;
        c1376x7.getClass();
        Zb zbM = Fa.I.m();
        Location userLocation = zbM.getUserLocation();
        if (userLocation != null) {
            int i2 = So.b;
            Location location = new Location(userLocation);
            String provider = location.getProvider();
            location.setProvider("");
            so = new So(location, provider);
        } else {
            Location systemLocation = zbM.getSystemLocation();
            so = systemLocation != null ? new So(new Location(systemLocation), "") : null;
        }
        boolean z = c1376x7.a.d;
        Double dValueOf = so != null ? Double.valueOf(so.getLatitude()) : null;
        Double dValueOf2 = so != null ? Double.valueOf(so.getLongitude()) : null;
        Long lValueOf2 = so != null ? Long.valueOf(so.getTime()) : null;
        Integer numValueOf2 = so != null ? Integer.valueOf((int) so.getAccuracy()) : null;
        Integer numValueOf3 = so != null ? Integer.valueOf((int) so.getBearing()) : null;
        Integer numValueOf4 = so != null ? Integer.valueOf((int) so.getSpeed()) : null;
        C1326v7 c1326v7 = new C1326v7(Boolean.valueOf(z), dValueOf2, dValueOf, so != null ? Integer.valueOf((int) so.getAltitude()) : null, numValueOf3, numValueOf2, numValueOf4, lValueOf2, so != null ? so.getProvider() : null, so != null ? so.a : null);
        String str = this.h.c;
        C1061l0 c1061l0 = this.e;
        String str2 = c1061l0.a;
        Long lValueOf3 = Long.valueOf(c1061l0.b);
        Integer numValueOf5 = Integer.valueOf(this.h.g);
        Context context = this.a;
        Me me = Qe.a;
        Integer num = (Integer) Qe.c.a((NetworkType) SystemServiceUtils.accessSystemServiceSafelyOrDefault((ConnectivityManager) context.getSystemService("connectivity"), "getting connection type", "ConnectivityManager", NetworkType.UNDEFINED, new Pe()));
        num.intValue();
        String strB = b();
        U8 u8 = this.d.b;
        C0783a6 c0783a6 = this.h;
        return new C1198q7(numValueOf, name, value, lValueOf, c1326v7, str, str2, lValueOf3, numValueOf5, num, strB, u8, c0783a6.h, c0783a6.k, c0783a6.l, c0783a6.n, c0783a6.o, this.f.fromModel(c0783a6.p), this.h.q);
    }

    public /* synthetic */ C1301u7(Context context, C1108ml c1108ml, int i, Go go, K8 k8, C1233rh c1233rh, C1061l0 c1061l0) {
        this(context, c1108ml, i, go, k8, c1061l0, new V8(), new C1376x7(c1233rh));
    }
}
