package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.app.BroadcastOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzjx;
import com.google.android.gms.internal.measurement.zzlw;
import com.tapjoy.TJVerifierKt;
import defpackage.a1c;
import defpackage.ah;
import defpackage.hnb;
import defpackage.hqb;
import defpackage.ima;
import defpackage.jvb;
import defpackage.lx2;
import defpackage.me0;
import defpackage.mvb;
import defpackage.pvb;
import defpackage.qhb;
import defpackage.s2c;
import defpackage.tta;
import defpackage.vp3;
import java.net.URL;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.dataflow.qual.Pure;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class zzic implements pvb {
    public static volatile zzic F;
    public int A;
    public int B;
    public final long D;
    public final long E;
    public final Context a;
    public final boolean b;
    public final zzae c;
    public final zzal d;
    public final hnb e;
    public final zzgu f;
    public final zzhz g;
    public final zzoc h;
    public final zzpp i;
    public final zzgn j;
    public final Clock k;
    public final zzmb l;
    public final zzlj m;
    public final zzd n;
    public final zzlo o;
    public final String p;
    public zzgl q;
    public zznl r;
    public zzbb s;
    public zzgi t;
    public zzlq u;
    public Boolean w;
    public long x;
    public volatile Boolean y;
    public volatile boolean z;
    public boolean v = false;
    public final AtomicInteger C = new AtomicInteger(0);

    public zzic(zzjs zzjsVar) {
        Preconditions.checkNotNull(zzjsVar);
        Context context = zzjsVar.a;
        zzae zzaeVar = new zzae();
        this.c = zzaeVar;
        vp3.b = zzaeVar;
        this.a = context;
        this.b = zzjsVar.e;
        this.y = zzjsVar.b;
        this.p = zzjsVar.h;
        this.z = true;
        zzlw.zza(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.k = defaultClock;
        zzjx.zza(context).zza("com.google.android.gms.measurement#".concat(String.valueOf(context.getPackageName())), 0, new String[0], null);
        com.google.android.gms.internal.measurement.zzlk.zza(context);
        Long l = zzjsVar.f;
        this.D = l != null ? l.longValue() : defaultClock.currentTimeMillis();
        Long l2 = zzjsVar.g;
        this.E = l2 != null ? l2.longValue() : defaultClock.elapsedRealtime();
        zzal zzalVar = new zzal(this);
        zzalVar.d = tta.a;
        this.d = zzalVar;
        hnb hnbVar = new hnb(this);
        hnbVar.zzx();
        this.e = hnbVar;
        zzgu zzguVar = new zzgu(this);
        zzguVar.zzx();
        this.f = zzguVar;
        zzpp zzppVar = new zzpp(this);
        zzppVar.zzx();
        this.i = zzppVar;
        this.j = new zzgn(new lx2(this, zzjsVar));
        this.n = new zzd(this);
        zzmb zzmbVar = new zzmb(this);
        zzmbVar.zzc();
        this.l = zzmbVar;
        zzlj zzljVar = new zzlj(this);
        zzljVar.zzc();
        this.m = zzljVar;
        zzoc zzocVar = new zzoc(this);
        zzocVar.zzc();
        this.h = zzocVar;
        zzlo zzloVar = new zzlo(this);
        zzloVar.zzx();
        this.o = zzloVar;
        zzhz zzhzVar = new zzhz(this);
        zzhzVar.zzx();
        this.g = zzhzVar;
        zzdb zzdbVar = zzjsVar.d;
        boolean z = zzdbVar == null || zzdbVar.zzb == 0;
        if (context.getApplicationContext() instanceof Application) {
            d(zzljVar);
            if (zzljVar.a.a.getApplicationContext() instanceof Application) {
                Application application = (Application) zzljVar.a.a.getApplicationContext();
                a1c a1cVar = zzljVar.c;
                if (a1cVar == null) {
                    a1cVar = new a1c(zzljVar);
                    zzljVar.c = a1cVar;
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(a1cVar);
                    application.registerActivityLifecycleCallbacks(zzljVar.c);
                    zzgu zzguVar2 = zzljVar.a.f;
                    e(zzguVar2);
                    zzguVar2.zzk().zza("Registered activity lifecycle callback");
                }
            }
        } else {
            e(zzguVar);
            zzguVar.zze().zza("Application context is not an Application");
        }
        zzhzVar.zzj(new hqb(this, zzjsVar));
    }

    public static final void c(jvb jvbVar) {
        if (jvbVar != null) {
            return;
        }
        ah.f("Component not created");
    }

    public static final void d(qhb qhbVar) {
        if (qhbVar == null) {
            ah.f("Component not created");
        } else {
            if (qhbVar.b) {
                return;
            }
            ah.f("Component not initialized: ".concat(String.valueOf(qhbVar.getClass())));
        }
    }

    public static final void e(mvb mvbVar) {
        if (mvbVar == null) {
            ah.f("Component not created");
        } else {
            if (mvbVar.b) {
                return;
            }
            ah.f("Component not initialized: ".concat(String.valueOf(mvbVar.getClass())));
        }
    }

    public static zzic zzy(Context context, zzdb zzdbVar, Long l, Long l2) {
        Bundle bundle;
        if (zzdbVar != null) {
            Bundle bundle2 = zzdbVar.zzd;
            zzdbVar = new zzdb(zzdbVar.zza, zzdbVar.zzb, zzdbVar.zzc, bundle2, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (F == null) {
            synchronized (zzic.class) {
                try {
                    if (F == null) {
                        F = new zzic(new zzjs(context, zzdbVar, l, l2));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (zzdbVar != null && (bundle = zzdbVar.zzd) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(F);
            F.y = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(F);
        return F;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0083  */
    public final boolean a() {
        ServiceInfo serviceInfo;
        boolean z = false;
        if (!this.v) {
            ah.f("AppMeasurement is not initialized");
            return false;
        }
        zzhz zzhzVar = this.g;
        e(zzhzVar);
        zzhzVar.zzg();
        Boolean bool = this.w;
        Clock clock = this.k;
        if (bool == null || this.x == 0 || (!bool.booleanValue() && Math.abs(clock.elapsedRealtime() - this.x) > 1000)) {
            this.x = clock.elapsedRealtime();
            zzpp zzppVar = this.i;
            c(zzppVar);
            if (zzppVar.z("android.permission.INTERNET") && zzppVar.z("android.permission.ACCESS_NETWORK_STATE")) {
                Context context = this.a;
                if (Wrappers.packageManager(context).isCallerInstantApp() || this.d.a()) {
                    z = true;
                } else if (zzpp.H(context)) {
                    Preconditions.checkNotNull(context);
                    try {
                        PackageManager packageManager = context.getPackageManager();
                        if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementJobService"), 0)) != null && serviceInfo.enabled) {
                            z = true;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
            }
            this.w = Boolean.valueOf(z);
            if (z) {
                this.w = Boolean.valueOf(zzppVar.zzC(zzv().d()));
            }
        }
        return this.w.booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002a  */
    public final /* synthetic */ void b(int i, Throwable th, byte[] bArr) {
        zzgu zzguVar;
        int i2 = i;
        zzgu zzguVar2 = this.f;
        if (i2 == 200 || i2 == 204) {
            if (th == null) {
                hnb hnbVar = this.e;
                c(hnbVar);
                hnbVar.t.zzb(true);
                if (bArr != null || bArr.length == 0) {
                    e(zzguVar2);
                    zzguVar2.zzj().zza("Deferred Deep Link response empty.");
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String strOptString = jSONObject.optString("deeplink", "");
                    if (TextUtils.isEmpty(strOptString)) {
                        e(zzguVar2);
                        zzguVar2.zzj().zza("Deferred Deep Link is empty.");
                        return;
                    }
                    String strOptString2 = jSONObject.optString("gclid", "");
                    String strOptString3 = jSONObject.optString("gbraid", "");
                    String strOptString4 = jSONObject.optString("gad_source", "");
                    double dOptDouble = jSONObject.optDouble(TJVerifierKt.TJC_TIMESTAMP, 0.0d);
                    Bundle bundle = new Bundle();
                    zzpp zzppVar = this.i;
                    c(zzppVar);
                    zzic zzicVar = zzppVar.a;
                    if (TextUtils.isEmpty(strOptString)) {
                        zzguVar = zzguVar2;
                    } else {
                        zzguVar = zzguVar2;
                        try {
                            Context context = zzicVar.a;
                            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(strOptString)), 0);
                            if (listQueryIntentActivities != null && !listQueryIntentActivities.isEmpty()) {
                                if (!TextUtils.isEmpty(strOptString3)) {
                                    bundle.putString("gbraid", strOptString3);
                                }
                                if (!TextUtils.isEmpty(strOptString4)) {
                                    bundle.putString("gad_source", strOptString4);
                                }
                                bundle.putString("gclid", strOptString2);
                                bundle.putString("_cis", "ddp");
                                this.m.b(TtmlNode.TEXT_EMPHASIS_AUTO, "_cmp", bundle);
                                if (TextUtils.isEmpty(strOptString)) {
                                    return;
                                }
                                try {
                                    SharedPreferences.Editor editorEdit = context.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                                    editorEdit.putString("deeplink", strOptString);
                                    editorEdit.putLong(TJVerifierKt.TJC_TIMESTAMP, Double.doubleToRawLongBits(dOptDouble));
                                    if (editorEdit.commit()) {
                                        Intent intent = new Intent("android.google.analytics.action.DEEPLINK_ACTION");
                                        Context context2 = zzicVar.a;
                                        if (Build.VERSION.SDK_INT < 34) {
                                            context2.sendBroadcast(intent);
                                            return;
                                        } else {
                                            context2.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                                            return;
                                        }
                                    }
                                    return;
                                } catch (RuntimeException e) {
                                    zzgu zzguVar3 = zzppVar.a.f;
                                    e(zzguVar3);
                                    zzguVar3.zzb().zzb("Failed to persist Deferred Deep Link. exception", e);
                                    return;
                                }
                            }
                        } catch (JSONException e2) {
                            e = e2;
                            e(zzguVar);
                            zzguVar.zzb().zzb("Failed to parse the Deferred Deep Link response. exception", e);
                            return;
                        }
                    }
                    e(zzguVar);
                    zzguVar.zze().zzd("Deferred Deep Link validation failed. gclid, gbraid, deep link", strOptString2, strOptString3, strOptString);
                    return;
                } catch (JSONException e3) {
                    e = e3;
                    zzguVar = zzguVar2;
                }
            }
        } else if (i2 == 304) {
            i2 = 304;
            if (th == null) {
                hnb hnbVar2 = this.e;
                c(hnbVar2);
                hnbVar2.t.zzb(true);
                if (bArr != null) {
                }
                e(zzguVar2);
                zzguVar2.zzj().zza("Deferred Deep Link response empty.");
                return;
            }
        }
        e(zzguVar2);
        zzguVar2.zze().zzc("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
    }

    public final boolean zzA() {
        return this.y != null && this.y.booleanValue();
    }

    public final boolean zzB() {
        return zzC() == 0;
    }

    public final int zzC() {
        zzhz zzhzVar = this.g;
        e(zzhzVar);
        zzhzVar.zzg();
        zzal zzalVar = this.d;
        if (zzalVar.zzt()) {
            return 1;
        }
        e(zzhzVar);
        zzhzVar.zzg();
        if (!this.z) {
            return 8;
        }
        hnb hnbVar = this.e;
        c(hnbVar);
        hnbVar.zzg();
        Boolean boolValueOf = hnbVar.d().contains("measurement_enabled") ? Boolean.valueOf(hnbVar.d().getBoolean("measurement_enabled", true)) : null;
        if (boolValueOf != null) {
            return boolValueOf.booleanValue() ? 0 : 3;
        }
        zzae zzaeVar = zzalVar.a.c;
        Boolean boolE = zzalVar.e("firebase_analytics_collection_enabled");
        if (boolE != null) {
            return boolE.booleanValue() ? 0 : 4;
        }
        return (this.y == null || this.y.booleanValue()) ? 0 : 7;
    }

    public final void zzD(boolean z) {
        zzhz zzhzVar = this.g;
        e(zzhzVar);
        zzhzVar.zzg();
        this.z = z;
    }

    public final boolean zzE() {
        zzhz zzhzVar = this.g;
        e(zzhzVar);
        zzhzVar.zzg();
        return this.z;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x010d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0127  */
    /* JADX WARN: Code duplicated, block: B:45:0x0139  */
    /* JADX WARN: Code duplicated, block: B:51:0x0159  */
    /* JADX WARN: Code duplicated, block: B:53:0x015d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0167  */
    /* JADX WARN: Code duplicated, block: B:58:0x017d  */
    /* JADX WARN: Code duplicated, block: B:59:0x0180  */
    /* JADX WARN: Code duplicated, block: B:62:0x0192  */
    /* JADX WARN: Code duplicated, block: B:64:0x01c5  */
    public final boolean zzI() {
        Pair pair;
        NetworkInfo activeNetworkInfo;
        zznl zznlVarZzt;
        zzic zzicVar;
        zzgb zzgbVar;
        zzao zzaoVarZzw;
        Bundle bundle;
        zzba zzbaVarZzh;
        int i;
        String str;
        zzhz zzhzVar = this.g;
        e(zzhzVar);
        zzhzVar.zzg();
        zzlo zzloVar = this.o;
        e(zzloVar);
        zzic zzicVar2 = zzloVar.a;
        e(zzloVar);
        String strZzj = zzv().zzj();
        boolean zZzu = this.d.zzu();
        zzgu zzguVar = this.f;
        if (!zZzu) {
            e(zzguVar);
            zzguVar.zzk().zza("ADID collection is disabled from Manifest. Skipping");
            return false;
        }
        hnb hnbVar = this.e;
        c(hnbVar);
        zzic zzicVar3 = hnbVar.a;
        hnbVar.zzg();
        if (hnbVar.g().zzo(zzjk.AD_STORAGE)) {
            long jElapsedRealtime = zzicVar3.zzba().elapsedRealtime();
            String str2 = hnbVar.h;
            if (str2 == null || jElapsedRealtime >= hnbVar.j) {
                hnbVar.j = zzicVar3.zzc().zzl(strZzj, zzfy.zza) + jElapsedRealtime;
                AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
                try {
                    AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zzicVar3.zzaZ());
                    hnbVar.h = "";
                    String id = advertisingIdInfo.getId();
                    if (id != null) {
                        hnbVar.h = id;
                    }
                    hnbVar.i = advertisingIdInfo.isLimitAdTrackingEnabled();
                } catch (Exception e) {
                    zzicVar3.zzaW().zzj().zzb("Unable to get advertising id", e);
                    hnbVar.h = "";
                }
                AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
                pair = new Pair(hnbVar.h, Boolean.valueOf(hnbVar.i));
            } else {
                pair = new Pair(str2, Boolean.valueOf(hnbVar.i));
            }
        } else {
            pair = new Pair("", Boolean.FALSE);
        }
        if (((Boolean) pair.second).booleanValue() || TextUtils.isEmpty((CharSequence) pair.first)) {
            e(zzguVar);
            zzguVar.zzk().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return false;
        }
        e(zzloVar);
        zzloVar.c();
        ConnectivityManager connectivityManager = (ConnectivityManager) zzicVar2.a.getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
                activeNetworkInfo = null;
            }
        } else {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            e(zzguVar);
            zzguVar.zze().zza("Network is not available for Deferred Deep Link request. Skipping");
            return false;
        }
        StringBuilder sb = new StringBuilder();
        zznl zznlVarZzt2 = zzt();
        zznlVarZzt2.zzg();
        zznlVarZzt2.a();
        if (zznlVarZzt2.c()) {
            zzpp zzppVar = zznlVarZzt2.a.i;
            c(zzppVar);
            if (zzppVar.zzak() >= 234200) {
                zzlj zzljVar = this.m;
                d(zzljVar);
                zzic zzicVar4 = zzljVar.a;
                zzljVar.zzg();
                zznlVarZzt = zzicVar4.zzt();
                zzicVar = zznlVarZzt.a;
                zznlVarZzt.zzg();
                zznlVarZzt.a();
                zzgbVar = zznlVarZzt.d;
                if (zzgbVar == null) {
                    zznlVarZzt.b();
                    zzicVar.zzaW().zzj().zza("Failed to get consents; not connected to service yet.");
                } else {
                    zzr zzrVarJ = zznlVarZzt.j(false);
                    Preconditions.checkNotNull(zzrVarJ);
                    zzaoVarZzw = zzgbVar.zzw(zzrVarJ);
                    zznlVarZzt.g();
                    if (zzaoVarZzw != null) {
                    }
                    if (bundle == null) {
                        i = this.B;
                        this.B = i + 1;
                        if (i < 10) {
                        }
                        e(zzguVar);
                        zzgs zzgsVarZzj = zzguVar.zzj();
                        StringBuilder sb2 = new StringBuilder(69);
                        sb2.append("Failed to retrieve DMA consent from the service, ");
                        if (i < 10) {
                            str = "Retrying.";
                        } else {
                            str = "Skipping.";
                        }
                        zzgsVarZzj.zzb(me0.d(sb2, str, " retryCount"), Integer.valueOf(this.B));
                        return z;
                    }
                    zzjl zzjlVarZze = zzjl.zze(bundle, 100);
                    sb.append("&gcs=");
                    sb.append(zzjlVarZze.zzk());
                    zzbaVarZzh = zzba.zzh(bundle, 100);
                    sb.append("&dma=");
                    sb.append(!Objects.equals(zzbaVarZzh.zzj(), Boolean.FALSE) ? 1 : 0);
                    if (!TextUtils.isEmpty(zzbaVarZzh.zzk())) {
                        sb.append("&dma_cps=");
                        sb.append(zzbaVarZzh.zzk());
                    }
                    int i2 = !Objects.equals(zzba.zzi(bundle), Boolean.TRUE) ? 1 : 0;
                    sb.append("&npa=");
                    sb.append(i2);
                    e(zzguVar);
                    zzguVar.zzk().zzb("Consent query parameters to Bow", sb);
                }
                zzaoVarZzw = null;
                if (zzaoVarZzw != null) {
                }
                if (bundle == null) {
                    i = this.B;
                    this.B = i + 1;
                    if (i < 10) {
                    }
                    e(zzguVar);
                    zzgs zzgsVarZzj2 = zzguVar.zzj();
                    StringBuilder sb3 = new StringBuilder(69);
                    sb3.append("Failed to retrieve DMA consent from the service, ");
                    if (i < 10) {
                        str = "Retrying.";
                    } else {
                        str = "Skipping.";
                    }
                    zzgsVarZzj2.zzb(me0.d(sb3, str, " retryCount"), Integer.valueOf(this.B));
                    return z;
                }
                zzjl zzjlVarZze2 = zzjl.zze(bundle, 100);
                sb.append("&gcs=");
                sb.append(zzjlVarZze2.zzk());
                zzbaVarZzh = zzba.zzh(bundle, 100);
                sb.append("&dma=");
                sb.append(!Objects.equals(zzbaVarZzh.zzj(), Boolean.FALSE) ? 1 : 0);
                if (!TextUtils.isEmpty(zzbaVarZzh.zzk())) {
                    sb.append("&dma_cps=");
                    sb.append(zzbaVarZzh.zzk());
                }
                int i3 = !Objects.equals(zzba.zzi(bundle), Boolean.TRUE) ? 1 : 0;
                sb.append("&npa=");
                sb.append(i3);
                e(zzguVar);
                zzguVar.zzk().zzb("Consent query parameters to Bow", sb);
            }
        } else {
            zzlj zzljVar2 = this.m;
            d(zzljVar2);
            zzic zzicVar5 = zzljVar2.a;
            zzljVar2.zzg();
            zznlVarZzt = zzicVar5.zzt();
            zzicVar = zznlVarZzt.a;
            zznlVarZzt.zzg();
            zznlVarZzt.a();
            zzgbVar = zznlVarZzt.d;
            if (zzgbVar == null) {
                zznlVarZzt.b();
                zzicVar.zzaW().zzj().zza("Failed to get consents; not connected to service yet.");
            } else {
                zzr zzrVarJ2 = zznlVarZzt.j(false);
                Preconditions.checkNotNull(zzrVarJ2);
                try {
                    zzaoVarZzw = zzgbVar.zzw(zzrVarJ2);
                    zznlVarZzt.g();
                } catch (RemoteException e2) {
                    zzicVar.zzaW().zzb().zzb("Failed to get consents; remote exception", e2);
                    zzaoVarZzw = null;
                }
                bundle = zzaoVarZzw != null ? zzaoVarZzw.zza : null;
                if (bundle == null) {
                    i = this.B;
                    this.B = i + 1;
                    boolean z = i < 10;
                    e(zzguVar);
                    zzgs zzgsVarZzj3 = zzguVar.zzj();
                    StringBuilder sb4 = new StringBuilder(69);
                    sb4.append("Failed to retrieve DMA consent from the service, ");
                    if (i < 10) {
                        str = "Retrying.";
                    } else {
                        str = "Skipping.";
                    }
                    zzgsVarZzj3.zzb(me0.d(sb4, str, " retryCount"), Integer.valueOf(this.B));
                    return z;
                }
                zzjl zzjlVarZze3 = zzjl.zze(bundle, 100);
                sb.append("&gcs=");
                sb.append(zzjlVarZze3.zzk());
                zzbaVarZzh = zzba.zzh(bundle, 100);
                sb.append("&dma=");
                sb.append(!Objects.equals(zzbaVarZzh.zzj(), Boolean.FALSE) ? 1 : 0);
                if (!TextUtils.isEmpty(zzbaVarZzh.zzk())) {
                    sb.append("&dma_cps=");
                    sb.append(zzbaVarZzh.zzk());
                }
                int i4 = !Objects.equals(zzba.zzi(bundle), Boolean.TRUE) ? 1 : 0;
                sb.append("&npa=");
                sb.append(i4);
                e(zzguVar);
                zzguVar.zzk().zzb("Consent query parameters to Bow", sb);
            }
            zzaoVarZzw = null;
            if (zzaoVarZzw != null) {
            }
            if (bundle == null) {
                i = this.B;
                this.B = i + 1;
                if (i < 10) {
                }
                e(zzguVar);
                zzgs zzgsVarZzj4 = zzguVar.zzj();
                StringBuilder sb5 = new StringBuilder(69);
                sb5.append("Failed to retrieve DMA consent from the service, ");
                if (i < 10) {
                    str = "Retrying.";
                } else {
                    str = "Skipping.";
                }
                zzgsVarZzj4.zzb(me0.d(sb5, str, " retryCount"), Integer.valueOf(this.B));
                return z;
            }
            zzjl zzjlVarZze4 = zzjl.zze(bundle, 100);
            sb.append("&gcs=");
            sb.append(zzjlVarZze4.zzk());
            zzbaVarZzh = zzba.zzh(bundle, 100);
            sb.append("&dma=");
            sb.append(!Objects.equals(zzbaVarZzh.zzj(), Boolean.FALSE) ? 1 : 0);
            if (!TextUtils.isEmpty(zzbaVarZzh.zzk())) {
                sb.append("&dma_cps=");
                sb.append(zzbaVarZzh.zzk());
            }
            int i5 = !Objects.equals(zzba.zzi(bundle), Boolean.TRUE) ? 1 : 0;
            sb.append("&npa=");
            sb.append(i5);
            e(zzguVar);
            zzguVar.zzk().zzb("Consent query parameters to Bow", sb);
        }
        zzpp zzppVar2 = this.i;
        c(zzppVar2);
        zzv().a.d.zzi();
        URL urlZzaw = zzppVar2.zzaw(161000L, strZzj, (String) pair.first, hnbVar.u.zza() - 1, sb.toString());
        if (urlZzaw != null) {
            e(zzloVar);
            ima imaVar = new ima(this);
            zzloVar.c();
            Preconditions.checkNotNull(urlZzaw);
            Preconditions.checkNotNull(imaVar);
            zzhz zzhzVar2 = zzicVar2.g;
            e(zzhzVar2);
            zzhzVar2.zzm(new s2c(zzloVar, strZzj, urlZzaw, null, null, imaVar));
        }
        return false;
    }

    @Override // defpackage.pvb
    @Pure
    public final zzae zzaV() {
        return this.c;
    }

    @Override // defpackage.pvb
    @Pure
    public final zzgu zzaW() {
        zzgu zzguVar = this.f;
        e(zzguVar);
        return zzguVar;
    }

    @Override // defpackage.pvb
    @Pure
    public final zzhz zzaX() {
        zzhz zzhzVar = this.g;
        e(zzhzVar);
        return zzhzVar;
    }

    @Override // defpackage.pvb
    @Pure
    public final Context zzaZ() {
        return this.a;
    }

    @Override // defpackage.pvb
    @Pure
    public final Clock zzba() {
        return this.k;
    }

    @Pure
    public final zzal zzc() {
        return this.d;
    }

    @Pure
    public final hnb zzd() {
        hnb hnbVar = this.e;
        c(hnbVar);
        return hnbVar;
    }

    public final zzgu zzf() {
        zzgu zzguVar = this.f;
        if (zzguVar == null || !zzguVar.b) {
            return null;
        }
        return zzguVar;
    }

    @Pure
    public final zzoc zzh() {
        zzoc zzocVar = this.h;
        d(zzocVar);
        return zzocVar;
    }

    @Pure
    public final zzlj zzj() {
        zzlj zzljVar = this.m;
        d(zzljVar);
        return zzljVar;
    }

    @Pure
    public final zzpp zzk() {
        zzpp zzppVar = this.i;
        c(zzppVar);
        return zzppVar;
    }

    @Pure
    public final zzgn zzl() {
        return this.j;
    }

    @Pure
    public final zzgl zzm() {
        d(this.q);
        return this.q;
    }

    @Pure
    public final zzlo zzn() {
        zzlo zzloVar = this.o;
        e(zzloVar);
        return zzloVar;
    }

    @Pure
    public final boolean zzp() {
        return this.b;
    }

    @Pure
    public final String zzq() {
        return this.p;
    }

    @Pure
    public final zzmb zzs() {
        zzmb zzmbVar = this.l;
        d(zzmbVar);
        return zzmbVar;
    }

    @Pure
    public final zznl zzt() {
        d(this.r);
        return this.r;
    }

    @Pure
    public final zzbb zzu() {
        e(this.s);
        return this.s;
    }

    @Pure
    public final zzgi zzv() {
        d(this.t);
        return this.t;
    }

    @Pure
    public final zzd zzw() {
        zzd zzdVar = this.n;
        if (zzdVar != null) {
            return zzdVar;
        }
        ah.f("Component not created");
        return null;
    }

    @Pure
    public final zzlq zzx() {
        zzlq zzlqVar = this.u;
        if (zzlqVar != null) {
            return zzlqVar;
        }
        ah.f("Component not created");
        return null;
    }
}
