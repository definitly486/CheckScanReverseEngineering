package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.compose.material3.internal.CalendarModelKt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.internal.measurement.zzaja;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import defpackage.hnb;
import defpackage.qhb;
import defpackage.u4;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgi extends qhb {
    public String c;
    public String d;
    public int e;
    public String f;
    public String g;
    public long h;
    public final long i;
    public final long j;
    public List k;
    public String l;
    public final String m;
    public int n;
    public String o;
    public String p;
    public long q;
    public String r;

    public zzgi(zzic zzicVar, long j, long j2, String str) {
        super(zzicVar);
        this.q = 0L;
        this.r = null;
        this.i = j;
        this.j = j2;
        this.m = str;
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0249 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x0178  */
    /* JADX WARN: Code duplicated, block: B:52:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:53:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:56:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:59:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:60:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:62:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:63:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:72:0x021e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0243  */
    /* JADX WARN: Code duplicated, block: B:81:0x025a A[Catch: NameNotFoundException -> 0x0262, TRY_LEAVE, TryCatch #5 {NameNotFoundException -> 0x0262, blocks: (B:79:0x0254, B:81:0x025a), top: B:113:0x0254 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x025d A[PHI: r4 r34
      0x025d: PHI (r4v6 int) = (r4v5 int), (r4v7 int) binds: [B:85:0x0262, B:80:0x0258] A[DONT_GENERATE, DONT_INLINE]
      0x025d: PHI (r34v4 long) = (r34v3 long), (r34v6 long) binds: [B:85:0x0262, B:80:0x0258] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:89:0x02af  */
    /* JADX WARN: Code duplicated, block: B:90:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:93:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:94:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:97:0x030e  */
    public final zzr b(String str) {
        long j;
        boolean z;
        String str2;
        long jZza;
        long jMin;
        boolean z2;
        boolean z3;
        String strI;
        boolean z4;
        String str3;
        String strZzj;
        zzic zzicVar;
        long j2;
        int i;
        int i2;
        long j3;
        ApplicationInfo applicationInfo;
        zzal zzalVarZzc;
        zzfx zzfxVar;
        int iS;
        long jT;
        zzg();
        String strZzj2 = zzj();
        String strD = d();
        a();
        String str4 = this.d;
        a();
        long j4 = this.e;
        a();
        Preconditions.checkNotNull(this.f);
        String str5 = this.f;
        zzic zzicVar2 = this.a;
        zzicVar2.zzc().zzi();
        a();
        zzg();
        long j5 = this.h;
        if (j5 == 0) {
            zzpp zzppVarZzk = zzicVar2.zzk();
            Context contextZzaZ = zzicVar2.zzaZ();
            String packageName = zzicVar2.zzaZ().getPackageName();
            zzppVarZzk.zzg();
            zzic zzicVar3 = zzppVarZzk.a;
            Preconditions.checkNotNull(contextZzaZ);
            Preconditions.checkNotEmpty(packageName);
            PackageManager packageManager = contextZzaZ.getPackageManager();
            j = 0;
            MessageDigest messageDigestQ = zzpp.q();
            long jR = -1;
            if (messageDigestQ == null) {
                u4.e(zzicVar3, "Could not get MD5 instance");
            } else {
                if (packageManager != null) {
                    try {
                        if (zzppVarZzk.E(contextZzaZ, packageName)) {
                            jR = 0;
                        } else {
                            Signature[] signatureArr = Wrappers.packageManager(contextZzaZ).getPackageInfo(zzicVar3.zzaZ().getPackageName(), 64).signatures;
                            if (signatureArr == null || signatureArr.length <= 0) {
                                zzicVar3.zzaW().zze().zza("Could not get signatures");
                            } else {
                                jR = zzpp.r(messageDigestQ.digest(signatureArr[0].toByteArray()));
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        zzicVar3.zzaW().zzb().zzb("Package name not found", e);
                        j5 = 0;
                    }
                }
                j5 = 0;
                this.h = j5;
            }
            j5 = jR;
            this.h = j5;
        } else {
            j = 0;
        }
        boolean zZzB = zzicVar2.zzB();
        boolean z5 = !zzicVar2.zzd().r;
        zzg();
        if (zzicVar2.zzB()) {
            zzaja.zza();
            if (zzicVar2.zzc().zzp(null, zzfy.zzaH)) {
                zzicVar2.zzaW().zzk().zza("Disabled IID for tests.");
            } else {
                try {
                    Class<?> clsLoadClass = zzicVar2.zzaZ().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                    if (clsLoadClass != null) {
                        try {
                            z = z5;
                            String str6 = null;
                            try {
                                Object objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, zzicVar2.zzaZ());
                                if (objInvoke != null) {
                                    try {
                                        str6 = (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", null).invoke(objInvoke, null);
                                    } catch (Exception unused) {
                                        zzicVar2.zzaW().zzh().zza("Failed to retrieve Firebase Instance Id");
                                        str2 = null;
                                    }
                                }
                                str2 = str6;
                            } catch (Exception unused2) {
                                zzicVar2.zzaW().zzf().zza("Failed to obtain Firebase Analytics instance");
                                str2 = null;
                                jZza = zzicVar2.zzd().f.zza();
                                jMin = zzicVar2.D;
                                if (jZza != j) {
                                    jMin = Math.min(jMin, jZza);
                                }
                                a();
                                int i3 = this.n;
                                boolean zZzu = zzicVar2.zzc().zzu();
                                hnb hnbVarZzd = zzicVar2.zzd();
                                hnbVarZzd.zzg();
                                z2 = hnbVarZzd.d().getBoolean("deferred_analytics_collection", false);
                                if (zzicVar2.zzc().zzw("google_analytics_default_allow_ad_personalization_signals", true) != zzji.GRANTED) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                Boolean boolValueOf = Boolean.valueOf(z3);
                                List list = this.k;
                                String strZzl = zzicVar2.zzd().g().zzl();
                                strI = this.l;
                                if (strI == null) {
                                    strI = zzicVar2.zzk().I();
                                    this.l = strI;
                                }
                                String str7 = strI;
                                if (zzicVar2.zzd().g().zzo(zzjk.ANALYTICS_STORAGE)) {
                                    zzg();
                                    if (this.q == j) {
                                        z4 = z2;
                                    } else {
                                        long jCurrentTimeMillis = zzicVar2.zzba().currentTimeMillis() - this.q;
                                        z4 = z2;
                                        if (this.p != null) {
                                            c();
                                        }
                                    }
                                    if (this.p == null) {
                                        c();
                                    }
                                    str3 = this.p;
                                } else {
                                    z4 = z2;
                                    str3 = null;
                                }
                                boolean zZzx = zzicVar2.zzc().zzx();
                                zzpp zzppVarZzk2 = zzicVar2.zzk();
                                String str8 = str3;
                                strZzj = zzj();
                                zzicVar = zzppVarZzk2.a;
                                if (zzicVar.zzaZ().getPackageManager() == null) {
                                    j2 = jMin;
                                    j3 = j;
                                } else {
                                    try {
                                        j2 = jMin;
                                        i = 0;
                                        try {
                                            applicationInfo = Wrappers.packageManager(zzicVar.zzaZ()).getApplicationInfo(strZzj, 0);
                                            if (applicationInfo != null) {
                                                i2 = applicationInfo.targetSdkVersion;
                                            } else {
                                                i2 = i;
                                            }
                                        } catch (PackageManager.NameNotFoundException unused3) {
                                            zzic zzicVar4 = zzppVarZzk2.a;
                                            zzicVar4.zzaV();
                                            zzicVar4.zzaW().zzi().zzb("PackageManager failed to find running app: app_id", strZzj);
                                        }
                                    } catch (PackageManager.NameNotFoundException unused4) {
                                        j2 = jMin;
                                        i = 0;
                                    }
                                    j3 = i2;
                                }
                                int iZzb = zzicVar2.zzd().g().zzb();
                                hnb hnbVarZzd2 = zzicVar2.zzd();
                                hnbVarZzd2.zzg();
                                String strZze = zzba.zzg(hnbVarZzd2.d().getString("dma_consent_settings", null)).zze();
                                zzaif.zza();
                                zzalVarZzc = zzicVar2.zzc();
                                long j6 = j3;
                                zzfxVar = zzfy.zzaP;
                                if (zzalVarZzc.zzp(null, zzfxVar)) {
                                    zzicVar2.zzk().getClass();
                                    iS = zzpp.s();
                                } else {
                                    iS = 0;
                                }
                                zzaif.zza();
                                if (zzicVar2.zzc().zzp(null, zzfxVar)) {
                                    jT = zzicVar2.zzk().t();
                                } else {
                                    jT = j;
                                }
                                String strZzz = zzicVar2.zzc().zzz();
                                String strValueOf = String.valueOf(zzjl.d(zzicVar2.zzc().zzw("google_analytics_default_allow_ad_personalization_signals", true)));
                                long j7 = zzicVar2.D;
                                int iZza = zzicVar2.zzx().b().zza();
                                int i4 = iS;
                                if (zzicVar2.zzc().zzp(null, zzfy.zzbe)) {
                                    j = zzicVar2.E;
                                }
                                return new zzr(strZzj2, strD, str4, j4, str5, 161000L, j5, str, zZzB, z, str2, j2, i3, zZzu, z4, boolValueOf, this.i, list, strZzl, str7, str8, zZzx, j6, iZzb, strZze, i4, jT, strZzz, strValueOf, j7, iZza, j);
                            }
                        } catch (Exception unused5) {
                            z = z5;
                        }
                    }
                } catch (ClassNotFoundException unused6) {
                    z = z5;
                }
            }
            z = z5;
            str2 = null;
        } else {
            z = z5;
            str2 = null;
        }
        jZza = zzicVar2.zzd().f.zza();
        jMin = zzicVar2.D;
        if (jZza != j) {
            jMin = Math.min(jMin, jZza);
        }
        a();
        int i5 = this.n;
        boolean zZzu2 = zzicVar2.zzc().zzu();
        hnb hnbVarZzd3 = zzicVar2.zzd();
        hnbVarZzd3.zzg();
        z2 = hnbVarZzd3.d().getBoolean("deferred_analytics_collection", false);
        if (zzicVar2.zzc().zzw("google_analytics_default_allow_ad_personalization_signals", true) != zzji.GRANTED) {
            z3 = true;
        } else {
            z3 = false;
        }
        Boolean boolValueOf2 = Boolean.valueOf(z3);
        List list2 = this.k;
        String strZzl2 = zzicVar2.zzd().g().zzl();
        strI = this.l;
        if (strI == null) {
            strI = zzicVar2.zzk().I();
            this.l = strI;
        }
        String str9 = strI;
        if (zzicVar2.zzd().g().zzo(zzjk.ANALYTICS_STORAGE)) {
            z4 = z2;
            str3 = null;
        } else {
            zzg();
            if (this.q == j) {
                z4 = z2;
            } else {
                long jCurrentTimeMillis2 = zzicVar2.zzba().currentTimeMillis() - this.q;
                z4 = z2;
                if (this.p != null && jCurrentTimeMillis2 > CalendarModelKt.MillisecondsIn24Hours && this.r == null) {
                    c();
                }
            }
            if (this.p == null) {
                c();
            }
            str3 = this.p;
        }
        boolean zZzx2 = zzicVar2.zzc().zzx();
        zzpp zzppVarZzk3 = zzicVar2.zzk();
        String str10 = str3;
        strZzj = zzj();
        zzicVar = zzppVarZzk3.a;
        if (zzicVar.zzaZ().getPackageManager() == null) {
            j2 = jMin;
            j3 = j;
        } else {
            j2 = jMin;
            i = 0;
            applicationInfo = Wrappers.packageManager(zzicVar.zzaZ()).getApplicationInfo(strZzj, 0);
            if (applicationInfo != null) {
                i2 = applicationInfo.targetSdkVersion;
            } else {
                i2 = i;
            }
            j3 = i2;
        }
        int iZzb2 = zzicVar2.zzd().g().zzb();
        hnb hnbVarZzd4 = zzicVar2.zzd();
        hnbVarZzd4.zzg();
        String strZze2 = zzba.zzg(hnbVarZzd4.d().getString("dma_consent_settings", null)).zze();
        zzaif.zza();
        zzalVarZzc = zzicVar2.zzc();
        long j8 = j3;
        zzfxVar = zzfy.zzaP;
        if (zzalVarZzc.zzp(null, zzfxVar)) {
            zzicVar2.zzk().getClass();
            iS = zzpp.s();
        } else {
            iS = 0;
        }
        zzaif.zza();
        if (zzicVar2.zzc().zzp(null, zzfxVar)) {
            jT = zzicVar2.zzk().t();
        } else {
            jT = j;
        }
        String strZzz2 = zzicVar2.zzc().zzz();
        String strValueOf2 = String.valueOf(zzjl.d(zzicVar2.zzc().zzw("google_analytics_default_allow_ad_personalization_signals", true)));
        long j9 = zzicVar2.D;
        int iZza2 = zzicVar2.zzx().b().zza();
        int i6 = iS;
        if (zzicVar2.zzc().zzp(null, zzfy.zzbe)) {
            j = zzicVar2.E;
        }
        return new zzr(strZzj2, strD, str4, j4, str5, 161000L, j5, str, zZzB, z, str2, j2, i5, zZzu2, z4, boolValueOf2, this.i, list2, strZzl2, str9, str10, zZzx2, j8, iZzb2, strZze2, i6, jT, strZzz2, strValueOf2, j9, iZza2, j);
    }

    public final void c() {
        String str;
        zzg();
        zzic zzicVar = this.a;
        if (zzicVar.zzd().g().zzo(zzjk.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            zzicVar.zzk().J().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            zzicVar.zzaW().zzj().zza("Analytics Storage consent is not granted");
            str = null;
        }
        zzicVar.zzaW().zzj().zza("Resetting session stitching token to ".concat(str == null ? "null" : "not null"));
        this.p = str;
        this.q = zzicVar.zzba().currentTimeMillis();
    }

    public final String d() {
        zzg();
        a();
        Preconditions.checkNotNull(this.o);
        return this.o;
    }

    @Override // defpackage.qhb
    public final boolean zze() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x0221 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:41:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:43:0x0107  */
    /* JADX WARN: Code duplicated, block: B:44:0x0115  */
    /* JADX WARN: Code duplicated, block: B:45:0x0123  */
    /* JADX WARN: Code duplicated, block: B:46:0x0131  */
    /* JADX WARN: Code duplicated, block: B:47:0x013f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0159  */
    /* JADX WARN: Code duplicated, block: B:52:0x015a A[Catch: IllegalStateException -> 0x0186, TryCatch #3 {IllegalStateException -> 0x0186, blocks: (B:49:0x0151, B:53:0x0168, B:57:0x0170, B:59:0x0174, B:52:0x015a), top: B:102:0x0151 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x016e  */
    /* JADX WARN: Code duplicated, block: B:56:0x016f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0174 A[Catch: IllegalStateException -> 0x0186, TRY_LEAVE, TryCatch #3 {IllegalStateException -> 0x0186, blocks: (B:49:0x0151, B:53:0x0168, B:57:0x0170, B:59:0x0174, B:52:0x015a), top: B:102:0x0151 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x01af  */
    /* JADX WARN: Code duplicated, block: B:67:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:70:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:74:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:75:0x01da A[Catch: NotFoundException -> 0x01df, TRY_LEAVE, TryCatch #4 {NotFoundException -> 0x01df, blocks: (B:72:0x01c7, B:75:0x01da), top: B:104:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:83:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:84:0x0204  */
    /* JADX WARN: Code duplicated, block: B:87:0x020e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0221 A[EDGE_INSN: B:90:0x0221->B:91:0x0223 BREAK  A[LOOP:0: B:85:0x0208->B:108:?]] */
    /* JADX WARN: Code duplicated, block: B:92:0x0225  */
    /* JADX WARN: Code duplicated, block: B:94:0x0230  */
    @Override // defpackage.qhb
    @EnsuresNonNull({RemoteConfigConstants.RequestFieldKey.APP_ID, "appStore", "appName", "gmpAppId", "gaAppId"})
    public final void zzf() {
        String str;
        String string;
        int iZzC;
        List listAsList;
        zzic zzicVar;
        Bundle bundleD;
        Integer numValueOf;
        String[] stringArray;
        Iterator it;
        String strZza;
        zzic zzicVar2 = this.a;
        zzicVar2.zzaW().zzk().zzc("sdkVersion bundled with app, dynamiteVersion", Long.valueOf(this.j), Long.valueOf(this.i));
        String packageName = zzicVar2.zzaZ().getPackageName();
        PackageManager packageManager = zzicVar2.zzaZ().getPackageManager();
        String str2 = "";
        int i = Integer.MIN_VALUE;
        String str3 = "Unknown";
        String installerPackageName = "unknown";
        try {
            if (packageManager != null) {
                try {
                    installerPackageName = packageManager.getInstallerPackageName(packageName);
                } catch (IllegalArgumentException unused) {
                    zzicVar2.zzaW().zzb().zzb("Error retrieving app installer package name. appId", zzgu.d(packageName));
                }
                if (installerPackageName == null) {
                    installerPackageName = "manual_install";
                } else if ("com.android.vending".equals(installerPackageName)) {
                    installerPackageName = "";
                }
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(zzicVar2.zzaZ().getPackageName(), 0);
                    if (packageInfo != null) {
                        CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                        string = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                        try {
                            str3 = packageInfo.versionName;
                            i = packageInfo.versionCode;
                        } catch (PackageManager.NameNotFoundException unused2) {
                            str = str3;
                            str3 = string;
                            zzicVar2.zzaW().zzb().zzc("Error retrieving package info. appId, appName", zzgu.d(packageName), str3);
                            string = str3;
                            str3 = str;
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused3) {
                    str = "Unknown";
                }
                this.c = packageName;
                this.f = installerPackageName;
                this.d = str3;
                this.e = i;
                this.g = string;
                this.h = 0L;
                iZzC = zzicVar2.zzC();
                if (iZzC != 0) {
                    zzicVar2.zzaW().zzk().zza("App measurement collection enabled");
                } else if (iZzC != 1) {
                    zzicVar2.zzaW().zzi().zza("App measurement deactivated via the manifest");
                } else if (iZzC != 3) {
                    zzicVar2.zzaW().zzi().zza("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                } else if (iZzC != 4) {
                    zzicVar2.zzaW().zzi().zza("App measurement disabled via the manifest");
                } else if (iZzC != 6) {
                    zzicVar2.zzaW().zzh().zza("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                } else if (iZzC != 7) {
                    zzicVar2.zzaW().zzi().zza("App measurement disabled via the global data collection setting");
                } else if (iZzC != 8) {
                    zzicVar2.zzaW().zzi().zza("App measurement disabled");
                    zzicVar2.zzaW().zzc().zza("Invalid scion state in identity");
                } else {
                    zzicVar2.zzaW().zzi().zza("App measurement disabled due to denied storage consent");
                }
                this.o = "";
                zzicVar2.zzaV();
                strZza = this.m;
                if (!TextUtils.isEmpty(strZza)) {
                    strZza = zzlt.zza(zzicVar2.zzaZ(), "google_app_id", zzicVar2.zzq());
                }
                if (TextUtils.isEmpty(strZza)) {
                    str2 = strZza;
                }
                this.o = str2;
                if (iZzC == 0) {
                    zzicVar2.zzaW().zzk().zzc("App measurement enabled for app package, google app id", this.c, this.o);
                }
                listAsList = null;
                this.k = null;
                zzicVar2.zzaV();
                zzal zzalVarZzc = zzicVar2.zzc();
                zzicVar = zzalVarZzc.a;
                Preconditions.checkNotEmpty("analytics.safelisted_events");
                bundleD = zzalVarZzc.d();
                if (bundleD == null) {
                    if (!bundleD.containsKey("analytics.safelisted_events")) {
                        numValueOf = Integer.valueOf(bundleD.getInt("analytics.safelisted_events"));
                    }
                    if (numValueOf != null) {
                        try {
                            stringArray = zzicVar.zzaZ().getResources().getStringArray(numValueOf.intValue());
                            if (stringArray == null) {
                                listAsList = Arrays.asList(stringArray);
                            }
                        } catch (Resources.NotFoundException e) {
                            zzicVar.zzaW().zzb().zzb("Failed to load string array from metadata: resource not found", e);
                        }
                    }
                    if (listAsList != null) {
                        this.k = listAsList;
                        break;
                    } else if (listAsList.isEmpty()) {
                        it = listAsList.iterator();
                        do {
                            if (it.hasNext()) {
                                this.k = listAsList;
                                break;
                            }
                        } while (zzicVar2.zzk().O("safelisted event", (String) it.next()));
                    } else {
                        zzicVar2.zzaW().zzh().zza("Safelisted event list is empty. Ignoring");
                    }
                    if (packageManager != null) {
                        this.n = InstantApps.isInstantApp(zzicVar2.zzaZ()) ? 1 : 0;
                    } else {
                        this.n = 0;
                    }
                }
                u4.e(zzicVar, "Failed to load metadata: Metadata bundle is null");
                numValueOf = null;
                if (numValueOf != null) {
                    stringArray = zzicVar.zzaZ().getResources().getStringArray(numValueOf.intValue());
                    if (stringArray == null) {
                        listAsList = Arrays.asList(stringArray);
                    }
                }
                if (listAsList != null) {
                    this.k = listAsList;
                    break;
                } else if (listAsList.isEmpty()) {
                    it = listAsList.iterator();
                    do {
                        if (it.hasNext()) {
                            this.k = listAsList;
                            break;
                        }
                    } while (zzicVar2.zzk().O("safelisted event", (String) it.next()));
                } else {
                    zzicVar2.zzaW().zzh().zza("Safelisted event list is empty. Ignoring");
                }
                if (packageManager != null) {
                    this.n = InstantApps.isInstantApp(zzicVar2.zzaZ()) ? 1 : 0;
                } else {
                    this.n = 0;
                }
            }
            zzicVar2.zzaW().zzb().zzb("PackageManager is null, app identity information might be inaccurate. appId", zzgu.d(packageName));
            strZza = this.m;
            if (!TextUtils.isEmpty(strZza)) {
                strZza = zzlt.zza(zzicVar2.zzaZ(), "google_app_id", zzicVar2.zzq());
            }
            if (TextUtils.isEmpty(strZza)) {
                str2 = strZza;
            }
            this.o = str2;
            if (iZzC == 0) {
                zzicVar2.zzaW().zzk().zzc("App measurement enabled for app package, google app id", this.c, this.o);
            }
        } catch (IllegalStateException e2) {
            zzicVar2.zzaW().zzb().zzc("Fetching Google App Id failed with exception. appId", zzgu.d(packageName), e2);
        }
        string = "Unknown";
        this.c = packageName;
        this.f = installerPackageName;
        this.d = str3;
        this.e = i;
        this.g = string;
        this.h = 0L;
        iZzC = zzicVar2.zzC();
        if (iZzC != 0) {
            zzicVar2.zzaW().zzk().zza("App measurement collection enabled");
        } else if (iZzC != 1) {
            zzicVar2.zzaW().zzi().zza("App measurement deactivated via the manifest");
        } else if (iZzC != 3) {
            zzicVar2.zzaW().zzi().zza("App measurement disabled by setAnalyticsCollectionEnabled(false)");
        } else if (iZzC != 4) {
            zzicVar2.zzaW().zzi().zza("App measurement disabled via the manifest");
        } else if (iZzC != 6) {
            zzicVar2.zzaW().zzh().zza("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
        } else if (iZzC != 7) {
            zzicVar2.zzaW().zzi().zza("App measurement disabled via the global data collection setting");
        } else if (iZzC != 8) {
            zzicVar2.zzaW().zzi().zza("App measurement disabled");
            zzicVar2.zzaW().zzc().zza("Invalid scion state in identity");
        } else {
            zzicVar2.zzaW().zzi().zza("App measurement disabled due to denied storage consent");
        }
        this.o = "";
        zzicVar2.zzaV();
        listAsList = null;
        this.k = null;
        zzicVar2.zzaV();
        zzal zzalVarZzc2 = zzicVar2.zzc();
        zzicVar = zzalVarZzc2.a;
        Preconditions.checkNotEmpty("analytics.safelisted_events");
        bundleD = zzalVarZzc2.d();
        if (bundleD == null) {
            if (!bundleD.containsKey("analytics.safelisted_events")) {
                numValueOf = Integer.valueOf(bundleD.getInt("analytics.safelisted_events"));
            }
            if (numValueOf != null) {
                stringArray = zzicVar.zzaZ().getResources().getStringArray(numValueOf.intValue());
                if (stringArray == null) {
                    listAsList = Arrays.asList(stringArray);
                }
            }
            if (listAsList != null) {
                this.k = listAsList;
                break;
            } else if (listAsList.isEmpty()) {
                it = listAsList.iterator();
                do {
                    if (it.hasNext()) {
                        this.k = listAsList;
                        break;
                    }
                } while (zzicVar2.zzk().O("safelisted event", (String) it.next()));
            } else {
                zzicVar2.zzaW().zzh().zza("Safelisted event list is empty. Ignoring");
            }
            if (packageManager != null) {
                this.n = InstantApps.isInstantApp(zzicVar2.zzaZ()) ? 1 : 0;
            } else {
                this.n = 0;
            }
        }
        u4.e(zzicVar, "Failed to load metadata: Metadata bundle is null");
        numValueOf = null;
        if (numValueOf != null) {
            stringArray = zzicVar.zzaZ().getResources().getStringArray(numValueOf.intValue());
            if (stringArray == null) {
                listAsList = Arrays.asList(stringArray);
            }
        }
        if (listAsList != null) {
            this.k = listAsList;
            break;
        } else if (listAsList.isEmpty()) {
            it = listAsList.iterator();
            do {
                if (it.hasNext()) {
                    this.k = listAsList;
                    break;
                }
            } while (zzicVar2.zzk().O("safelisted event", (String) it.next()));
        } else {
            zzicVar2.zzaW().zzh().zza("Safelisted event list is empty. Ignoring");
        }
        if (packageManager != null) {
            this.n = InstantApps.isInstantApp(zzicVar2.zzaZ()) ? 1 : 0;
        } else {
            this.n = 0;
        }
    }

    public final String zzj() {
        a();
        Preconditions.checkNotNull(this.c);
        return this.c;
    }
}
