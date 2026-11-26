package io.appmetrica.analytics.coreutils.internal.services;

import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes5.dex */
public final class SafePackageManagerHelperForR {
    public static final SafePackageManagerHelperForR INSTANCE = new SafePackageManagerHelperForR();

    private SafePackageManagerHelperForR() {
    }

    public static final String extractPackageInstaller(PackageManager packageManager, String str) {
        return packageManager.getInstallSourceInfo(str).getInstallingPackageName();
    }
}
