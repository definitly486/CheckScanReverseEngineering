package com.google.android.gms.common.wrappers;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public class Wrappers {
    public static final Wrappers b = new Wrappers();
    public PackageManagerWrapper a = null;

    public static PackageManagerWrapper packageManager(Context context) {
        return b.zza(context);
    }

    public final synchronized PackageManagerWrapper zza(Context context) {
        PackageManagerWrapper packageManagerWrapper;
        try {
            packageManagerWrapper = this.a;
            if (packageManagerWrapper == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                packageManagerWrapper = new PackageManagerWrapper(context);
                this.a = packageManagerWrapper;
            }
        } catch (Throwable th) {
            throw th;
        }
        return packageManagerWrapper;
    }
}
