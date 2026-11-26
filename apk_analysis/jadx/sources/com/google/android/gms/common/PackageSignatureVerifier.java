package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.signatureverification.SignatureVerificationConfigurationProvider;
import com.google.android.gms.dynamite.DynamiteModule;
import defpackage.iw9;
import defpackage.ngc;
import defpackage.p0a;
import defpackage.u8c;
import defpackage.w2b;

/* JADX INFO: loaded from: classes4.dex */
public class PackageSignatureVerifier {
    public static iw9 a;
    public static volatile p0a b;

    public static synchronized void a(Context context) {
        if (a == null) {
            iw9 iw9Var = new iw9();
            u8c.a(context);
            a = iw9Var;
        }
    }

    public PackageVerificationResult queryPackageSignatureVerified(Context context, String str) {
        boolean zHonorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(context);
        a(context);
        w2b w2bVar = u8c.a;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                u8c.b();
                boolean zZzi = u8c.g.zzi();
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                if (zZzi) {
                    SignatureVerificationConfigurationProvider.zza().zza();
                    String strConcat = String.valueOf(str).concat(true != zHonorsDebugCertificates ? "-0" : "-1");
                    if (b != null && ((String) b.b).equals(strConcat)) {
                        return (PackageVerificationResult) b.c;
                    }
                    str.getClass();
                    a(context);
                    zzy zzyVarC = u8c.c(new ngc(str, zHonorsDebugCertificates, false));
                    if (zzyVarC.a) {
                        PackageVerificationResult packageVerificationResultZzd = PackageVerificationResult.zzd(str, zzyVarC.d, null);
                        b = new p0a(strConcat, packageVerificationResultZzd);
                        return packageVerificationResultZzd;
                    }
                    String str2 = zzyVarC.b;
                    Preconditions.checkNotNull(str2);
                    return PackageVerificationResult.zza(str, str2, zzyVarC.c, null);
                }
            } catch (Throwable th) {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                throw th;
            }
        } catch (RemoteException | DynamiteModule.LoadingException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
        throw new zzae();
    }

    public PackageVerificationResult queryPackageSignatureVerifiedWithRetry(Context context, String str) {
        try {
            PackageVerificationResult packageVerificationResultQueryPackageSignatureVerified = queryPackageSignatureVerified(context, str);
            packageVerificationResultQueryPackageSignatureVerified.zzc();
            return packageVerificationResultQueryPackageSignatureVerified;
        } catch (SecurityException e) {
            PackageVerificationResult packageVerificationResultQueryPackageSignatureVerified2 = queryPackageSignatureVerified(context, str);
            if (packageVerificationResultQueryPackageSignatureVerified2.zzb()) {
                Log.e("PkgSignatureVerifier", "Got flaky result during package signature verification", e);
            }
            return packageVerificationResultQueryPackageSignatureVerified2;
        }
    }
}
