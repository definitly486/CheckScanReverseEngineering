package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhk {
    public final zzic a;

    public zzhk(zzpg zzpgVar) {
        this.a = zzpgVar.l;
    }

    public final boolean a() {
        zzic zzicVar = this.a;
        try {
            PackageManagerWrapper packageManagerWrapperPackageManager = Wrappers.packageManager(zzicVar.zzaZ());
            if (packageManagerWrapperPackageManager != null) {
                return packageManagerWrapperPackageManager.getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
            }
            zzicVar.zzaW().zzk().zza("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e) {
            zzicVar.zzaW().zzk().zzb("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
