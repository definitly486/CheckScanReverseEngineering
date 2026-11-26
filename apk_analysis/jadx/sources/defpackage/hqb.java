package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzin;
import com.google.android.gms.measurement.internal.zzal;
import com.google.android.gms.measurement.internal.zzba;
import com.google.android.gms.measurement.internal.zzbb;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgi;
import com.google.android.gms.measurement.internal.zzgl;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzhe;
import com.google.android.gms.measurement.internal.zzhg;
import com.google.android.gms.measurement.internal.zzhz;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzji;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzjs;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzlq;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzoc;
import com.google.android.gms.measurement.internal.zzpp;
import com.google.android.gms.measurement.internal.zzw;
import com.google.android.gms.measurement.internal.zzx;
import java.util.EnumMap;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class hqb implements Runnable {
    public final /* synthetic */ zzjs b;
    public final /* synthetic */ zzic c;

    public hqb(zzic zzicVar, zzjs zzjsVar) {
        this.b = zzjsVar;
        this.c = zzicVar;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x035f  */
    /* JADX WARN: Code duplicated, block: B:113:0x036e  */
    /* JADX WARN: Code duplicated, block: B:118:0x0399  */
    /* JADX WARN: Code duplicated, block: B:120:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:121:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:124:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:129:0x0428  */
    /* JADX WARN: Code duplicated, block: B:138:0x046e  */
    /* JADX WARN: Code duplicated, block: B:140:0x0476  */
    /* JADX WARN: Code duplicated, block: B:141:0x0478  */
    /* JADX WARN: Code duplicated, block: B:147:0x048d  */
    /* JADX WARN: Code duplicated, block: B:151:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:153:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:155:0x04fb  */
    /* JADX WARN: Code duplicated, block: B:158:0x0515  */
    /* JADX WARN: Code duplicated, block: B:28:0x0135 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0137  */
    /* JADX WARN: Code duplicated, block: B:32:0x0165  */
    /* JADX WARN: Code duplicated, block: B:54:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:55:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:58:0x0217  */
    /* JADX WARN: Code duplicated, block: B:64:0x024d  */
    /* JADX WARN: Code duplicated, block: B:66:0x025b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:74:0x027e  */
    /* JADX WARN: Code duplicated, block: B:77:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:85:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:87:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:89:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:92:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:99:0x031c  */
    @Override // java.lang.Runnable
    public final void run() {
        zzjl zzjlVar;
        zzgu zzguVar;
        zzjl zzjlVarZza;
        zzji zzjiVarZzw;
        zzji zzjiVarZzw2;
        Boolean boolE;
        zzhe zzheVar;
        zzx zzxVar;
        boolean zZzB;
        SharedPreferences sharedPreferences;
        boolean zContains;
        String strD;
        String string;
        boolean zIsEmpty;
        Boolean boolValueOf;
        long jMax;
        zwb zwbVar;
        Context context;
        PackageManager packageManager;
        ServiceInfo serviceInfo;
        Bundle bundle;
        zzic zzicVar = this.c;
        zzhz zzhzVar = zzicVar.g;
        zzgu zzguVar2 = zzicVar.f;
        hnb hnbVar = zzicVar.e;
        zzpp zzppVar = zzicVar.i;
        zzic.e(zzhzVar);
        zzhzVar.zzg();
        zzal zzalVar = zzicVar.d;
        zzalVar.a.zzaV();
        zzbb zzbbVar = new zzbb(zzicVar);
        zzbbVar.zzx();
        zzicVar.s = zzbbVar;
        zzjs zzjsVar = this.b;
        zzdb zzdbVar = zzjsVar.d;
        long j = zzdbVar == null ? 0L : zzdbVar.zza;
        String string2 = "";
        if (zzdbVar != null && (bundle = zzdbVar.zzd) != null) {
            string2 = bundle.getString("runtime_google_app_id", "");
        }
        zzgi zzgiVar = new zzgi(zzicVar, zzjsVar.c, j, string2);
        zzgiVar.zzc();
        zzicVar.t = zzgiVar;
        zzgl zzglVar = new zzgl(zzicVar);
        zzglVar.zzc();
        zzicVar.q = zzglVar;
        zznl zznlVar = new zznl(zzicVar);
        zznlVar.zzc();
        zzicVar.r = zznlVar;
        zzppVar.zzy();
        zzic zzicVar2 = zzppVar.a;
        hnbVar.zzy();
        zzicVar.t.zzd();
        zzlq zzlqVar = new zzlq(zzicVar);
        zzlqVar.zzc();
        zzicVar.u = zzlqVar;
        zzlqVar.zzd();
        zzic.e(zzguVar2);
        zzgs zzgsVarZzi = zzguVar2.zzi();
        zzalVar.zzi();
        zzgsVarZzi.zzb("App measurement initialized, version", 161000L);
        zzic.e(zzguVar2);
        zzguVar2.zzi().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strZzj = zzgiVar.zzj();
        if (zzppVar.B(strZzj, zzalVar.zzz())) {
            zzic.e(zzguVar2);
            zzguVar2.zzi().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
        } else {
            zzic.e(zzguVar2);
            zzguVar2.zzi().zza("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strZzj)));
        }
        zzic.e(zzguVar2);
        zzguVar2.zzj().zza("Debug-level message logging enabled");
        int i = zzicVar.A;
        AtomicInteger atomicInteger = zzicVar.C;
        if (i != atomicInteger.get()) {
            zzic.e(zzguVar2);
            zzguVar2.zzb().zzc("Not all components initialized", Integer.valueOf(zzicVar.A), Integer.valueOf(atomicInteger.get()));
        }
        zzicVar.v = true;
        long j2 = zzicVar.D;
        zzlj zzljVar = zzicVar.m;
        zzic.e(zzhzVar);
        zzhzVar.zzg();
        zzin zzinVarB = zzicVar.zzx().b();
        zzin zzinVar = zzin.CLIENT_UPLOAD_ELIGIBLE;
        zzaif.zza();
        boolean zZzp = zzalVar.zzp(null, zzfy.zzaP);
        boolean z = zzinVarB == zzinVar;
        if (zZzp) {
            zzppVar.zzg();
            if (zzppVar.t() == 1) {
                zzppVar.zzg();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                intentFilter.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                ContextCompat.registerReceiver(zzicVar2.a, new zzw(zzicVar2), intentFilter, 2);
                zzgu zzguVar3 = zzicVar2.f;
                zzic.e(zzguVar3);
                zzguVar3.zzj().zza("Registered app receiver");
                if (z) {
                    zzicVar.zzx().zzh(((Long) zzfy.zzB.zzb(null)).longValue());
                }
            } else if (z) {
                z = true;
                zzppVar.zzg();
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                intentFilter2.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                ContextCompat.registerReceiver(zzicVar2.a, new zzw(zzicVar2), intentFilter2, 2);
                zzgu zzguVar4 = zzicVar2.f;
                zzic.e(zzguVar4);
                zzguVar4.zzj().zza("Registered app receiver");
                if (z) {
                    zzicVar.zzx().zzh(((Long) zzfy.zzB.zzb(null)).longValue());
                }
            }
        } else if (z) {
            z = true;
            zzppVar.zzg();
            IntentFilter intentFilter3 = new IntentFilter();
            intentFilter3.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            intentFilter3.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
            ContextCompat.registerReceiver(zzicVar2.a, new zzw(zzicVar2), intentFilter3, 2);
            zzgu zzguVar5 = zzicVar2.f;
            zzic.e(zzguVar5);
            zzguVar5.zzj().zza("Registered app receiver");
            if (z) {
                zzicVar.zzx().zzh(((Long) zzfy.zzB.zzb(null)).longValue());
            }
        }
        zzhg zzhgVar = hnbVar.g;
        zzjl zzjlVarG = hnbVar.g();
        int iZzb = zzjlVarG.zzb();
        zzji zzjiVarZzw3 = zzalVar.zzw("google_analytics_default_allow_ad_storage", false);
        zzji zzjiVarZzw4 = zzalVar.zzw("google_analytics_default_allow_analytics_storage", false);
        zzji zzjiVar = zzji.UNINITIALIZED;
        if (zzjiVarZzw3 != zzjiVar || zzjiVarZzw4 != zzjiVar) {
            zzjlVar = zzjlVarG;
            zzguVar = zzguVar2;
            zzjlVarZza = zzjl.zzu(-10, hnbVar.d().getInt("consent_source", 100)) ? zzjl.zza(zzjiVarZzw3, zzjiVarZzw4, -10) : null;
            if (zzjlVarZza != null) {
                zzic.d(zzljVar);
                zzljVar.zzs(zzjlVarZza, true);
            } else {
                zzjlVarZza = zzjlVar;
            }
            zzic.d(zzljVar);
            zzljVar.m(zzjlVarZza);
            hnbVar.zzg();
            int iZzb2 = zzba.zzg(hnbVar.d().getString("dma_consent_settings", null)).zzb();
            zzjiVarZzw = zzalVar.zzw("google_analytics_default_allow_ad_personalization_signals", true);
            if (zzjiVarZzw != zzjiVar) {
                zzic.e(zzguVar);
                zzguVar.zzk().zzb("Default ad personalization consent from Manifest", zzjiVarZzw);
            }
            zzjiVarZzw2 = zzalVar.zzw("google_analytics_default_allow_ad_user_data", true);
            if (zzjiVarZzw2 == zzjiVar && zzjl.zzu(-10, iZzb2)) {
                zzic.d(zzljVar);
                EnumMap enumMap = new EnumMap(zzjk.class);
                enumMap.put(zzjk.AD_USER_DATA, zzjiVarZzw2);
                zzljVar.j(new zzba(enumMap, -10, (Boolean) null, (String) null), true);
            } else if (!TextUtils.isEmpty(zzicVar.zzv().d()) && (iZzb2 == 0 || iZzb2 == 30)) {
                zzic.d(zzljVar);
                zzljVar.j(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
            }
            boolE = zzalVar.e("google_analytics_tcf_data_enabled");
            if (boolE != null || boolE.booleanValue()) {
                zzic.e(zzguVar);
                zzguVar.zzj().zza("TCF client enabled.");
                zzic.d(zzljVar);
                zzljVar.zzD();
                zzic.d(zzljVar);
                zzljVar.zzC();
            }
            zzheVar = hnbVar.f;
            if (zzheVar.zza() == 0) {
                zzic.e(zzguVar);
                zzguVar.zzk().zzb("Persisting first open", Long.valueOf(j2));
                zzheVar.zzb(j2);
            }
            zzic.d(zzljVar);
            zzxVar = zzljVar.q;
            if (zzxVar.c() && zzxVar.b()) {
                zzxVar.a.zzd().w.zzb(null);
            }
            if (!zzicVar.a()) {
                if (!TextUtils.isEmpty(zzicVar.zzv().d())) {
                    strD = zzicVar.zzv().d();
                    hnbVar.zzg();
                    string = hnbVar.d().getString("gmp_app_id", null);
                    zIsEmpty = TextUtils.isEmpty(strD);
                    boolean zIsEmpty2 = TextUtils.isEmpty(string);
                    if (!zIsEmpty && !zIsEmpty2) {
                        Preconditions.checkNotNull(strD);
                        if (!strD.equals(string)) {
                            zzic.e(zzguVar);
                            zzguVar.zzi().zza("Rechecking which service to use due to a GMP App Id change");
                            hnbVar.zzg();
                            hnbVar.zzg();
                            if (hnbVar.d().contains("measurement_enabled")) {
                                boolValueOf = Boolean.valueOf(hnbVar.d().getBoolean("measurement_enabled", true));
                            } else {
                                boolValueOf = null;
                            }
                            SharedPreferences.Editor editorEdit = hnbVar.d().edit();
                            editorEdit.clear();
                            editorEdit.apply();
                            if (boolValueOf != null) {
                                hnbVar.zzg();
                                SharedPreferences.Editor editorEdit2 = hnbVar.d().edit();
                                editorEdit2.putBoolean("measurement_enabled", boolValueOf.booleanValue());
                                editorEdit2.apply();
                            }
                            zzicVar.zzm().zzh();
                            zzicVar.r.zzM();
                            zzicVar.r.b();
                            zzheVar.zzb(j2);
                            zzhgVar.zzb(null);
                        }
                    }
                    String strD2 = zzicVar.zzv().d();
                    hnbVar.zzg();
                    SharedPreferences.Editor editorEdit3 = hnbVar.d().edit();
                    editorEdit3.putString("gmp_app_id", strD2);
                    editorEdit3.apply();
                }
                if (!hnbVar.g().zzo(zzjk.ANALYTICS_STORAGE)) {
                    zzhgVar.zzb(null);
                }
                zzic.d(zzljVar);
                zzljVar.g.set(zzhgVar.zza());
                try {
                    zzicVar2.a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException unused) {
                    zzhg zzhgVar2 = hnbVar.v;
                    if (!TextUtils.isEmpty(zzhgVar2.zza())) {
                        zzic.e(zzguVar);
                        zzguVar.zze().zza("Remote config removed with active feature rollouts");
                        zzhgVar2.zzb(null);
                    }
                }
                if (!TextUtils.isEmpty(zzicVar.zzv().d())) {
                    zZzB = zzicVar.zzB();
                    sharedPreferences = hnbVar.c;
                    if (sharedPreferences == null) {
                        zContains = false;
                    } else {
                        zContains = sharedPreferences.contains("deferred_analytics_collection");
                    }
                    if (!zContains && !zzalVar.zzt()) {
                        hnbVar.h(!zZzB);
                    }
                    if (zZzB) {
                        zzic.d(zzljVar);
                        zzljVar.zzT();
                    }
                    zzoc zzocVar = zzicVar.h;
                    zzic.d(zzocVar);
                    zzocVar.e.a();
                    zzicVar.zzt().zzC(new AtomicReference());
                    zzicVar.zzt().zzH(hnbVar.y.zza());
                }
            } else if (zzicVar.zzB()) {
                if (!zzppVar.z("android.permission.INTERNET")) {
                    zzic.e(zzguVar);
                    zzguVar.zzb().zza("App is missing INTERNET permission");
                }
                if (!zzppVar.z("android.permission.ACCESS_NETWORK_STATE")) {
                    zzic.e(zzguVar);
                    zzguVar.zzb().zza("App is missing ACCESS_NETWORK_STATE permission");
                }
                context = zzicVar.a;
                if (!Wrappers.packageManager(context).isCallerInstantApp() && !zzalVar.a()) {
                    if (!zzpp.H(context)) {
                        zzic.e(zzguVar);
                        zzguVar.zzb().zza("AppMeasurementReceiver not registered/enabled");
                    }
                    Preconditions.checkNotNull(context);
                    try {
                        packageManager = context.getPackageManager();
                        if (packageManager != null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementJobService"), 0)) == null || !serviceInfo.enabled) {
                            zzic.e(zzguVar);
                            zzguVar.zzb().zza("AppMeasurementService not registered/enabled");
                        }
                    } catch (PackageManager.NameNotFoundException unused2) {
                    }
                }
                zzic.e(zzguVar);
                zzguVar.zzb().zza("Uploading is not possible. App measurement disabled");
            }
            zzaif.zza();
            if (zzalVar.zzp(null, zzfy.zzaP)) {
                zzppVar.zzg();
                if (zzppVar.t() == 1) {
                    jMax = Math.max(500L, ((((long) ((Integer) zzfy.zzaw.zzb(null)).intValue()) * 1000) + ((long) new Random().nextInt(AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH))) - zzicVar.k.elapsedRealtime());
                    if (jMax > 500) {
                        zzic.e(zzguVar);
                        zzguVar.zzk().zzb("Waiting to fetch trigger URIs until some time after boot. Delay in millis", Long.valueOf(jMax));
                    }
                    zzic.d(zzljVar);
                    zzljVar.zzg();
                    zwbVar = zzljVar.l;
                    if (zwbVar == null) {
                        zwb zwbVar2 = new zwb(zzljVar, zzljVar.a);
                        zzljVar.l = zwbVar2;
                        zwbVar = zwbVar2;
                    }
                    zwbVar.b(jMax);
                }
            }
            hnbVar.o.zzb(true);
        }
        zzjlVar = zzjlVarG;
        zzguVar = zzguVar2;
        if (!TextUtils.isEmpty(zzicVar.zzv().d()) && (iZzb == 0 || iZzb == 30 || iZzb == 10 || iZzb == 40)) {
            zzic.d(zzljVar);
            zzljVar.zzs(new zzjl(null, null, -10), false);
        }
        if (zzjlVarZza != null) {
            zzic.d(zzljVar);
            zzljVar.zzs(zzjlVarZza, true);
        } else {
            zzjlVarZza = zzjlVar;
        }
        zzic.d(zzljVar);
        zzljVar.m(zzjlVarZza);
        hnbVar.zzg();
        int iZzb3 = zzba.zzg(hnbVar.d().getString("dma_consent_settings", null)).zzb();
        zzjiVarZzw = zzalVar.zzw("google_analytics_default_allow_ad_personalization_signals", true);
        if (zzjiVarZzw != zzjiVar) {
            zzic.e(zzguVar);
            zzguVar.zzk().zzb("Default ad personalization consent from Manifest", zzjiVarZzw);
        }
        zzjiVarZzw2 = zzalVar.zzw("google_analytics_default_allow_ad_user_data", true);
        if (zzjiVarZzw2 == zzjiVar) {
            if (!TextUtils.isEmpty(zzicVar.zzv().d())) {
                zzic.d(zzljVar);
                zzljVar.j(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
            }
        } else if (!TextUtils.isEmpty(zzicVar.zzv().d())) {
            zzic.d(zzljVar);
            zzljVar.j(new zzba((Boolean) null, -10, (Boolean) null, (String) null), true);
        }
        boolE = zzalVar.e("google_analytics_tcf_data_enabled");
        if (boolE != null) {
            zzic.e(zzguVar);
            zzguVar.zzj().zza("TCF client enabled.");
            zzic.d(zzljVar);
            zzljVar.zzD();
            zzic.d(zzljVar);
            zzljVar.zzC();
        } else {
            zzic.e(zzguVar);
            zzguVar.zzj().zza("TCF client enabled.");
            zzic.d(zzljVar);
            zzljVar.zzD();
            zzic.d(zzljVar);
            zzljVar.zzC();
        }
        zzheVar = hnbVar.f;
        if (zzheVar.zza() == 0) {
            zzic.e(zzguVar);
            zzguVar.zzk().zzb("Persisting first open", Long.valueOf(j2));
            zzheVar.zzb(j2);
        }
        zzic.d(zzljVar);
        zzxVar = zzljVar.q;
        if (zzxVar.c()) {
            zzxVar.a.zzd().w.zzb(null);
        }
        if (!zzicVar.a()) {
            if (!TextUtils.isEmpty(zzicVar.zzv().d())) {
                strD = zzicVar.zzv().d();
                hnbVar.zzg();
                string = hnbVar.d().getString("gmp_app_id", null);
                zIsEmpty = TextUtils.isEmpty(strD);
                boolean zIsEmpty3 = TextUtils.isEmpty(string);
                if (!zIsEmpty) {
                    Preconditions.checkNotNull(strD);
                    if (!strD.equals(string)) {
                        zzic.e(zzguVar);
                        zzguVar.zzi().zza("Rechecking which service to use due to a GMP App Id change");
                        hnbVar.zzg();
                        hnbVar.zzg();
                        if (hnbVar.d().contains("measurement_enabled")) {
                            boolValueOf = Boolean.valueOf(hnbVar.d().getBoolean("measurement_enabled", true));
                        } else {
                            boolValueOf = null;
                        }
                        SharedPreferences.Editor editorEdit4 = hnbVar.d().edit();
                        editorEdit4.clear();
                        editorEdit4.apply();
                        if (boolValueOf != null) {
                            hnbVar.zzg();
                            SharedPreferences.Editor editorEdit5 = hnbVar.d().edit();
                            editorEdit5.putBoolean("measurement_enabled", boolValueOf.booleanValue());
                            editorEdit5.apply();
                        }
                        zzicVar.zzm().zzh();
                        zzicVar.r.zzM();
                        zzicVar.r.b();
                        zzheVar.zzb(j2);
                        zzhgVar.zzb(null);
                    }
                }
                String strD3 = zzicVar.zzv().d();
                hnbVar.zzg();
                SharedPreferences.Editor editorEdit6 = hnbVar.d().edit();
                editorEdit6.putString("gmp_app_id", strD3);
                editorEdit6.apply();
            }
            if (!hnbVar.g().zzo(zzjk.ANALYTICS_STORAGE)) {
                zzhgVar.zzb(null);
            }
            zzic.d(zzljVar);
            zzljVar.g.set(zzhgVar.zza());
            zzicVar2.a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
            if (!TextUtils.isEmpty(zzicVar.zzv().d())) {
                zZzB = zzicVar.zzB();
                sharedPreferences = hnbVar.c;
                if (sharedPreferences == null) {
                    zContains = false;
                } else {
                    zContains = sharedPreferences.contains("deferred_analytics_collection");
                }
                if (!zContains) {
                    hnbVar.h(!zZzB);
                }
                if (zZzB) {
                    zzic.d(zzljVar);
                    zzljVar.zzT();
                }
                zzoc zzocVar2 = zzicVar.h;
                zzic.d(zzocVar2);
                zzocVar2.e.a();
                zzicVar.zzt().zzC(new AtomicReference());
                zzicVar.zzt().zzH(hnbVar.y.zza());
            }
        } else if (zzicVar.zzB()) {
            if (!zzppVar.z("android.permission.INTERNET")) {
                zzic.e(zzguVar);
                zzguVar.zzb().zza("App is missing INTERNET permission");
            }
            if (!zzppVar.z("android.permission.ACCESS_NETWORK_STATE")) {
                zzic.e(zzguVar);
                zzguVar.zzb().zza("App is missing ACCESS_NETWORK_STATE permission");
            }
            context = zzicVar.a;
            if (!Wrappers.packageManager(context).isCallerInstantApp()) {
                if (!zzpp.H(context)) {
                    zzic.e(zzguVar);
                    zzguVar.zzb().zza("AppMeasurementReceiver not registered/enabled");
                }
                Preconditions.checkNotNull(context);
                packageManager = context.getPackageManager();
                if (packageManager != null) {
                }
                zzic.e(zzguVar);
                zzguVar.zzb().zza("AppMeasurementService not registered/enabled");
            }
            zzic.e(zzguVar);
            zzguVar.zzb().zza("Uploading is not possible. App measurement disabled");
        }
        zzaif.zza();
        if (zzalVar.zzp(null, zzfy.zzaP)) {
            zzppVar.zzg();
            if (zzppVar.t() == 1) {
                jMax = Math.max(500L, ((((long) ((Integer) zzfy.zzaw.zzb(null)).intValue()) * 1000) + ((long) new Random().nextInt(AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH))) - zzicVar.k.elapsedRealtime());
                if (jMax > 500) {
                    zzic.e(zzguVar);
                    zzguVar.zzk().zzb("Waiting to fetch trigger URIs until some time after boot. Delay in millis", Long.valueOf(jMax));
                }
                zzic.d(zzljVar);
                zzljVar.zzg();
                zwbVar = zzljVar.l;
                if (zwbVar == null) {
                    zwb zwbVar3 = new zwb(zzljVar, zzljVar.a);
                    zzljVar.l = zwbVar3;
                    zwbVar = zwbVar3;
                }
                zwbVar.b(jMax);
            }
        }
        hnbVar.o.zzb(true);
    }
}
