package com.google.android.gms.common.util;

import android.os.StrictMode;
import defpackage.fza;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd {
    public static StrictMode.VmPolicy zza() {
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (PlatformVersion.isAtLeastS()) {
            StrictMode.setVmPolicy(fza.a(new StrictMode.VmPolicy.Builder(vmPolicy)).build());
        }
        return vmPolicy;
    }
}
