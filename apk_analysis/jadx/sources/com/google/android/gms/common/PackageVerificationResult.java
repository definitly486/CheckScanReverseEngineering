package com.google.android.gms.common;

/* JADX INFO: loaded from: classes4.dex */
public class PackageVerificationResult {
    public final boolean a;
    public final String b;
    public final Throwable c;

    public PackageVerificationResult(boolean z, String str, Throwable th) {
        this.a = z;
        this.b = str;
        this.c = th;
    }

    public static PackageVerificationResult zza(String str, String str2, Throwable th, com.google.android.gms.common.signatureverification.zza zzaVar) {
        return new PackageVerificationResult(false, str2, th);
    }

    public static PackageVerificationResult zzd(String str, int i, com.google.android.gms.common.signatureverification.zza zzaVar) {
        return new PackageVerificationResult(true, null, null);
    }

    public final boolean zzb() {
        return this.a;
    }

    public final void zzc() {
        if (this.a) {
            return;
        }
        String strConcat = "PackageVerificationRslt: ".concat(String.valueOf(this.b));
        Throwable th = this.c;
        if (th == null) {
            throw new SecurityException(strConcat);
        }
        throw new SecurityException(strConcat, th);
    }
}
