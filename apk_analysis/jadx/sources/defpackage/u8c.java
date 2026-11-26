package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.zzp;
import com.google.android.gms.common.zzr;
import com.google.android.gms.common.zzt;
import com.google.android.gms.common.zzy;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes4.dex */
public final class u8c {
    public static final w2b a;
    public static final s8b b;
    public static final idb c;
    public static final mhb d;
    public static final amb e;
    public static final xpb f;
    public static volatile zzad g;
    public static final Object h;
    public static Context i;

    static {
        Charset charset = StandardCharsets.ISO_8859_1;
        a = new w2b("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u007f¢fú§p\u0085xb±".getBytes(charset));
        b = new s8b("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014QÕÛ\u0004÷XçB\u0086<".getBytes(charset));
        c = new idb("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí".getBytes(charset));
        d = new mhb("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì".getBytes(charset));
        e = new amb("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0".getBytes(charset));
        f = new xpb("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0".getBytes(charset));
        h = new Object();
    }

    public static synchronized void a(Context context) {
        if (i != null) {
            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
        } else if (context != null) {
            i = context.getApplicationContext();
        }
    }

    public static void b() {
        if (g != null) {
            return;
        }
        Preconditions.checkNotNull(i);
        synchronized (h) {
            try {
                if (g == null) {
                    g = zzac.zzb(DynamiteModule.load(i, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, "com.google.android.gms.googlecertificates").instantiate("com.google.android.gms.common.GoogleCertificatesImpl"));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r8v0, types: [android.os.IBinder, com.google.android.gms.dynamic.IObjectWrapper] */
    public static zzy c(ngc ngcVar) {
        zzy zzyVarC;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Preconditions.checkNotNull(i);
            try {
                b();
                Preconditions.checkNotNull(i);
                zzp zzpVar = new zzp(ngcVar.a, ngcVar.b, false, ObjectWrapper.wrap(i), false, true, false);
                try {
                    zzr zzrVarZzf = ngcVar.c ? g.zzf(zzpVar) : g.zzh(zzpVar);
                    if (zzrVarZzf.zza()) {
                        zzyVarC = zzy.zzf(zzrVarZzf.zze(), zzrVarZzf.zzc());
                    } else {
                        String strZzb = zzrVarZzf.zzb();
                        PackageManager.NameNotFoundException nameNotFoundException = zzrVarZzf.zzd() == 4 ? new PackageManager.NameNotFoundException() : null;
                        if (strZzb == null) {
                            strZzb = "error checking package certificate";
                        }
                        int iZze = zzrVarZzf.zze();
                        zzrVarZzf.zzd();
                        zzyVarC = new zzy(strZzb, nameNotFoundException, false, iZze);
                    }
                } catch (RemoteException e2) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                    zzyVarC = zzy.c("module call", e2);
                }
            } catch (DynamiteModule.LoadingException e3) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e3);
                zzyVarC = zzy.c("module init: ".concat(String.valueOf(e3.getMessage())), e3);
            }
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            return zzyVarC;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            throw th;
        }
    }

    @Deprecated
    public static zzy d(String str, yxb yxbVar, boolean z, boolean z2) {
        try {
            b();
            Preconditions.checkNotNull(i);
            try {
                return g.zze(new zzt(str, yxbVar, z, z2), ObjectWrapper.wrap(i.getPackageManager())) ? zzy.e : new ehc(new g1c(z, str, yxbVar));
            } catch (RemoteException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                return zzy.c("module call", e2);
            }
        } catch (DynamiteModule.LoadingException e3) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e3);
            return zzy.c("module init: ".concat(String.valueOf(e3.getMessage())), e3);
        }
    }
}
