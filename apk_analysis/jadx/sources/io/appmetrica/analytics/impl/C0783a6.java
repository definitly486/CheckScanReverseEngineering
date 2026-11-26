package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Pair;
import defpackage.ad2;
import defpackage.me0;
import io.appmetrica.analytics.coreapi.internal.event.CounterReportApi;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionState;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.a6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public class C0783a6 implements CounterReportApi, Parcelable {
    public static final Parcelable.Creator<C0783a6> CREATOR = new Z5();
    protected String a;
    protected String b;
    public String c;
    public int d;
    public int e;
    public Pair f;
    public int g;
    public String h;
    public long i;
    public long j;
    public EnumC1252sa k;
    public EnumC1403y9 l;
    public Bundle m;
    public Boolean n;
    public Integer o;
    public Map p;
    public Integer q;

    public C0783a6(String str, String str2, int i) {
        this.k = EnumC1252sa.UNKNOWN;
        this.p = new HashMap();
        SystemTimeProvider systemTimeProvider = new SystemTimeProvider();
        this.a = str2;
        this.d = i;
        this.b = str;
        this.i = systemTimeProvider.elapsedRealtime();
        this.j = systemTimeProvider.currentTimeMillis();
    }

    public static C0783a6 a(C0783a6 c0783a6, Collection<PermissionState> collection, M2 m2, C1218r2 c1218r2, List<String> list) {
        String string;
        String str;
        C0783a6 c0783a6D = d(c0783a6);
        try {
            JSONArray jSONArray = new JSONArray();
            for (PermissionState permissionState : collection) {
                jSONArray.put(new JSONObject().put("name", permissionState.name).put("granted", permissionState.granted));
            }
            JSONObject jSONObject = new JSONObject();
            if (m2 != null) {
                jSONObject.put("background_restricted", m2.b);
                L2 l2 = m2.a;
                c1218r2.getClass();
                if (l2 != null) {
                    int iOrdinal = l2.ordinal();
                    if (iOrdinal == 0) {
                        str = "EXEMPTED";
                    } else if (iOrdinal == 1) {
                        str = "ACTIVE";
                    } else if (iOrdinal == 2) {
                        str = "WORKING_SET";
                    } else if (iOrdinal == 3) {
                        str = "FREQUENT";
                    } else if (iOrdinal == 4) {
                        str = "RARE";
                    } else if (iOrdinal == 5) {
                        str = "RESTRICTED";
                    }
                    jSONObject.put("app_standby_bucket", str);
                }
                str = null;
                jSONObject.put("app_standby_bucket", str);
            }
            string = new JSONObject().put("permissions", jSONArray).put("background_restrictions", jSONObject).put("available_providers", new JSONArray((Collection) list)).toString();
        } catch (Throwable unused) {
            string = "";
        }
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0783a6D.d = 12288;
        c0783a6D.setValue(string);
        return c0783a6D;
    }

    public static C0783a6 b(Bundle bundle) {
        if (bundle != null) {
            try {
                C0783a6 c0783a6 = (C0783a6) bundle.getParcelable("CounterReport.Object");
                if (c0783a6 != null) {
                    return c0783a6;
                }
            } catch (Throwable unused) {
                return new C0783a6("", 0);
            }
        }
        return new C0783a6("", 0);
    }

    public static C0783a6 c(C0783a6 c0783a6) {
        return a(c0783a6, EnumC1176pb.EVENT_TYPE_INIT);
    }

    public static C0783a6 d(C0783a6 c0783a6) {
        C0783a6 c0783a7 = new C0783a6("", 0);
        c0783a7.j = c0783a6.j;
        c0783a7.i = c0783a6.i;
        c0783a7.f = c0783a6.f;
        c0783a7.c = c0783a6.c;
        c0783a7.m = c0783a6.m;
        c0783a7.p = c0783a6.p;
        c0783a7.q = c0783a6.q;
        c0783a7.h = c0783a6.h;
        return c0783a7;
    }

    public static C0783a6 e(C0783a6 c0783a6) {
        return a(c0783a6, EnumC1176pb.EVENT_TYPE_APP_UPDATE);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String f() {
        return this.c;
    }

    public final EnumC1252sa g() {
        return this.k;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final int getBytesTruncated() {
        return this.g;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final int getCustomType() {
        return this.e;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final Map<String, byte[]> getExtras() {
        return this.p;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final String getName() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final int getType() {
        return this.d;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final String getValue() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final byte[] getValueBytes() {
        String str = this.b;
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final Integer getValueProtocolVersion() {
        return this.q;
    }

    public final Integer h() {
        return this.o;
    }

    public final Bundle i() {
        return this.m;
    }

    public final String j() {
        return this.h;
    }

    public final EnumC1403y9 k() {
        return this.l;
    }

    public final boolean l() {
        return this.a == null;
    }

    public final boolean m() {
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        return -1 == this.d;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setBytesTruncated(int i) {
        this.g = i;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setCustomType(int i) {
        this.e = i;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setExtras(Map<String, byte[]> map) {
        this.p = map;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public void setName(String str) {
        this.a = str;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setType(int i) {
        this.d = i;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public void setValue(String str) {
        this.b = str;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public void setValueBytes(byte[] bArr) {
        this.b = bArr == null ? null : new String(Base64.encode(bArr, 0));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setValueProtocolVersion(Integer num) {
        this.q = num;
    }

    public final String toString() {
        Locale locale = Locale.US;
        String str = this.a;
        String str2 = EnumC1176pb.a(this.d).b;
        String strSubstring = this.b;
        if (strSubstring == null) {
            strSubstring = null;
        } else if (strSubstring.length() > 500) {
            strSubstring = strSubstring.substring(0, 500);
        }
        return me0.d(ad2.d("[event: ", str, ", type: ", str2, ", value: "), strSubstring, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("CounterReport.Event", this.a);
        bundle.putString("CounterReport.Value", this.b);
        bundle.putInt("CounterReport.Type", this.d);
        bundle.putInt("CounterReport.CustomType", this.e);
        bundle.putInt("CounterReport.TRUNCATED", this.g);
        bundle.putString("CounterReport.ProfileID", this.h);
        bundle.putInt("CounterReport.UniquenessStatus", this.k.a);
        Bundle bundle2 = this.m;
        if (bundle2 != null) {
            bundle.putParcelable("CounterReport.Payload", bundle2);
        }
        String str = this.c;
        if (str != null) {
            bundle.putString("CounterReport.Environment", str);
        }
        Pair pair = this.f;
        if (pair != null) {
            bundle.putString("CounterReport.AppEnvironmentDiffKey", (String) pair.first);
            bundle.putString("CounterReport.AppEnvironmentDiffValue", (String) pair.second);
        }
        bundle.putLong("CounterReport.CreationElapsedRealtime", this.i);
        bundle.putLong("CounterReport.CreationTimestamp", this.j);
        EnumC1403y9 enumC1403y9 = this.l;
        if (enumC1403y9 != null) {
            bundle.putInt("CounterReport.Source", enumC1403y9.a);
        }
        Boolean bool = this.n;
        if (bool != null) {
            bundle.putBoolean("CounterReport.AttributionIdChanged", bool.booleanValue());
        }
        Integer num = this.o;
        if (num != null) {
            bundle.putInt("CounterReport.OpenId", num.intValue());
        }
        bundle.putBundle("CounterReport.Extras", CollectionUtils.mapToBundle(this.p));
        Integer num2 = this.q;
        if (num2 != null) {
            bundle.putInt("CounterReport.ValueProtocolVersion", num2.intValue());
        }
        parcel.writeBundle(bundle);
    }

    public void c(String str) {
        this.h = str;
    }

    public final long e() {
        return this.j;
    }

    public final Boolean c() {
        return this.n;
    }

    public final void c(Bundle bundle) {
        this.m = bundle;
    }

    public final void b(String str) {
        this.c = str;
    }

    public final void b(long j) {
        this.j = j;
    }

    public final Pair<String, String> b() {
        return this.f;
    }

    public static C0783a6 b(C0783a6 c0783a6) {
        return a(c0783a6, EnumC1176pb.EVENT_TYPE_FIRST_ACTIVATION);
    }

    public C0783a6(String str, int i) {
        this("", str, i);
    }

    public C0783a6() {
        this("", 0);
    }

    public C0783a6(String str, String str2, int i, long j) {
        this(str, str2, i);
        b(j);
    }

    public final Bundle d(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putParcelable("CounterReport.Object", this);
        return bundle;
    }

    public final long d() {
        return this.i;
    }

    public final void a(long j) {
        this.i = j;
    }

    public final void a(EnumC1252sa enumC1252sa) {
        this.k = enumC1252sa;
    }

    public final void a(EnumC1403y9 enumC1403y9) {
        this.l = enumC1403y9;
    }

    public final void a(Boolean bool) {
        this.n = bool;
    }

    public final void a(Integer num) {
        this.o = num;
    }

    public static Pair a(Bundle bundle) {
        if (bundle.containsKey("CounterReport.AppEnvironmentDiffKey") && bundle.containsKey("CounterReport.AppEnvironmentDiffValue")) {
            return new Pair(bundle.getString("CounterReport.AppEnvironmentDiffKey"), bundle.getString("CounterReport.AppEnvironmentDiffValue"));
        }
        return null;
    }

    public static C0783a6 a(C0783a6 c0783a6, EnumC1176pb enumC1176pb) {
        C0783a6 c0783a6D = d(c0783a6);
        c0783a6D.d = enumC1176pb.a;
        return c0783a6D;
    }

    public static C0783a6 a(C0783a6 c0783a6) {
        return a(c0783a6, EnumC1176pb.EVENT_TYPE_ALIVE);
    }

    public static C0783a6 a(C0783a6 c0783a6, Z9 z9) {
        C0783a6 c0783a6A = a(c0783a6, EnumC1176pb.EVENT_TYPE_START);
        c0783a6A.setValueBytes(MessageNano.toByteArray(new B9().fromModel(new A9((String) z9.b.a()))));
        c0783a6A.j = c0783a6.j;
        c0783a6A.i = c0783a6.i;
        return c0783a6A;
    }

    public final void a(String str, String str2) {
        if (this.f == null) {
            this.f = new Pair(str, str2);
        }
    }

    public static C0783a6 a(C0783a6 c0783a6, String str) {
        C0783a6 c0783a6D = d(c0783a6);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0783a6D.d = 12289;
        c0783a6D.setValue(str);
        return c0783a6D;
    }

    public static C0783a6 a() {
        C0783a6 c0783a6 = new C0783a6("", 0);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0783a6.d = 16384;
        return c0783a6;
    }

    public static C0783a6 a(String str) {
        C0783a6 c0783a6 = new C0783a6("", 0);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0783a6.d = 12320;
        c0783a6.b = str;
        c0783a6.l = EnumC1403y9.JS;
        return c0783a6;
    }
}
