package com.google.android.gms.internal.common;

/* JADX INFO: loaded from: classes4.dex */
public final class zzj {
    public static Object a(Class cls, String str, zzi... zziVarArr) {
        int length = zziVarArr.length;
        Class<?>[] clsArr = new Class[length];
        Object[] objArr = new Object[length];
        for (int i = 0; i < zziVarArr.length; i++) {
            zzi zziVar = zziVarArr[i];
            zziVar.getClass();
            clsArr[i] = zziVar.zzc();
            objArr[i] = zziVarArr[i].zzd();
        }
        return cls.getDeclaredMethod(str, clsArr).invoke(null, objArr);
    }

    public static Object zza(Class cls, String str, zzi... zziVarArr) {
        return a(cls, "isIsolated", zziVarArr);
    }

    public static Object zzb(String str, String str2, ClassLoader classLoader, zzi... zziVarArr) {
        return a(classLoader.loadClass("com.google.android.gms.common.security.ProviderInstallerImpl"), "reportRequestStats2", zziVarArr);
    }
}
