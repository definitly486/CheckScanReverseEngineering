package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ext.SdkExtensions;
import android.text.TextUtils;
import androidx.compose.material3.internal.CalendarModelKt;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.PlaybackException;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import defpackage.mi2;
import defpackage.mvb;
import defpackage.ubc;
import defpackage.xp;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpp extends mvb {
    public static final String[] i = {"firebase_", "google_", "ga_"};
    public static final String[] j = {"_err"};
    public static final /* synthetic */ int zza = 0;
    public SecureRandom c;
    public final AtomicLong d;
    public int e;
    public MeasurementManagerFutures f;
    public Boolean g;
    public Integer h;

    public zzpp(zzic zzicVar) {
        super(zzicVar);
        this.h = null;
        this.d = new AtomicLong(0L);
    }

    public static boolean A(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static byte[] F(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    public static boolean H(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            return (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null || !receiverInfo.enabled) ? false : true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static boolean K(String str) {
        Preconditions.checkNotEmpty(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public static boolean M(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) {
            return true;
        }
        if (TextUtils.isEmpty(stringExtra)) {
            return false;
        }
        try {
            String host = new URL(stringExtra).getHost();
            if (TextUtils.isEmpty(host)) {
                return false;
            }
            return host.matches("^(www\\.)?google(\\.com?)?(\\.[a-z]{2}t?)?$");
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    public static boolean V(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public static void p(ubc ubcVar, String str, int i2, String str2, String str3, int i3) {
        Bundle bundle = new Bundle();
        u(i2, bundle);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i2 == 6 || i2 == 7 || i2 == 2) {
            bundle.putLong("_el", i3);
        }
        ubcVar.zza(str, "_err", bundle);
    }

    public static MessageDigest q() {
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                if (messageDigest != null) {
                    return messageDigest;
                }
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    public static long r(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        int length = bArr.length;
        int i2 = 0;
        Preconditions.checkState(length > 0);
        long j2 = 0;
        for (int i3 = length - 1; i3 >= 0 && i3 >= bArr.length - 8; i3--) {
            j2 += (((long) bArr[i3]) & 255) << i2;
            i2 += 8;
        }
        return j2;
    }

    public static int s() {
        if (Build.VERSION.SDK_INT < 30 || SdkExtensions.getExtensionVersion(30) <= 3) {
            return 0;
        }
        return SdkExtensions.getExtensionVersion(PlaybackException.CUSTOM_ERROR_CODE_BASE);
    }

    public static final boolean u(int i2, Bundle bundle) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i2);
        return true;
    }

    public static boolean x(String str, String[] strArr) {
        Preconditions.checkNotNull(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean y(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(ProxyConfig.MATCH_ALL_SCHEMES) || Arrays.asList(str.split(StringUtils.COMMA)).contains(str2);
    }

    public static boolean zzai(String str) {
        return !j[0].equals(str);
    }

    public static ArrayList zzav(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzah zzahVar = (zzah) it.next();
            Bundle bundle = new Bundle();
            bundle.putString(CommonUrlParts.APP_ID, zzahVar.zza);
            bundle.putString("origin", zzahVar.zzb);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, zzahVar.zzd);
            bundle.putString("name", zzahVar.zzc.zzb);
            zzjh.zza(bundle, Preconditions.checkNotNull(zzahVar.zzc.zza()));
            bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, zzahVar.zze);
            String str = zzahVar.zzf;
            if (str != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str);
            }
            zzbh zzbhVar = zzahVar.zzg;
            if (zzbhVar != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, zzbhVar.zza);
                zzbf zzbfVar = zzbhVar.zzb;
                if (zzbfVar != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, zzbfVar.zzf());
                }
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, zzahVar.zzh);
            zzbh zzbhVar2 = zzahVar.zzi;
            if (zzbhVar2 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, zzbhVar2.zza);
                zzbf zzbfVar2 = zzbhVar2.zzb;
                if (zzbfVar2 != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, zzbfVar2.zzf());
                }
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, zzahVar.zzc.zzc);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, zzahVar.zzj);
            zzbh zzbhVar3 = zzahVar.zzk;
            if (zzbhVar3 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, zzbhVar3.zza);
                zzbf zzbfVar3 = zzbhVar3.zzb;
                if (zzbfVar3 != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, zzbfVar3.zzf());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public static void zzay(zzlu zzluVar, Bundle bundle, boolean z) {
        if (bundle != null && zzluVar != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = zzluVar.zza;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = zzluVar.zzb;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", zzluVar.zzc);
                return;
            }
            z = false;
        }
        if (bundle != null && zzluVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    public final boolean B(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        zzic zzicVar = this.a;
        String strZzA = zzicVar.zzc().zzA();
        zzicVar.zzaV();
        return strZzA.equals(str);
    }

    public final Bundle C(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object objG = g(bundle.get(str), str);
                if (objG == null) {
                    zzic zzicVar = this.a;
                    zzicVar.zzaW().zzh().zzb("Param value can't be null", zzicVar.zzl().b(str));
                } else {
                    o(bundle2, str, objG);
                }
            }
        }
        return bundle2;
    }

    public final zzbh D(String str, Bundle bundle, String str2, long j2, long j3, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (R(str) != 0) {
            zzic zzicVar = this.a;
            zzicVar.zzaW().zzb().zzb("Invalid conditional property event name", zzicVar.zzl().c(str));
            mi2.b();
            return null;
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        Bundle bundleH = h(str, bundle2, CollectionUtils.listOf("_o"), true);
        if (z) {
            bundleH = C(bundleH);
        }
        Preconditions.checkNotNull(bundleH);
        return new zzbh(str, new zzbf(bundleH), str2, j2, j3);
    }

    public final boolean E(Context context, String str) {
        Signature[] signatureArr;
        zzic zzicVar = this.a;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
            if (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            zzicVar.zzaW().zzb().zzb("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            zzicVar.zzaW().zzb().zzb("Error obtaining certificate", e2);
            return true;
        }
    }

    public final void G(Bundle bundle, long j2) {
        long j3 = bundle.getLong("_et");
        if (j3 != 0) {
            this.a.zzaW().zze().zzb("Params already contained engagement", Long.valueOf(j3));
        } else {
            j3 = 0;
        }
        bundle.putLong("_et", j2 + j3);
    }

    public final String I() {
        byte[] bArr = new byte[16];
        J().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    @EnsuresNonNull({"this.secureRandom"})
    public final SecureRandom J() {
        zzg();
        SecureRandom secureRandom = this.c;
        if (secureRandom != null) {
            return secureRandom;
        }
        SecureRandom secureRandom2 = new SecureRandom();
        this.c = secureRandom2;
        return secureRandom2;
    }

    public final Bundle L(Uri uri) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        String queryParameter5;
        String queryParameter6;
        String queryParameter7;
        String queryParameter8;
        String queryParameter9;
        zzic zzicVar = this.a;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    queryParameter = uri.getQueryParameter("utm_campaign");
                    queryParameter2 = uri.getQueryParameter("utm_source");
                    queryParameter3 = uri.getQueryParameter("utm_medium");
                    queryParameter4 = uri.getQueryParameter("gclid");
                    queryParameter5 = uri.getQueryParameter("gbraid");
                    queryParameter6 = uri.getQueryParameter("utm_id");
                    queryParameter7 = uri.getQueryParameter("dclid");
                    queryParameter8 = uri.getQueryParameter("srsltid");
                    queryParameter9 = uri.getQueryParameter("sfmc_id");
                } else {
                    queryParameter = null;
                    queryParameter2 = null;
                    queryParameter3 = null;
                    queryParameter4 = null;
                    queryParameter5 = null;
                    queryParameter6 = null;
                    queryParameter7 = null;
                    queryParameter8 = null;
                    queryParameter9 = null;
                }
                if (!TextUtils.isEmpty(queryParameter) || !TextUtils.isEmpty(queryParameter2) || !TextUtils.isEmpty(queryParameter3) || !TextUtils.isEmpty(queryParameter4) || !TextUtils.isEmpty(queryParameter5) || !TextUtils.isEmpty(queryParameter6) || !TextUtils.isEmpty(queryParameter7) || !TextUtils.isEmpty(queryParameter8) || !TextUtils.isEmpty(queryParameter9)) {
                    Bundle bundle = new Bundle();
                    if (!TextUtils.isEmpty(queryParameter)) {
                        bundle.putString("campaign", queryParameter);
                    }
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        bundle.putString("source", queryParameter2);
                    }
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        bundle.putString("medium", queryParameter3);
                    }
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        bundle.putString("gclid", queryParameter4);
                    }
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        bundle.putString("gbraid", queryParameter5);
                    }
                    String queryParameter10 = uri.getQueryParameter("gad_source");
                    if (!TextUtils.isEmpty(queryParameter10)) {
                        bundle.putString("gad_source", queryParameter10);
                    }
                    String queryParameter11 = uri.getQueryParameter(DynamicLink.GoogleAnalyticsParameters.KEY_UTM_TERM);
                    if (!TextUtils.isEmpty(queryParameter11)) {
                        bundle.putString(FirebaseAnalytics.Param.TERM, queryParameter11);
                    }
                    String queryParameter12 = uri.getQueryParameter(DynamicLink.GoogleAnalyticsParameters.KEY_UTM_CONTENT);
                    if (!TextUtils.isEmpty(queryParameter12)) {
                        bundle.putString(FirebaseAnalytics.Param.CONTENT, queryParameter12);
                    }
                    String queryParameter13 = uri.getQueryParameter(FirebaseAnalytics.Param.ACLID);
                    if (!TextUtils.isEmpty(queryParameter13)) {
                        bundle.putString(FirebaseAnalytics.Param.ACLID, queryParameter13);
                    }
                    String queryParameter14 = uri.getQueryParameter(FirebaseAnalytics.Param.CP1);
                    if (!TextUtils.isEmpty(queryParameter14)) {
                        bundle.putString(FirebaseAnalytics.Param.CP1, queryParameter14);
                    }
                    String queryParameter15 = uri.getQueryParameter("anid");
                    if (!TextUtils.isEmpty(queryParameter15)) {
                        bundle.putString("anid", queryParameter15);
                    }
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        bundle.putString(FirebaseAnalytics.Param.CAMPAIGN_ID, queryParameter6);
                    }
                    if (!TextUtils.isEmpty(queryParameter7)) {
                        bundle.putString("dclid", queryParameter7);
                    }
                    String queryParameter16 = uri.getQueryParameter("utm_source_platform");
                    if (!TextUtils.isEmpty(queryParameter16)) {
                        bundle.putString(FirebaseAnalytics.Param.SOURCE_PLATFORM, queryParameter16);
                    }
                    String queryParameter17 = uri.getQueryParameter("utm_creative_format");
                    if (!TextUtils.isEmpty(queryParameter17)) {
                        bundle.putString(FirebaseAnalytics.Param.CREATIVE_FORMAT, queryParameter17);
                    }
                    String queryParameter18 = uri.getQueryParameter("utm_marketing_tactic");
                    if (!TextUtils.isEmpty(queryParameter18)) {
                        bundle.putString(FirebaseAnalytics.Param.MARKETING_TACTIC, queryParameter18);
                    }
                    if (!TextUtils.isEmpty(queryParameter8)) {
                        bundle.putString("srsltid", queryParameter8);
                    }
                    if (!TextUtils.isEmpty(queryParameter9)) {
                        bundle.putString("sfmc_id", queryParameter9);
                    }
                    for (String str : uri.getQueryParameterNames()) {
                        if (str.startsWith("gad_")) {
                            String queryParameter19 = uri.getQueryParameter(str);
                            if (!TextUtils.isEmpty(queryParameter19)) {
                                bundle.putString(str, queryParameter19);
                            }
                        }
                    }
                    if (zzicVar.zzc().zzp(null, zzfy.zzba)) {
                        String string = new Uri.Builder().scheme(uri.getScheme()).authority(uri.getAuthority()).path(uri.getPath()).build().toString();
                        zzicVar.zzc().getClass();
                        int iMax = Math.max(500, 256);
                        if (string.length() > iMax) {
                            string = zzE(string, iMax - 3, true);
                        }
                        if (!TextUtils.isEmpty(string)) {
                            bundle.putString("deep_link_url", string);
                        }
                    }
                    return bundle;
                }
            } catch (UnsupportedOperationException e) {
                zzicVar.zzaW().zze().zzb("Install referrer url isn't a hierarchical URI", e);
                return null;
            }
        }
        return null;
    }

    public final boolean N(String str, String str2) {
        zzic zzicVar = this.a;
        if (str2 == null) {
            zzicVar.zzaW().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            zzicVar.zzaW().zzd().zzb("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            zzicVar.zzaW().zzd().zzc("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                zzicVar.zzaW().zzd().zzc("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean O(String str, String str2) {
        zzic zzicVar = this.a;
        if (str2 == null) {
            zzicVar.zzaW().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            zzicVar.zzaW().zzd().zzb("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            if (iCodePointAt != 95) {
                zzicVar.zzaW().zzd().zzc("Name must start with a letter or _ (underscore). Type, name", str, str2);
                return false;
            }
            iCodePointAt = 95;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                zzicVar.zzaW().zzd().zzc("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean P(String str, String[] strArr, String[] strArr2, String str2) {
        zzic zzicVar = this.a;
        if (str2 == null) {
            zzicVar.zzaW().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        }
        Preconditions.checkNotNull(str2);
        for (int i2 = 0; i2 < 3; i2++) {
            if (str2.startsWith(i[i2])) {
                zzicVar.zzaW().zzd().zzc("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !x(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && x(str2, strArr2)) {
            return true;
        }
        zzicVar.zzaW().zzd().zzc("Name is reserved. Type, name", str, str2);
        return false;
    }

    public final boolean Q(int i2, String str, String str2) {
        zzic zzicVar = this.a;
        if (str2 == null) {
            zzicVar.zzaW().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i2) {
            return true;
        }
        zzicVar.zzaW().zzd().zzd("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i2), str2);
        return false;
    }

    public final int R(String str) {
        if (!O(NotificationCompat.CATEGORY_EVENT, str)) {
            return 2;
        }
        String[] strArr = zzjm.zza;
        zzic zzicVar = this.a;
        if (!P(NotificationCompat.CATEGORY_EVENT, strArr, zzicVar.zzc().zzp(null, zzfy.zzbf) ? zzjm.zzc : zzjm.zzb, str)) {
            return 13;
        }
        zzicVar.zzc();
        return !Q(40, NotificationCompat.CATEGORY_EVENT, str) ? 2 : 0;
    }

    public final int S(String str) {
        if (!O("user property", str)) {
            return 6;
        }
        if (!P("user property", zzjo.zza, null, str)) {
            return 15;
        }
        this.a.zzc();
        return !Q(24, "user property", str) ? 6 : 0;
    }

    public final int T(String str) {
        if (!N("event param", str)) {
            return 3;
        }
        if (!P("event param", null, null, str)) {
            return 14;
        }
        this.a.zzc();
        return !Q(40, "event param", str) ? 3 : 0;
    }

    public final int U(String str) {
        if (!O("event param", str)) {
            return 3;
        }
        if (!P("event param", null, null, str)) {
            return 14;
        }
        this.a.zzc();
        return !Q(40, "event param", str) ? 3 : 0;
    }

    @Override // defpackage.mvb
    public final boolean a() {
        return true;
    }

    @Override // defpackage.mvb
    public final void b() {
        zzg();
        SecureRandom secureRandom = new SecureRandom();
        long jNextLong = secureRandom.nextLong();
        if (jNextLong == 0) {
            jNextLong = secureRandom.nextLong();
            if (jNextLong == 0) {
                xp.h(this.a, "Utils falling back to Random for random id");
            }
        }
        this.d.set(jNextLong);
    }

    public final boolean d(String str, String str2, int i2, Object obj) {
        if (obj == null || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Boolean) || (obj instanceof Double)) {
            return true;
        }
        if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
            return false;
        }
        String string = obj.toString();
        if (string.codePointCount(0, string.length()) <= i2) {
            return true;
        }
        this.a.zzaW().zzh().zzd("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(string.length()));
        return false;
    }

    public final void e(String str, String str2, Bundle bundle, List list, boolean z) {
        int iT;
        int iF;
        list = list;
        zzic zzicVar = this.a;
        int i2 = true != zzicVar.zzc().a.zzk().zzaj(231100000, true) ? 0 : 35;
        int i3 = 0;
        boolean z2 = false;
        for (String str3 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str3)) {
                iT = !z ? T(str3) : 0;
                if (iT == 0) {
                    iT = U(str3);
                }
            } else {
                iT = 0;
            }
            if (iT != 0) {
                l(bundle, iT, str3, iT == 3 ? str3 : null);
                bundle.remove(str3);
            } else {
                if (V(bundle.get(str3))) {
                    zzicVar.zzaW().zzh().zzd("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str, str2, str3);
                    iF = 22;
                } else {
                    iF = f(str, str3, bundle.get(str3), bundle, list, z, false);
                }
                if (iF != 0 && !"_ev".equals(str3)) {
                    l(bundle, iF, str3, bundle.get(str3));
                    bundle.remove(str3);
                } else if (K(str3) && !x(str3, zzjn.zzd)) {
                    i3++;
                    if (!zzaj(231100000, true)) {
                        zzicVar.zzaW().zzd().zzc("Item array not supported on client's version of Google Play Services (Android Only)", zzicVar.zzl().a(str), zzicVar.zzl().e(bundle));
                        u(23, bundle);
                        bundle.remove(str3);
                    } else if (i3 > i2) {
                        if (!z2) {
                            zzgs zzgsVarZzd = zzicVar.zzaW().zzd();
                            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 55);
                            sb.append("Item can't contain more than ");
                            sb.append(i2);
                            sb.append(" item-scoped custom params");
                            zzgsVarZzd.zzc(sb.toString(), zzicVar.zzl().a(str), zzicVar.zzl().e(bundle));
                        }
                        u(28, bundle);
                        bundle.remove(str3);
                        z2 = true;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009d  */
    public final int f(String str, String str2, Object obj, Bundle bundle, List list, boolean z, boolean z2) {
        int i2;
        int size;
        zzg();
        boolean zV = V(obj);
        zzic zzicVar = this.a;
        int i3 = 0;
        if (!zV) {
            i2 = 0;
        } else {
            if (!z2) {
                return 21;
            }
            if (!x(str2, zzjn.zzc)) {
                return 20;
            }
            zznl zznlVarZzt = zzicVar.zzt();
            zznlVarZzt.zzg();
            zznlVarZzt.a();
            if (zznlVarZzt.c() && zznlVarZzt.a.zzk().zzak() < 200900) {
                return 25;
            }
            zzicVar.zzc();
            boolean z3 = obj instanceof Parcelable[];
            if (z3) {
                size = ((Parcelable[]) obj).length;
            } else if (obj instanceof ArrayList) {
                size = ((ArrayList) obj).size();
            } else {
                i2 = 0;
            }
            if (size > 200) {
                zzicVar.zzaW().zzh().zzd("Parameter array is too long; discarded. Value kind, name, array length", "param", str2, Integer.valueOf(size));
                zzicVar.zzc();
                i2 = 17;
                if (z3) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    if (parcelableArr.length > 200) {
                        bundle.putParcelableArray(str2, (Parcelable[]) Arrays.copyOf(parcelableArr, 200));
                    }
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList = (ArrayList) obj;
                    if (arrayList.size() > 200) {
                        bundle.putParcelableArrayList(str2, new ArrayList<>(arrayList.subList(0, 200)));
                    }
                }
            } else {
                i2 = 0;
            }
        }
        int iMax = 500;
        if (A(str) || A(str2)) {
            zzicVar.zzc().getClass();
            iMax = Math.max(500, 256);
        } else {
            zzicVar.zzc().getClass();
        }
        if (!d("param", str2, iMax, obj)) {
            if (!z2) {
                return 4;
            }
            if (obj instanceof Bundle) {
                e(str, str2, (Bundle) obj, list, z);
                return i2;
            }
            if (obj instanceof Parcelable[]) {
                Parcelable[] parcelableArr2 = (Parcelable[]) obj;
                int length = parcelableArr2.length;
                while (i3 < length) {
                    Parcelable parcelable = parcelableArr2[i3];
                    if (!(parcelable instanceof Bundle)) {
                        zzicVar.zzaW().zzh().zzc("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str2);
                        return 4;
                    }
                    e(str, str2, (Bundle) parcelable, list, z);
                    i3++;
                }
            } else {
                if (!(obj instanceof ArrayList)) {
                    return 4;
                }
                ArrayList arrayList2 = (ArrayList) obj;
                int size2 = arrayList2.size();
                while (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    if (!(obj2 instanceof Bundle)) {
                        zzicVar.zzaW().zzh().zzc("All ArrayList elements must be of type Bundle. Value type, name", obj2 != null ? obj2.getClass() : "null", str2);
                        return 4;
                    }
                    e(str, str2, (Bundle) obj2, list, z);
                    i3++;
                }
            }
        }
        return i2;
    }

    public final Object g(Object obj, String str) {
        boolean zEquals = "_ev".equals(str);
        int iMax = 500;
        zzic zzicVar = this.a;
        if (zEquals) {
            zzicVar.zzc().getClass();
            return v(Math.max(500, 256), obj, true, true);
        }
        if (A(str)) {
            zzicVar.zzc().getClass();
            iMax = Math.max(500, 256);
        } else {
            zzicVar.zzc().getClass();
        }
        return v(iMax, obj, false, true);
    }

    public final Bundle h(String str, Bundle bundle, List list, boolean z) {
        int iT;
        boolean zX = x(str, zzjm.zzg);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        zzic zzicVar = this.a;
        int iZzc = zzicVar.zzc().zzc();
        int i2 = 0;
        boolean z2 = false;
        for (String str2 : new TreeSet(bundle.keySet())) {
            if (list == 0 || !list.contains(str2)) {
                iT = !z ? T(str2) : 0;
                if (iT == 0) {
                    iT = U(str2);
                }
            } else {
                iT = 0;
            }
            if (iT != 0) {
                l(bundle2, iT, str2, iT == 3 ? str2 : null);
                bundle2.remove(str2);
            } else {
                int iF = f(str, str2, bundle.get(str2), bundle2, list, z, zX);
                if (iF == 17) {
                    l(bundle2, 17, str2, Boolean.FALSE);
                } else if (iF != 0 && !"_ev".equals(str2)) {
                    l(bundle2, iF, iF == 21 ? str : str2, bundle.get(str2));
                    bundle2.remove(str2);
                }
                if (K(str2) && (i2 = i2 + 1) > iZzc) {
                    if (!z2) {
                        StringBuilder sb = new StringBuilder(String.valueOf(iZzc).length() + 37);
                        sb.append("Event can't contain more than ");
                        sb.append(iZzc);
                        sb.append(" params");
                        zzicVar.zzaW().zzd().zzc(sb.toString(), zzicVar.zzl().a(str), zzicVar.zzl().e(bundle));
                    }
                    u(5, bundle2);
                    bundle2.remove(str2);
                    z2 = true;
                }
            }
        }
        return bundle2;
    }

    public final void i(zzgv zzgvVar, int i2) {
        Bundle bundle = zzgvVar.zze;
        int i3 = 0;
        boolean z = false;
        for (String str : new TreeSet(bundle.keySet())) {
            if (K(str) && (i3 = i3 + 1) > i2) {
                if (!z) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 37);
                    sb.append("Event can't contain more than ");
                    sb.append(i2);
                    sb.append(" params");
                    String string = sb.toString();
                    zzic zzicVar = this.a;
                    zzicVar.zzaW().zzd().zzc(string, zzicVar.zzl().a(zzgvVar.zza), zzicVar.zzl().e(bundle));
                    u(5, bundle);
                }
                bundle.remove(str);
                z = true;
            }
        }
    }

    public final void j(Parcelable[] parcelableArr, int i2) {
        Preconditions.checkNotNull(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            int i3 = 0;
            boolean z = false;
            for (String str : new TreeSet(bundle.keySet())) {
                if (K(str) && !x(str, zzjn.zzd) && (i3 = i3 + 1) > i2) {
                    if (!z) {
                        zzic zzicVar = this.a;
                        zzgs zzgsVarZzd = zzicVar.zzaW().zzd();
                        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 60);
                        sb.append("Param can't contain more than ");
                        sb.append(i2);
                        sb.append(" item-scoped custom parameters");
                        zzgsVarZzd.zzc(sb.toString(), zzicVar.zzl().b(str), zzicVar.zzl().e(bundle));
                    }
                    u(28, bundle);
                    bundle.remove(str);
                    z = true;
                }
            }
        }
    }

    public final void k(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.a.zzk().o(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void l(Bundle bundle, int i2, String str, Object obj) {
        if (u(i2, bundle)) {
            this.a.zzc();
            bundle.putString("_ev", zzE(str, 40, true));
            if (obj != null) {
                Preconditions.checkNotNull(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    public final int m(Object obj, String str) {
        return "_ldl".equals(str) ? d("user property referrer", str, w(str), obj) : d("user property", str, w(str), obj) ? 0 : 7;
    }

    public final Object n(Object obj, String str) {
        return "_ldl".equals(str) ? v(w(str), obj, true, false) : v(w(str), obj, false, false);
    }

    public final void o(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            String simpleName = obj != null ? obj.getClass().getSimpleName() : null;
            zzic zzicVar = this.a;
            zzicVar.zzaW().zzh().zzc("Not putting event parameter. Invalid value type. name, type", zzicVar.zzl().b(str), simpleName);
        }
    }

    public final long t() {
        long j2;
        boolean zBooleanValue;
        Integer num;
        Object e;
        zzg();
        zzic zzicVar = this.a;
        if (!y((String) zzfy.zzaq.zzb(null), zzicVar.zzv().zzj())) {
            return 0L;
        }
        if (Build.VERSION.SDK_INT < 30) {
            j2 = 4;
        } else if (SdkExtensions.getExtensionVersion(30) < 4) {
            j2 = 8;
        } else {
            int iS = s();
            zzicVar.zzc();
            j2 = iS < ((Integer) zzfy.zzak.zzb(null)).intValue() ? 16L : 0L;
        }
        if (!z("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")) {
            j2 |= 2;
        }
        if (j2 == 0) {
            if (this.g != null) {
                zBooleanValue = this.g.booleanValue();
            } else {
                MeasurementManagerFutures measurementManagerFuturesFrom = this.f;
                if (measurementManagerFuturesFrom == null) {
                    measurementManagerFuturesFrom = MeasurementManagerFutures.from(zzicVar.zzaZ());
                    this.f = measurementManagerFuturesFrom;
                }
                zBooleanValue = false;
                if (measurementManagerFuturesFrom != null) {
                    try {
                        num = measurementManagerFuturesFrom.getMeasurementApiStatusAsync().get(10000L, TimeUnit.MILLISECONDS);
                        if (num != null) {
                            try {
                                if (num.intValue() == 1) {
                                    zBooleanValue = true;
                                }
                            } catch (InterruptedException e2) {
                                e = e2;
                                zzicVar.zzaW().zze().zzb("Measurement manager api exception", e);
                                this.g = Boolean.FALSE;
                            } catch (CancellationException e3) {
                                e = e3;
                                zzicVar.zzaW().zze().zzb("Measurement manager api exception", e);
                                this.g = Boolean.FALSE;
                            } catch (ExecutionException e4) {
                                e = e4;
                                zzicVar.zzaW().zze().zzb("Measurement manager api exception", e);
                                this.g = Boolean.FALSE;
                            } catch (TimeoutException e5) {
                                e = e5;
                                zzicVar.zzaW().zze().zzb("Measurement manager api exception", e);
                                this.g = Boolean.FALSE;
                            }
                        }
                        this.g = Boolean.valueOf(zBooleanValue);
                    } catch (InterruptedException | CancellationException | ExecutionException | TimeoutException e6) {
                        num = null;
                        e = e6;
                    }
                    zzicVar.zzaW().zzk().zzb("Measurement manager api status result", num);
                    zBooleanValue = this.g.booleanValue();
                }
            }
            if (!zBooleanValue) {
                j2 = 64;
            }
        }
        if (j2 == 0) {
            return 1L;
        }
        return j2;
    }

    public final Object v(int i2, Object obj, boolean z, boolean z2) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return zzE(obj.toString(), i2, z);
        }
        if (!z2) {
            return null;
        }
        if (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[])) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle bundleC = C((Bundle) parcelable);
                if (!bundleC.isEmpty()) {
                    arrayList.add(bundleC);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public final int w(String str) {
        boolean zEquals = "_ldl".equals(str);
        zzic zzicVar = this.a;
        if (zEquals) {
            zzicVar.zzc();
            return 2048;
        }
        if ("_id".equals(str)) {
            zzicVar.zzc();
            return 256;
        }
        if ("_lgclid".equals(str)) {
            zzicVar.zzc();
            return 100;
        }
        zzicVar.zzc();
        return 36;
    }

    public final boolean z(String str) {
        zzg();
        zzic zzicVar = this.a;
        if (Wrappers.packageManager(zzicVar.zzaZ()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        zzicVar.zzaW().zzj().zzb("Permission not granted", str);
        return false;
    }

    public final boolean zzC(String str) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        zzic zzicVar = this.a;
        if (zIsEmpty) {
            zzicVar.zzaW().zzd().zza("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
        Preconditions.checkNotNull(str);
        if (str.matches("^1:\\d+:android:[a-f0-9]+$")) {
            return true;
        }
        zzicVar.zzaW().zzd().zzb("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", zzgu.d(str));
        return false;
    }

    public final String zzE(String str, int i2, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i2) {
            return str;
        }
        if (z) {
            return str.substring(0, str.offsetByCodePoints(0, i2)).concat("...");
        }
        return null;
    }

    public final boolean zzaj(int i2, boolean z) {
        Boolean bool = this.a.zzt().e;
        if (zzak() < i2 / 1000) {
            return (bool == null || bool.booleanValue()) ? false : true;
        }
        return true;
    }

    @EnsuresNonNull({"this.apkVersion"})
    public final int zzak() {
        Integer numValueOf = this.h;
        if (numValueOf == null) {
            numValueOf = Integer.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(this.a.zzaZ()) / 1000);
            this.h = numValueOf;
        }
        return numValueOf.intValue();
    }

    public final int zzal(int i2) {
        return GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(this.a.zzaZ(), 12451000);
    }

    public final long zzam(long j2, long j3) {
        return ((j3 * 60000) + j2) / CalendarModelKt.MillisecondsIn24Hours;
    }

    public final void zzao(zzcs zzcsVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzcsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.a.zzaW().zze().zzb("Error returning string value to wrapper", e);
        }
    }

    public final void zzap(zzcs zzcsVar, long j2) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j2);
        try {
            zzcsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.a.zzaW().zze().zzb("Error returning long value to wrapper", e);
        }
    }

    public final void zzaq(zzcs zzcsVar, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i2);
        try {
            zzcsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.a.zzaW().zze().zzb("Error returning int value to wrapper", e);
        }
    }

    public final void zzar(zzcs zzcsVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzcsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.a.zzaW().zze().zzb("Error returning byte array to wrapper", e);
        }
    }

    public final void zzas(zzcs zzcsVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            zzcsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.a.zzaW().zze().zzb("Error returning boolean value to wrapper", e);
        }
    }

    public final void zzat(zzcs zzcsVar, Bundle bundle) {
        try {
            zzcsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.a.zzaW().zze().zzb("Error returning bundle value to wrapper", e);
        }
    }

    public final void zzau(zzcs zzcsVar, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzcsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.a.zzaW().zze().zzb("Error returning bundle list to wrapper", e);
        }
    }

    public final URL zzaw(long j2, String str, String str2, long j3, String str3) {
        zzic zzicVar = this.a;
        try {
            Preconditions.checkNotEmpty(str2);
            Preconditions.checkNotEmpty(str);
            String strConcat = "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=" + ("v161000." + zzak()) + "&rdid=" + str2 + "&bundleid=" + str + "&retry=" + j3;
            if (str.equals(zzicVar.zzc().zzB())) {
                strConcat = strConcat.concat("&ddl_test=1");
            }
            if (!str3.isEmpty()) {
                if (str3.charAt(0) != '&') {
                    strConcat = strConcat.concat("&");
                }
                strConcat = strConcat.concat(str3);
            }
            return new URL(strConcat);
        } catch (IllegalArgumentException e) {
            e = e;
            zzicVar.zzaW().zzb().zzb("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        } catch (MalformedURLException e2) {
            e = e2;
            zzicVar.zzaW().zzb().zzb("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    public final long zzd() {
        long andIncrement;
        long j2;
        AtomicLong atomicLong = this.d;
        if (atomicLong.get() != 0) {
            AtomicLong atomicLong2 = this.d;
            synchronized (atomicLong2) {
                atomicLong2.compareAndSet(-1L, 1L);
                andIncrement = atomicLong2.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (atomicLong) {
            long jNextLong = new Random(System.nanoTime() ^ this.a.zzba().currentTimeMillis()).nextLong();
            int i2 = this.e + 1;
            this.e = i2;
            j2 = jNextLong + ((long) i2);
        }
        return j2;
    }

    public final boolean zzq(String str) {
        return this.a.zzc().zzp(null, zzfy.zzbf) ? x(str, zzjm.zze) : x(str, zzjm.zzd);
    }
}
