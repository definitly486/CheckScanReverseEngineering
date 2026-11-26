package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class r81 implements r29 {
    public final ConnectivityManager b;
    public final Context c;
    public final hm1 e;
    public final hm1 f;
    public final DataEncoder a = new JsonDataEncoderBuilder().configureWith(rx.a).ignoreNullValues(true).build();
    public final URL d = c(kx0.c);

    public static final class a {
        public final URL a;
        public final ny b;
        public final String c;

        public a(URL url, ny nyVar, String str) {
            this.a = url;
            this.b = nyVar;
            this.c = str;
        }
    }

    public static final class b {
        public final int a;
        public final URL b;
        public final long c;

        public b(int i, URL url, long j) {
            this.a = i;
            this.b = url;
            this.c = j;
        }
    }

    public r81(Context context, hm1 hm1Var, hm1 hm1Var2) {
        this.c = context;
        this.b = (ConnectivityManager) context.getSystemService("connectivity");
        this.e = hm1Var2;
        this.f = hm1Var;
    }

    public static URL c(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            cc.e(bj.c("Invalid url: ", str), e);
            return null;
        }
    }

    @Override // defpackage.r29
    public final sy a(sy syVar) {
        int subtype;
        NetworkInfo activeNetworkInfo = this.b.getActiveNetworkInfo();
        sy.a aVarM = syVar.m();
        int i = Build.VERSION.SDK_INT;
        HashMap map = aVarM.f;
        if (map == null) {
            ah.f("Property \"autoMetadata\" has not been set");
            return null;
        }
        map.put("sdk-version", String.valueOf(i));
        aVarM.a(CommonUrlParts.MODEL, Build.MODEL);
        aVarM.a("hardware", Build.HARDWARE);
        aVarM.a("device", Build.DEVICE);
        aVarM.a("product", Build.PRODUCT);
        aVarM.a("os-uild", Build.ID);
        aVarM.a(CommonUrlParts.MANUFACTURER, Build.MANUFACTURER);
        aVarM.a("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        long offset = TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
        HashMap map2 = aVarM.f;
        if (map2 == null) {
            ah.f("Property \"autoMetadata\" has not been set");
            return null;
        }
        map2.put("tz-offset", String.valueOf(offset));
        int iD = activeNetworkInfo == null ? hm5.b.NONE.d() : activeNetworkInfo.getType();
        HashMap map3 = aVarM.f;
        if (map3 == null) {
            ah.f("Property \"autoMetadata\" has not been set");
            return null;
        }
        map3.put("net-type", String.valueOf(iD));
        int i2 = -1;
        if (activeNetworkInfo == null) {
            subtype = hm5.a.UNKNOWN_MOBILE_SUBTYPE.d();
        } else {
            subtype = activeNetworkInfo.getSubtype();
            if (subtype == -1) {
                subtype = hm5.a.COMBINED.d();
            } else if (hm5.a.a(subtype) == null) {
                subtype = 0;
            }
        }
        HashMap map4 = aVarM.f;
        if (map4 == null) {
            ah.f("Property \"autoMetadata\" has not been set");
            return null;
        }
        map4.put("mobile-subtype", String.valueOf(subtype));
        aVarM.a("country", Locale.getDefault().getCountry());
        aVarM.a(CommonUrlParts.LOCALE, Locale.getDefault().getLanguage());
        Context context = this.c;
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (simOperator == null) {
            simOperator = "";
        }
        aVarM.a("mcc_mnc", simOperator);
        try {
            i2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            hv4.b("CctTransportBackend", "Unable to find version code for package", e);
        }
        aVarM.a("application_build", Integer.toString(i2));
        return aVarM.b();
    }

    @Override // defpackage.r29
    public final my b(ly lyVar) {
        String str;
        b bVarA;
        String str2;
        Integer numValueOf;
        yy.a aVar;
        HashMap map = new HashMap();
        for (z03 z03Var : lyVar.a) {
            String strK = z03Var.k();
            if (map.containsKey(strK)) {
                ((List) map.get(strK)).add(z03Var);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(z03Var);
                map.put(strK, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            z03 z03Var2 = (z03) ((List) entry.getValue()).get(0);
            vu6 vu6Var = vu6.DEFAULT;
            long time = this.f.getTime();
            long time2 = this.e.getTime();
            oy oyVar = new oy(wl1.a.ANDROID_FIREBASE, new ky(Integer.valueOf(z03Var2.h("sdk-version")), z03Var2.a(CommonUrlParts.MODEL), z03Var2.a("hardware"), z03Var2.a("device"), z03Var2.a("product"), z03Var2.a("os-uild"), z03Var2.a(CommonUrlParts.MANUFACTURER), z03Var2.a("fingerprint"), z03Var2.a(CommonUrlParts.LOCALE), z03Var2.a("country"), z03Var2.a("mcc_mnc"), z03Var2.a("application_build")));
            try {
                numValueOf = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
                str2 = null;
            } catch (NumberFormatException unused) {
                str2 = (String) entry.getKey();
                numValueOf = null;
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = ((List) entry.getValue()).iterator();
            while (it2.hasNext()) {
                z03 z03Var3 = (z03) it2.next();
                sx2 sx2VarD = z03Var3.d();
                iy2 iy2Var = sx2VarD.a;
                byte[] bArr = sx2VarD.b;
                Iterator it3 = it;
                Iterator it4 = it2;
                if (iy2Var.equals(new iy2("proto"))) {
                    aVar = new yy.a();
                    aVar.e = bArr;
                } else {
                    if (iy2Var.equals(new iy2("json"))) {
                        String str3 = new String(bArr, Charset.forName("UTF-8"));
                        yy.a aVar2 = new yy.a();
                        aVar2.f = str3;
                        aVar = aVar2;
                    } else {
                        String strConcat = "TRuntime.".concat("CctTransportBackend");
                        if (Log.isLoggable(strConcat, 5)) {
                            Log.w(strConcat, "Received event of unsupported encoding " + iy2Var + ". Skipping...");
                        }
                    }
                    it = it3;
                    it2 = it4;
                }
                aVar.a = Long.valueOf(z03Var3.e());
                aVar.d = Long.valueOf(z03Var3.l());
                String str4 = z03Var3.b().get("tz-offset");
                aVar.g = Long.valueOf(str4 == null ? 0L : Long.valueOf(str4).longValue());
                aVar.h = new bz(hm5.b.a(z03Var3.h("net-type")), hm5.a.a(z03Var3.h("mobile-subtype")));
                if (z03Var3.c() != null) {
                    aVar.b = z03Var3.c();
                }
                if (z03Var3.i() != null) {
                    aVar.c = new py(new wy(new vy(z03Var3.i())), gr1.a.EVENT_OVERRIDE);
                }
                if (z03Var3.f() != null || z03Var3.g() != null) {
                    aVar.i = new uy(z03Var3.f() != null ? z03Var3.f() : null, z03Var3.g() != null ? z03Var3.g() : null);
                }
                String strConcat2 = aVar.a == null ? " eventTimeMs" : "";
                if (aVar.d == null) {
                    strConcat2 = strConcat2.concat(" eventUptimeMs");
                }
                if (aVar.g == null) {
                    strConcat2 = strConcat2.concat(" timezoneOffsetSeconds");
                }
                if (!strConcat2.isEmpty()) {
                    ah.f("Missing required properties:".concat(strConcat2));
                    return null;
                }
                arrayList3.add(new yy(aVar.a.longValue(), aVar.b, aVar.c, aVar.d.longValue(), aVar.e, aVar.f, aVar.g.longValue(), aVar.h, aVar.i));
                it = it3;
                it2 = it4;
            }
            arrayList2.add(new zy(time, time2, oyVar, numValueOf, str2, arrayList3, vu6Var));
        }
        ny nyVar = new ny(arrayList2);
        byte[] bArr2 = lyVar.b;
        URL urlC = this.d;
        if (bArr2 != null) {
            try {
                kx0 kx0VarA = kx0.a(bArr2);
                str = kx0VarA.b;
                if (str == null) {
                    str = null;
                }
                String str5 = kx0VarA.a;
                if (str5 != null) {
                    urlC = c(str5);
                }
            } catch (IllegalArgumentException unused2) {
                return new my(f00.a.FATAL_ERROR, -1L);
            }
        } else {
            str = null;
        }
        try {
            a aVar3 = new a(urlC, nyVar, str);
            if1 if1Var = new if1(this, 2);
            int i = 5;
            do {
                bVarA = if1Var.a(aVar3);
                URL url = bVarA.b;
                if (url != null) {
                    hv4.a(url, "CctTransportBackend", "Following redirect to: %s");
                    aVar3 = new a(url, aVar3.b, aVar3.c);
                } else {
                    aVar3 = null;
                }
                if (aVar3 == null) {
                    break;
                }
                i--;
            } while (i >= 1);
            int i2 = bVarA.a;
            if (i2 == 200) {
                return new my(f00.a.OK, bVarA.c);
            }
            if (i2 < 500 && i2 != 404) {
                return i2 == 400 ? new my(f00.a.INVALID_PAYLOAD, -1L) : new my(f00.a.FATAL_ERROR, -1L);
            }
            return new my(f00.a.TRANSIENT_ERROR, -1L);
        } catch (IOException e) {
            hv4.b("CctTransportBackend", "Could not make request to the backend", e);
            return new my(f00.a.TRANSIENT_ERROR, -1L);
        }
    }
}
