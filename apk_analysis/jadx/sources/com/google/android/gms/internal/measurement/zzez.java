package com.google.android.gms.internal.measurement;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzlt;
import defpackage.a6b;
import defpackage.aab;
import defpackage.bab;
import defpackage.bbb;
import defpackage.c5b;
import defpackage.cbb;
import defpackage.d7b;
import defpackage.e4b;
import defpackage.e8b;
import defpackage.f9b;
import defpackage.g6b;
import defpackage.h5b;
import defpackage.i4b;
import defpackage.i8b;
import defpackage.j7b;
import defpackage.j9b;
import defpackage.jab;
import defpackage.jbb;
import defpackage.kbb;
import defpackage.m4b;
import defpackage.mab;
import defpackage.n5b;
import defpackage.nab;
import defpackage.p6b;
import defpackage.p7b;
import defpackage.p9b;
import defpackage.r4b;
import defpackage.r6b;
import defpackage.tab;
import defpackage.u5b;
import defpackage.u9b;
import defpackage.uab;
import defpackage.v7b;
import defpackage.vcb;
import defpackage.w4b;
import defpackage.x9b;
import defpackage.z7b;
import defpackage.z8b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class zzez {
    public static volatile zzez j;
    public final Clock a = DefaultClock.getInstance();
    public final ExecutorService b;
    public final AppMeasurementSdk c;
    public final ArrayList d;
    public int e;
    public boolean f;
    public final String g;
    public volatile zzcp h;
    public volatile long i;

    public zzez(Context context, Bundle bundle) {
        zzck.zza();
        f9b f9bVar = new f9b(this);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f9bVar);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.b = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.c = new AppMeasurementSdk(this);
        this.d = new ArrayList();
        try {
            if (zzlt.zza(context, "google_app_id", com.google.android.gms.measurement.internal.zzhu.zza(context)) != null) {
                try {
                    Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, zzez.class.getClassLoader());
                } catch (ClassNotFoundException unused) {
                    this.g = null;
                    this.f = true;
                    Log.w("FA", "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Add Google Analytics for Firebase to resume data collection.");
                    return;
                }
            }
        } catch (IllegalStateException unused2) {
        }
        this.g = "fa";
        a(new g6b(this, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w("FA", "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new vcb(this));
        }
    }

    public static zzez zza(Context context, Bundle bundle) {
        Preconditions.checkNotNull(context);
        if (j == null) {
            synchronized (zzez.class) {
                try {
                    if (j == null) {
                        j = new zzez(context, bundle == null ? new Bundle() : new Bundle(bundle));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return j;
    }

    public final void a(cbb cbbVar) {
        this.b.execute(cbbVar);
    }

    public final void b(Exception exc, boolean z, boolean z2) {
        Exception exc2;
        this.f |= z;
        if (z) {
            Log.w("FA", "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            exc2 = exc;
            zzD(5, "Error with data collection. Data lost.", exc2, null, null);
        } else {
            exc2 = exc;
        }
        Log.w("FA", "Error with data collection. Data lost.", exc2);
    }

    public final String zzA() {
        zzcm zzcmVar = new zzcm();
        a(new z7b(this, zzcmVar));
        return zzcmVar.zzc(500L);
    }

    public final String zzB() {
        zzcm zzcmVar = new zzcm();
        a(new e8b(this, zzcmVar));
        return zzcmVar.zzc(500L);
    }

    public final Map zzC(String str, String str2, boolean z) {
        zzcm zzcmVar = new zzcm();
        a(new i8b(this, str, str2, z, zzcmVar));
        Bundle bundleZze = zzcmVar.zze(5000L);
        if (bundleZze == null || bundleZze.size() == 0) {
            return Collections.EMPTY_MAP;
        }
        HashMap map = new HashMap(bundleZze.size());
        for (String str3 : bundleZze.keySet()) {
            Object obj = bundleZze.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    public final void zzD(int i, String str, Object obj, Object obj2, Object obj3) {
        a(new z8b(this, str, obj));
    }

    public final Bundle zzE(Bundle bundle, boolean z) {
        zzcm zzcmVar = new zzcm();
        a(new j9b(this, bundle, zzcmVar));
        if (z) {
            return zzcmVar.zze(5000L);
        }
        return null;
    }

    public final int zzF(String str) {
        zzcm zzcmVar = new zzcm();
        a(new p9b(this, str, zzcmVar));
        Integer num = (Integer) zzcm.zzf(zzcmVar.zze(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final String zzG() {
        zzcm zzcmVar = new zzcm();
        a(new u9b(this, zzcmVar));
        return zzcmVar.zzc(120000L);
    }

    public final Long zzH() {
        zzcm zzcmVar = new zzcm();
        a(new x9b(this, zzcmVar));
        return zzcmVar.zzd(120000L);
    }

    public final String zzI() {
        return this.g;
    }

    public final Object zzJ(int i) {
        zzcm zzcmVar = new zzcm();
        a(new aab(this, zzcmVar, i));
        return zzcm.zzf(zzcmVar.zze(15000L), Object.class);
    }

    public final void zzK(boolean z) {
        a(new bab(this, z));
    }

    public final void zzL(Bundle bundle) {
        a(new jab(this, bundle));
    }

    public final AppMeasurementSdk zzb() {
        return this.c;
    }

    public final void zzd(com.google.android.gms.measurement.internal.zzjp zzjpVar) {
        jbb jbbVar = new jbb(zzjpVar);
        if (this.h != null) {
            try {
                this.h.setEventInterceptor(jbbVar);
                return;
            } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                Log.w("FA", "Failed to set event interceptor on calling thread. Trying again on the dynamite thread.");
            }
        }
        a(new mab(this, jbbVar));
    }

    public final void zze(Intent intent) {
        a(new nab(this, intent));
    }

    public final void zzf(com.google.android.gms.measurement.internal.zzjq zzjqVar) {
        Preconditions.checkNotNull(zzjqVar);
        ArrayList arrayList = this.d;
        synchronized (arrayList) {
            for (int i = 0; i < arrayList.size(); i++) {
                try {
                    if (zzjqVar.equals(((Pair) arrayList.get(i)).first)) {
                        Log.w("FA", "OnEventListener already registered.");
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            kbb kbbVar = new kbb(zzjqVar);
            arrayList.add(new Pair(zzjqVar, kbbVar));
            if (this.h != null) {
                try {
                    this.h.registerOnMeasurementEventListener(kbbVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w("FA", "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            a(new tab(this, kbbVar));
        }
    }

    public final void zzg(com.google.android.gms.measurement.internal.zzjq zzjqVar) {
        Pair pair;
        Preconditions.checkNotNull(zzjqVar);
        ArrayList arrayList = this.d;
        synchronized (arrayList) {
            int i = 0;
            while (true) {
                try {
                    if (i >= arrayList.size()) {
                        pair = null;
                        break;
                    } else {
                        if (zzjqVar.equals(((Pair) arrayList.get(i)).first)) {
                            pair = (Pair) arrayList.get(i);
                            break;
                        }
                        i++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (pair == null) {
                Log.w("FA", "OnEventListener had not been registered.");
                return;
            }
            arrayList.remove(pair);
            kbb kbbVar = (kbb) pair.second;
            if (this.h != null) {
                try {
                    this.h.unregisterOnMeasurementEventListener(kbbVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w("FA", "Failed to unregister event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            a(new uab(this, kbbVar));
        }
    }

    public final void zzh(String str, Bundle bundle) {
        a(new bbb(this, null, null, null, str, bundle, false, true));
    }

    public final void zzi(String str, String str2, Bundle bundle) {
        a(new bbb(this, null, null, str, str2, bundle, true, true));
    }

    public final void zzj(String str, String str2, Bundle bundle, long j2, long j3) {
        a(new bbb(this, Long.valueOf(j2), 0L, str, str2, bundle, true, false));
    }

    public final void zzk(String str, String str2, Object obj, boolean z) {
        a(new e4b(this, str, str2, obj, z));
    }

    public final void zzl(Bundle bundle) {
        a(new i4b(this, bundle));
    }

    public final void zzm(String str, String str2, Bundle bundle) {
        a(new m4b(this, str, str2, bundle));
    }

    public final List zzn(String str, String str2) {
        zzcm zzcmVar = new zzcm();
        a(new r4b(this, str, str2, zzcmVar));
        List list = (List) zzcm.zzf(zzcmVar.zze(5000L), List.class);
        return list == null ? Collections.EMPTY_LIST : list;
    }

    public final void zzo(String str) {
        a(new w4b(this, str));
    }

    public final void zzp(zzdd zzddVar, String str, String str2) {
        a(new c5b(this, zzddVar, str, str2));
    }

    public final void zzq(Boolean bool) {
        a(new h5b(this, bool));
    }

    public final void zzr(Bundle bundle) {
        a(new n5b(this, bundle));
    }

    public final void zzs() {
        a(new u5b(this));
    }

    public final void zzt(long j2) {
        a(new a6b(this, j2));
    }

    public final void zzu(String str) {
        a(new p6b(this, str));
    }

    public final void zzv(String str) {
        a(new r6b(this, str));
    }

    public final void zzw(Runnable runnable) {
        a(new d7b(this, runnable));
    }

    public final String zzx() {
        zzcm zzcmVar = new zzcm();
        a(new j7b(this, zzcmVar));
        return zzcmVar.zzc(500L);
    }

    public final String zzy() {
        zzcm zzcmVar = new zzcm();
        a(new p7b(this, zzcmVar));
        return zzcmVar.zzc(50L);
    }

    public final long zzz() {
        zzcm zzcmVar = new zzcm();
        a(new v7b(this, zzcmVar));
        Long lZzd = zzcmVar.zzd(500L);
        if (lZzd != null) {
            return lZzd.longValue();
        }
        long jNextLong = new Random(System.nanoTime() ^ this.a.currentTimeMillis()).nextLong();
        int i = this.e + 1;
        this.e = i;
        return jNextLong + ((long) i);
    }
}
