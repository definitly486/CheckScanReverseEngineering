package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.UserHandle;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class ConnectionTracker {
    public static final Object a = new Object();
    public static volatile ConnectionTracker b;
    public final ConcurrentHashMap zza = new ConcurrentHashMap();

    public static final boolean b(Context context, Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            return false;
        }
        try {
            return (Wrappers.packageManager(context).getApplicationInfo(component.getPackageName(), 0).flags & 2097152) != 0;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static ConnectionTracker getInstance() {
        if (b == null) {
            synchronized (a) {
                try {
                    if (b == null) {
                        b = new ConnectionTracker();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ConnectionTracker connectionTracker = b;
        Preconditions.checkNotNull(connectionTracker);
        return connectionTracker;
    }

    public final boolean a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, Executor executor) {
        if (b(context, intent)) {
            Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
            return false;
        }
        if (serviceConnection instanceof zzr) {
            if (executor == null) {
                executor = null;
            }
            return (!PlatformVersion.isAtLeastQ() || executor == null) ? context.bindService(intent, serviceConnection, i) : context.bindService(intent, i, executor, serviceConnection);
        }
        ServiceConnection serviceConnection2 = (ServiceConnection) this.zza.putIfAbsent(serviceConnection, serviceConnection);
        if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
            Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
        }
        if (executor == null) {
            executor = null;
        }
        try {
            boolean zBindService = (!PlatformVersion.isAtLeastQ() || executor == null) ? context.bindService(intent, serviceConnection, i) : context.bindService(intent, i, executor, serviceConnection);
            if (zBindService) {
                return zBindService;
            }
            this.zza.remove(serviceConnection, serviceConnection);
            return false;
        } catch (Throwable th) {
            this.zza.remove(serviceConnection, serviceConnection);
            throw th;
        }
    }

    public boolean bindService(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return a(context, context.getClass().getName(), intent, serviceConnection, i, null);
    }

    public void unbindService(Context context, ServiceConnection serviceConnection) {
        if (!(serviceConnection instanceof zzr)) {
            ConcurrentHashMap concurrentHashMap = this.zza;
            if (concurrentHashMap.containsKey(serviceConnection)) {
                try {
                    try {
                        context.unbindService((ServiceConnection) concurrentHashMap.get(serviceConnection));
                    } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
                    }
                    return;
                } finally {
                    this.zza.remove(serviceConnection);
                }
            }
        }
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused2) {
        }
    }

    public void unbindServiceSafe(Context context, ServiceConnection serviceConnection) {
        try {
            unbindService(context, serviceConnection);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final boolean zza(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, Executor executor) {
        return a(context, str, intent, serviceConnection, 4225, executor);
    }

    public final boolean zzb(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, UserHandle userHandle) {
        if (b(context, intent)) {
            Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
            return false;
        }
        if (serviceConnection instanceof zzr) {
            return context.bindServiceAsUser(intent, serviceConnection, 4225, userHandle);
        }
        ServiceConnection serviceConnection2 = (ServiceConnection) this.zza.putIfAbsent(serviceConnection, serviceConnection);
        if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
            Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
        }
        try {
            boolean zBindServiceAsUser = context.bindServiceAsUser(intent, serviceConnection, 4225, userHandle);
            if (zBindServiceAsUser) {
                return zBindServiceAsUser;
            }
            this.zza.remove(serviceConnection, serviceConnection);
            return false;
        } catch (Throwable th) {
            this.zza.remove(serviceConnection, serviceConnection);
            throw th;
        }
    }
}
