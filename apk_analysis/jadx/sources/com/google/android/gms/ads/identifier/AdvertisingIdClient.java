package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.work.WorkRequest;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.ads_identifier.zzf;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class AdvertisingIdClient {
    private static final Object zzg = new Object();
    private static volatile AdvertisingIdClient zzh;
    BlockingServiceConnection zza;
    zzf zzb;
    boolean zzc;
    final Object zzd;
    zzb zze;
    final long zzf;
    private final Context zzi;

    public static final class Info {
        private final String zza;
        private final boolean zzb;

        @Deprecated
        public Info(String str, boolean z) {
            this.zza = str;
            this.zzb = z;
        }

        public String getId() {
            return this.zza;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.zzb;
        }

        public String toString() {
            String str = this.zza;
            int length = String.valueOf(str).length();
            boolean z = this.zzb;
            StringBuilder sb = new StringBuilder(length + 2 + String.valueOf(z).length());
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    public AdvertisingIdClient(Context context, long j, boolean z, boolean z2) {
        this.zzd = new Object();
        Preconditions.checkNotNull(context);
        this.zzi = context.getApplicationContext();
        this.zzc = false;
        this.zzf = j;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:51:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c0  */
    public static Info getAdvertisingIdInfo(Context context) {
        Context context2;
        AdvertisingIdClient advertisingIdClient;
        zzd zzdVar;
        Throwable th;
        int i;
        int i2;
        AdvertisingIdClient advertisingIdClient2 = zzh;
        if (advertisingIdClient2 == null) {
            synchronized (zzg) {
                try {
                    advertisingIdClient2 = zzh;
                    if (advertisingIdClient2 == null) {
                        Log.d("AdvertisingIdClient", "Creating AdvertisingIdClient");
                        context2 = context;
                        advertisingIdClient2 = new AdvertisingIdClient(context2);
                        zzh = advertisingIdClient2;
                    } else {
                        context2 = context;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else {
            context2 = context;
        }
        Log.d("AdvertisingIdClient", "AdvertisingIdClient already created.");
        zzd zzdVarZza = zzd.zza(context2);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            Info infoZzf = advertisingIdClient2.zzf(-1);
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
            advertisingIdClient = advertisingIdClient2;
            try {
                advertisingIdClient.zzd(infoZzf, true, 0.0f, jElapsedRealtime2, "", null);
                try {
                    try {
                        zzdVarZza.zzb(35401, 0, jElapsedRealtime, SystemClock.elapsedRealtime(), (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                        zzdVar = zzdVarZza;
                        jElapsedRealtime = jElapsedRealtime;
                        try {
                            StringBuilder sb = new StringBuilder(String.valueOf(jElapsedRealtime2).length() + 25);
                            sb.append("GetInfoInternal elapse ");
                            sb.append(jElapsedRealtime2);
                            sb.append("ms");
                            Log.i("AdvertisingIdClient", sb.toString());
                            return infoZzf;
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            advertisingIdClient.zzd(null, true, 0.0f, -1L, "", th);
                            if (th instanceof IOException) {
                                i = 1;
                            } else if (th instanceof GooglePlayServicesNotAvailableException) {
                                i = 9;
                            } else {
                                if (!(th instanceof GooglePlayServicesRepairableException)) {
                                    if (th instanceof IllegalStateException) {
                                        i = 8;
                                    } else {
                                        i2 = -1;
                                    }
                                    zzdVar.zzb(35401, i2, jElapsedRealtime, SystemClock.elapsedRealtime(), (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                                    throw th;
                                }
                                i = 16;
                            }
                            i2 = i;
                            zzdVar.zzb(35401, i2, jElapsedRealtime, SystemClock.elapsedRealtime(), (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        zzdVar = zzdVarZza;
                        jElapsedRealtime = jElapsedRealtime;
                        th = th;
                        advertisingIdClient.zzd(null, true, 0.0f, -1L, "", th);
                        if (th instanceof IOException) {
                            i = 1;
                        } else if (th instanceof GooglePlayServicesNotAvailableException) {
                            i = 9;
                        } else {
                            if (!(th instanceof GooglePlayServicesRepairableException)) {
                                if (th instanceof IllegalStateException) {
                                    i = 8;
                                } else {
                                    i2 = -1;
                                }
                                zzdVar.zzb(35401, i2, jElapsedRealtime, SystemClock.elapsedRealtime(), (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                                throw th;
                            }
                            i = 16;
                        }
                        i2 = i;
                        zzdVar.zzb(35401, i2, jElapsedRealtime, SystemClock.elapsedRealtime(), (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    zzdVar = zzdVarZza;
                }
            } catch (Throwable th6) {
                th = th6;
                zzdVar = zzdVarZza;
                th = th;
                advertisingIdClient.zzd(null, true, 0.0f, -1L, "", th);
                if (th instanceof IOException) {
                    i = 1;
                } else if (th instanceof GooglePlayServicesNotAvailableException) {
                    i = 9;
                } else {
                    if (!(th instanceof GooglePlayServicesRepairableException)) {
                        if (th instanceof IllegalStateException) {
                            i = 8;
                        } else {
                            i2 = -1;
                        }
                        zzdVar.zzb(35401, i2, jElapsedRealtime, SystemClock.elapsedRealtime(), (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                        throw th;
                    }
                    i = 16;
                }
                i2 = i;
                zzdVar.zzb(35401, i2, jElapsedRealtime, SystemClock.elapsedRealtime(), (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            advertisingIdClient = advertisingIdClient2;
        }
    }

    public static boolean getIsAdIdFakeForDebugLogging(Context context) {
        boolean zZze;
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, false, false);
        try {
            advertisingIdClient.zza(false);
            Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
            synchronized (advertisingIdClient) {
                advertisingIdClient.zze();
                Preconditions.checkNotNull(advertisingIdClient.zza);
                Preconditions.checkNotNull(advertisingIdClient.zzb);
                try {
                    zZze = advertisingIdClient.zzb.zze();
                } catch (RemoteException e) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e);
                    throw new IOException("Remote exception", e);
                }
            }
            advertisingIdClient.zzb();
            advertisingIdClient.zzc();
            return zZze;
        } catch (Throwable th) {
            advertisingIdClient.zzc();
            throw th;
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    private final Info zzf(int i) {
        Info info;
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            zze();
            Preconditions.checkNotNull(this.zza);
            Preconditions.checkNotNull(this.zzb);
            try {
                info = new Info(this.zzb.zzc(), this.zzb.zzd(true));
            } catch (RemoteException e) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e);
                throw new IOException("Remote exception", e);
            }
        }
        zzb();
        return info;
    }

    public final void finalize() throws Throwable {
        zzc();
        super.finalize();
    }

    public Info getInfo() {
        return zzf(-1);
    }

    public void start() {
        zza(true);
    }

    public final void zza(boolean z) {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        if (z) {
            zzb();
        }
        synchronized (this) {
            try {
                if (this.zzc) {
                    return;
                }
                Context context = this.zzi;
                try {
                    context.getPackageManager().getPackageInfo("com.android.vending", 0);
                    int iIsGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 12451000);
                    if (iIsGooglePlayServicesAvailable != 0 && iIsGooglePlayServicesAvailable != 2) {
                        throw new IOException("Google Play services not available");
                    }
                    BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!ConnectionTracker.getInstance().bindService(context, intent, blockingServiceConnection, 1)) {
                            throw new IOException("Connection failure");
                        }
                        this.zza = blockingServiceConnection;
                        try {
                            try {
                                this.zzb = com.google.android.gms.internal.ads_identifier.zze.zza(blockingServiceConnection.getServiceWithTimeout(10000L, TimeUnit.MILLISECONDS));
                                this.zzc = true;
                            } catch (InterruptedException unused) {
                                throw new IOException("Interrupted exception");
                            }
                        } catch (Throwable th) {
                            throw new IOException(th);
                        }
                    } catch (Throwable th2) {
                        throw new IOException(th2);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new GooglePlayServicesNotAvailableException(9);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void zzb() {
        synchronized (this.zzd) {
            zzb zzbVar = this.zze;
            if (zzbVar != null) {
                zzbVar.zza.countDown();
                try {
                    this.zze.join();
                } catch (InterruptedException unused) {
                }
            }
            long j = this.zzf;
            if (j > 0) {
                this.zze = new zzb(this, j);
            }
        }
    }

    public final void zzc() {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                Context context = this.zzi;
                if (context == null || this.zza == null) {
                    return;
                }
                try {
                    if (this.zzc) {
                        ConnectionTracker.getInstance().unbindService(context, this.zza);
                    }
                } catch (Throwable th) {
                    Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
                }
                this.zzc = false;
                this.zzb = null;
                this.zza = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzd(Info info, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > 0.0d) {
            return false;
        }
        HashMap map = new HashMap();
        map.put("app_context", "1");
        if (info != null) {
            map.put(CommonUrlParts.LIMIT_AD_TRACKING, true != info.isLimitAdTrackingEnabled() ? CommonUrlParts.Values.FALSE_INTEGER : "1");
            String id = info.getId();
            if (id != null) {
                map.put("ad_id_size", Integer.toString(id.length()));
            }
        }
        if (th != null) {
            map.put("error", th.getClass().getName());
        }
        map.put("tag", "AdvertisingIdClient");
        map.put("time_spent", Long.toString(j));
        new zza(this, map).start();
        return true;
    }

    public final synchronized void zze() {
        try {
            if (!this.zzc) {
                try {
                    Log.d("AdvertisingIdClient", "AdvertisingIdClient is not bounded. Starting to bind it...");
                    zza(false);
                    Log.d("AdvertisingIdClient", "AdvertisingIdClient is bounded");
                    if (!this.zzc) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public AdvertisingIdClient(Context context) {
        this(context, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, false, false);
    }
}
