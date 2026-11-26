package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.common.zzh;
import com.google.android.gms.internal.common.zzi;
import com.google.android.gms.internal.common.zzj;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public class ProviderInstaller {
    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
    public static final GoogleApiAvailabilityLight a = GoogleApiAvailabilityLight.getInstance();
    public static final Object b = new Object();
    public static Method c = null;
    public static boolean d = false;

    public interface ProviderInstallListener {
        void onProviderInstallFailed(int i, Intent intent);

        void onProviderInstalled();
    }

    public static void a(Context context, String str) throws GooglePlayServicesNotAvailableException {
        try {
            Method method = c;
            if (method == null) {
                method = context.getClassLoader().loadClass(str).getMethod("insertProvider", Context.class);
                c = method;
            }
            method.invoke(null, context);
        } catch (Exception e) {
            Throwable cause = e.getCause();
            if (Log.isLoggable("ProviderInstaller", 6)) {
                Log.e("ProviderInstaller", "Failed to install provider: ".concat(String.valueOf(cause == null ? e.toString() : cause.toString())));
            }
            throw new GooglePlayServicesNotAvailableException(8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0051  */
    /* JADX WARN: Code duplicated, block: B:20:0x0052 A[Catch: all -> 0x0028, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0014, B:7:0x001b, B:14:0x0040, B:15:0x0045, B:12:0x002c, B:17:0x0047, B:28:0x0091, B:29:0x0096, B:31:0x0098, B:32:0x00a6, B:20:0x0052, B:22:0x0057, B:25:0x0081), top: B:39:0x0014, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0091 A[Catch: all -> 0x0028, TryCatch #2 {, blocks: (B:4:0x0014, B:7:0x001b, B:14:0x0040, B:15:0x0045, B:12:0x002c, B:17:0x0047, B:28:0x0091, B:29:0x0096, B:31:0x0098, B:32:0x00a6, B:20:0x0052, B:22:0x0057, B:25:0x0081), top: B:39:0x0014, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0098 A[Catch: all -> 0x0028, TryCatch #2 {, blocks: (B:4:0x0014, B:7:0x001b, B:14:0x0040, B:15:0x0045, B:12:0x002c, B:17:0x0047, B:28:0x0091, B:29:0x0096, B:31:0x0098, B:32:0x00a6, B:20:0x0052, B:22:0x0057, B:25:0x0081), top: B:39:0x0014, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void installIfNeeded(Context context) {
        boolean z;
        Context remoteContext;
        Context moduleContext;
        Preconditions.checkNotNull(context, "Context must not be null");
        a.verifyGooglePlayServicesIsAvailable(context, 11925000);
        long jUptimeMillis = SystemClock.uptimeMillis();
        synchronized (b) {
            Context context2 = null;
            if (d) {
                z = d;
                remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
                if (remoteContext == null) {
                    d = true;
                    if (!z) {
                        zzj.zzb("com.google.android.gms.common.security.ProviderInstallerImpl", "reportRequestStats2", remoteContext.getClassLoader(), zzi.zzb(Context.class, context), zzh.zza(jUptimeMillis), zzh.zza(SystemClock.uptimeMillis()));
                    }
                    context2 = remoteContext;
                }
                if (context2 != null) {
                    a(context2, "com.google.android.gms.common.security.ProviderInstallerImpl");
                    return;
                } else {
                    Log.e("ProviderInstaller", "Failed to get remote context");
                    throw new GooglePlayServicesNotAvailableException(8);
                }
            }
            try {
                moduleContext = DynamiteModule.load(context, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, "com.google.android.gms.providerinstaller.dynamite").getModuleContext();
            } catch (DynamiteModule.LoadingException e) {
                Log.w("ProviderInstaller", "Failed to load providerinstaller module: ".concat(String.valueOf(e.getMessage())));
                moduleContext = null;
            }
            if (moduleContext != null) {
                a(moduleContext, "com.google.android.gms.providerinstaller.ProviderInstallerImpl");
                return;
            }
            z = d;
            remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext == null) {
                d = true;
                if (!z) {
                    try {
                        zzj.zzb("com.google.android.gms.common.security.ProviderInstallerImpl", "reportRequestStats2", remoteContext.getClassLoader(), zzi.zzb(Context.class, context), zzh.zza(jUptimeMillis), zzh.zza(SystemClock.uptimeMillis()));
                    } catch (Exception e2) {
                        Log.w("ProviderInstaller", "Failed to report request stats: ".concat(e2.toString()));
                    }
                }
                context2 = remoteContext;
            }
            if (context2 != null) {
                a(context2, "com.google.android.gms.common.security.ProviderInstallerImpl");
                return;
            } else {
                Log.e("ProviderInstaller", "Failed to get remote context");
                throw new GooglePlayServicesNotAvailableException(8);
            }
            throw th;
        }
    }

    public static void installIfNeededAsync(Context context, ProviderInstallListener providerInstallListener) {
        Preconditions.checkNotNull(context, "Context must not be null");
        Preconditions.checkNotNull(providerInstallListener, "Listener must not be null");
        Preconditions.checkMainThread("Must be called on the UI thread");
        new a(context, providerInstallListener).execute(new Void[0]);
    }
}
