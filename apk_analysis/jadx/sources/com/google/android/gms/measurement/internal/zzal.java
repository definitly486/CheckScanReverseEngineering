package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import defpackage.jvb;
import defpackage.u4;
import defpackage.yta;
import java.lang.reflect.InvocationTargetException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class zzal extends jvb {
    public Boolean b;
    public String c;
    public yta d;
    public Boolean e;

    public static final long zzF() {
        return ((Long) zzfy.zzd.zzb(null)).longValue();
    }

    public static final int zzG() {
        return Math.max(0, ((Integer) zzfy.zzi.zzb(null)).intValue());
    }

    public static final long zzH() {
        return ((Integer) zzfy.zzk.zzb(null)).intValue();
    }

    public static final long zzI() {
        return ((Long) zzfy.zzR.zzb(null)).longValue();
    }

    public static final long zzJ() {
        return ((Long) zzfy.zzM.zzb(null)).longValue();
    }

    public final boolean a() {
        Boolean boolE = this.b;
        if (boolE == null) {
            boolE = e("app_measurement_lite");
            this.b = boolE;
            if (boolE == null) {
                boolE = Boolean.FALSE;
                this.b = boolE;
            }
        }
        return boolE.booleanValue() || !this.a.zzp();
    }

    public final String b(String str) {
        zzic zzicVar = this.a;
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            Preconditions.checkNotNull(str2);
            return str2;
        } catch (ClassNotFoundException e) {
            zzicVar.zzaW().zzb().zzb("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            zzicVar.zzaW().zzb().zzb("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            zzicVar.zzaW().zzb().zzb("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            zzicVar.zzaW().zzb().zzb("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    public final int c(String str, boolean z) {
        return Math.max(z ? zzn(str, zzfy.zzag, 100, 500) : 500, 256);
    }

    public final Bundle d() {
        zzic zzicVar = this.a;
        try {
            if (zzicVar.zzaZ().getPackageManager() == null) {
                zzicVar.zzaW().zzb().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(zzicVar.zzaZ()).getApplicationInfo(zzicVar.zzaZ().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            zzicVar.zzaW().zzb().zza("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            zzicVar.zzaW().zzb().zzb("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final Boolean e(String str) {
        Preconditions.checkNotEmpty(str);
        Bundle bundleD = d();
        if (bundleD == null) {
            u4.e(this.a, "Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (bundleD.containsKey(str)) {
            return Boolean.valueOf(bundleD.getBoolean(str));
        }
        return null;
    }

    public final String zzA() {
        return b("debug.firebase.analytics.app");
    }

    public final String zzB() {
        return b("debug.deferred.deeplink");
    }

    public final boolean zzC(String str) {
        this.a.zzk().getClass();
        if (zzpp.y((String) zzfy.zzbg.zzb(null), str) || zzpp.y((String) zzfy.zzbh.zzb(null), str) || zzpp.y((String) zzfy.zzbi.zzb(null), str)) {
            return true;
        }
        return "1".equals(this.d.zza(str, "gaia_collection_enabled"));
    }

    public final boolean zzD(String str) {
        return "1".equals(this.d.zza(str, "measurement.event_sampling_enabled"));
    }

    public final int zzc() {
        return this.a.zzk().zzaj(201500000, true) ? 100 : 25;
    }

    public final int zzd(String str) {
        return zzn(str, zzfy.zzX, 25, 100);
    }

    public final long zzi() {
        this.a.zzaV();
        return 161000L;
    }

    @EnsuresNonNull({"this.isMainProcess"})
    public final boolean zzj() {
        if (this.e == null) {
            synchronized (this) {
                try {
                    if (this.e == null) {
                        zzic zzicVar = this.a;
                        ApplicationInfo applicationInfo = zzicVar.zzaZ().getApplicationInfo();
                        String myProcessName = ProcessUtils.getMyProcessName();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            boolean z = false;
                            if (str != null && str.equals(myProcessName)) {
                                z = true;
                            }
                            this.e = Boolean.valueOf(z);
                        }
                        if (this.e == null) {
                            this.e = Boolean.TRUE;
                            zzicVar.zzaW().zzb().zza("My process not in the list of running processes");
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.e.booleanValue();
    }

    public final String zzk(String str, zzfx zzfxVar) {
        return TextUtils.isEmpty(str) ? (String) zzfxVar.zzb(null) : (String) zzfxVar.zzb(this.d.zza(str, zzfxVar.zza()));
    }

    public final long zzl(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Long) zzfxVar.zzb(null)).longValue();
        }
        String strZza = this.d.zza(str, zzfxVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return ((Long) zzfxVar.zzb(null)).longValue();
        }
        try {
            return ((Long) zzfxVar.zzb(Long.valueOf(Long.parseLong(strZza)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) zzfxVar.zzb(null)).longValue();
        }
    }

    public final int zzm(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Integer) zzfxVar.zzb(null)).intValue();
        }
        String strZza = this.d.zza(str, zzfxVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return ((Integer) zzfxVar.zzb(null)).intValue();
        }
        try {
            return ((Integer) zzfxVar.zzb(Integer.valueOf(Integer.parseInt(strZza)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) zzfxVar.zzb(null)).intValue();
        }
    }

    public final int zzn(String str, zzfx zzfxVar, int i, int i2) {
        return Math.max(Math.min(zzm(str, zzfxVar), i2), i);
    }

    public final double zzo(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Double) zzfxVar.zzb(null)).doubleValue();
        }
        String strZza = this.d.zza(str, zzfxVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return ((Double) zzfxVar.zzb(null)).doubleValue();
        }
        try {
            return ((Double) zzfxVar.zzb(Double.valueOf(Double.parseDouble(strZza)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) zzfxVar.zzb(null)).doubleValue();
        }
    }

    public final boolean zzp(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Boolean) zzfxVar.zzb(null)).booleanValue();
        }
        String strZza = this.d.zza(str, zzfxVar.zza());
        return TextUtils.isEmpty(strZza) ? ((Boolean) zzfxVar.zzb(null)).booleanValue() : ((Boolean) zzfxVar.zzb(Boolean.valueOf("1".equals(strZza)))).booleanValue();
    }

    public final boolean zzt() {
        this.a.zzaV();
        Boolean boolE = e("firebase_analytics_collection_deactivated");
        return boolE != null && boolE.booleanValue();
    }

    public final boolean zzu() {
        Boolean boolE = e("google_analytics_adid_collection_enabled");
        return boolE == null || boolE.booleanValue();
    }

    public final boolean zzv() {
        Boolean boolE = e("google_analytics_automatic_screen_reporting_enabled");
        return boolE == null || boolE.booleanValue();
    }

    public final zzji zzw(String str, boolean z) {
        Object obj;
        Preconditions.checkNotEmpty(str);
        Bundle bundleD = d();
        zzic zzicVar = this.a;
        if (bundleD == null) {
            u4.e(zzicVar, "Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = bundleD.get(str);
        }
        if (obj == null) {
            return zzji.UNINITIALIZED;
        }
        if (Boolean.TRUE.equals(obj)) {
            return zzji.GRANTED;
        }
        if (Boolean.FALSE.equals(obj)) {
            return zzji.DENIED;
        }
        if (z && "eu_consent_policy".equals(obj)) {
            return zzji.POLICY;
        }
        zzicVar.zzaW().zze().zzb("Invalid manifest metadata for", str);
        return zzji.UNINITIALIZED;
    }

    public final boolean zzx() {
        Boolean boolE = e("google_analytics_sgtm_upload_enabled");
        if (boolE == null) {
            return false;
        }
        return boolE.booleanValue();
    }

    public final void zzy(String str) {
        this.c = str;
    }

    public final String zzz() {
        return this.c;
    }
}
