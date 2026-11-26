package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.common.zzad;
import com.google.android.gms.internal.common.zzah;
import com.google.android.gms.internal.common.zzal;
import defpackage.mra;
import defpackage.mub;
import defpackage.ngc;
import defpackage.p6c;
import defpackage.u8c;
import defpackage.w2b;
import defpackage.yxb;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class GoogleSignatureVerifier {
    public static GoogleSignatureVerifier c;
    public final Context a;
    public volatile String b;

    public GoogleSignatureVerifier(Context context) {
        this.a = context.getApplicationContext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static final boolean a(PackageInfo packageInfo, boolean z) {
        zzah zzahVarZzj;
        if (packageInfo != null) {
            if (z && ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName))) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z = (applicationInfo == null || (applicationInfo.flags & TsExtractor.TS_STREAM_TYPE_AC3) == 0) ? false : true;
            }
            try {
                zzah zzahVar = z ? p6c.c : p6c.b;
                int i = Build.VERSION.SDK_INT;
                if (i < 28) {
                    Signature[] signatureArr = packageInfo.signatures;
                    byte[] byteArray = null;
                    if (signatureArr != null && signatureArr.length == 1) {
                        byteArray = signatureArr[0].toByteArray();
                    }
                    zzahVarZzj = byteArray != null ? zzah.zzk(byteArray) : zzah.zzj();
                } else {
                    com.google.android.gms.internal.common.zzr.zza(i >= 28);
                    SigningInfo signingInfo = packageInfo.signingInfo;
                    if (signingInfo == null || signingInfo.hasMultipleSigners() || signingInfo.getSigningCertificateHistory() == null) {
                        zzahVarZzj = zzah.zzj();
                    } else {
                        mra mraVar = zzah.c;
                        zzad zzadVar = new zzad();
                        for (Signature signature : signingInfo.getSigningCertificateHistory()) {
                            zzadVar.zzb(signature.toByteArray());
                        }
                        zzahVarZzj = zzadVar.zzd();
                    }
                }
                if (zzahVarZzj.isEmpty()) {
                    throw new IllegalArgumentException("Unable to obtain package certificate history.");
                }
                zzah zzahVarZzh = zzahVarZzj.zzh();
                int size = zzahVarZzh.size();
                int i2 = 0;
                while (i2 < size) {
                    byte[] bArr = (byte[]) zzahVarZzh.get(i2);
                    zzal zzalVarListIterator = zzahVar.listIterator(0);
                    do {
                        int i3 = i2 + 1;
                        if (!zzalVarListIterator.hasNext()) {
                            i2 = i3;
                        }
                    } while (!Arrays.equals(bArr, (byte[]) zzalVarListIterator.next()));
                    return true;
                }
            } catch (IllegalArgumentException unused) {
                Log.i("GoogleSignatureVerifier", "package info is not set correctly");
                if ((z ? c(packageInfo, p6c.a) : c(packageInfo, p6c.a[0])) == null) {
                    return false;
                }
            }
        }
        return false;
    }

    public static mub c(PackageInfo packageInfo, mub... mubVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            yxb yxbVar = new yxb(packageInfo.signatures[0].toByteArray());
            for (int i = 0; i < mubVarArr.length; i++) {
                if (mubVarArr[i].equals(yxbVar)) {
                    return mubVarArr[i];
                }
            }
        }
        return null;
    }

    public static GoogleSignatureVerifier getInstance(Context context) {
        GoogleSignatureVerifier googleSignatureVerifier;
        Preconditions.checkNotNull(context);
        synchronized (GoogleSignatureVerifier.class) {
            try {
                googleSignatureVerifier = c;
                if (googleSignatureVerifier == null) {
                    u8c.a(context);
                    googleSignatureVerifier = new GoogleSignatureVerifier(context);
                    c = googleSignatureVerifier;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return googleSignatureVerifier;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00b9  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.os.StrictMode$ThreadPolicy] */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    public final zzy b(String str) {
        zzy zzyVarB;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return zzy.b("null pkg");
        }
        if (str.equals(this.b)) {
            return zzy.e;
        }
        w2b w2bVar = u8c.a;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                u8c.b();
                boolean zZzg = u8c.g.zzg();
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                if (zZzg) {
                    zzyVarB = u8c.c(new ngc(str, GooglePlayServicesUtilLight.honorsDebugCertificates(this.a), true));
                } else {
                    threadPolicyAllowThreadDiskReads = Build.VERSION.SDK_INT;
                    try {
                        PackageInfo packageInfo = this.a.getPackageManager().getPackageInfo(str, threadPolicyAllowThreadDiskReads >= 28 ? 134217792 : 64);
                        boolean zHonorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.a);
                        if (packageInfo == null) {
                            zzyVarB = zzy.b("null pkg");
                        } else {
                            Signature[] signatureArr = packageInfo.signatures;
                            if (signatureArr == null || signatureArr.length != 1) {
                                zzyVarB = zzy.b("single cert required");
                            } else {
                                yxb yxbVar = new yxb(packageInfo.signatures[0].toByteArray());
                                String str2 = packageInfo.packageName;
                                StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads2 = StrictMode.allowThreadDiskReads();
                                try {
                                    zzy zzyVarD = u8c.d(str2, yxbVar, zHonorsDebugCertificates, false);
                                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads2);
                                    if (!zzyVarD.a || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 2) == 0) {
                                        zzyVarB = zzyVarD;
                                    } else {
                                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads3 = StrictMode.allowThreadDiskReads();
                                        try {
                                            zzy zzyVarD2 = u8c.d(str2, yxbVar, false, true);
                                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads3);
                                            if (zzyVarD2.a) {
                                                zzyVarB = zzy.b("debuggable release cert app rejected");
                                            } else {
                                                zzyVarB = zzyVarD;
                                            }
                                        } catch (Throwable th) {
                                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads3);
                                            throw th;
                                        }
                                    }
                                } catch (Throwable th2) {
                                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads2);
                                    throw th2;
                                }
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        return zzy.c("no pkg ".concat(str), e);
                    }
                }
            } catch (Throwable th3) {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                throw th3;
            }
        } catch (RemoteException | DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
        if (zzyVarB.a) {
            this.b = str;
        }
        return zzyVarB;
    }

    public boolean isGooglePublicSignedPackage(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (a(packageInfo, false)) {
            return true;
        }
        if (a(packageInfo, true)) {
            if (GooglePlayServicesUtilLight.honorsDebugCertificates(this.a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    public boolean isPackageGoogleSigned(String str) {
        zzy zzyVarB = b(str);
        zzyVarB.d();
        return zzyVarB.a;
    }

    public boolean isUidGoogleSigned(int i) {
        zzy zzyVarB;
        String[] packagesForUid = this.a.getPackageManager().getPackagesForUid(i);
        if (packagesForUid == null || (packagesForUid.length) == 0) {
            zzyVarB = zzy.b("no pkgs");
        } else {
            zzyVarB = null;
            for (String str : packagesForUid) {
                zzyVarB = b(str);
                if (!zzyVarB.a) {
                }
            }
            Preconditions.checkNotNull(zzyVarB);
        }
        zzyVarB.d();
        return zzyVarB.a;
    }
}
