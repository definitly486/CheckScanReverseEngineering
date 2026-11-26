package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.UserHandle;
import com.google.android.gms.common.ConnectionResult;
import defpackage.ybc;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class GmsClientSupervisor {
    public static final Object a = new Object();
    public static int b = 9;
    public static ybc c = null;
    public static HandlerThread d = null;
    public static Executor e = null;
    public static boolean f = false;

    public static int getDefaultBindFlags() {
        return 4225;
    }

    public static GmsClientSupervisor getInstance(Context context) {
        ybc ybcVar;
        synchronized (a) {
            try {
                ybcVar = c;
                if (ybcVar == null) {
                    if (!f) {
                        f = GmsClientFlags.isBindServiceOptimizationEnabled(context.getPackageName());
                    }
                    ybcVar = new ybc(context.getApplicationContext(), f ? getOrStartHandlerThread().getLooper() : context.getMainLooper(), e);
                    c = ybcVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return ybcVar;
    }

    public static HandlerThread getOrStartHandlerThread() {
        synchronized (a) {
            try {
                HandlerThread handlerThread = d;
                if (handlerThread != null && handlerThread.isAlive()) {
                    return d;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", b);
                d = handlerThread2;
                handlerThread2.start();
                return d;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setDefaultBindExecutor(Executor executor) {
        synchronized (a) {
            ybc ybcVar = c;
            if (ybcVar != null) {
                synchronized (ybcVar.g) {
                    ybcVar.n = executor;
                }
            }
            e = executor;
        }
    }

    public static boolean setGamHandlerThreadPriorityIfNotInitialized(int i) {
        synchronized (a) {
            try {
                if (d != null) {
                    return false;
                }
                b = i;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setUseHandlerThreadForCallbacks() {
        synchronized (a) {
            try {
                ybc ybcVar = c;
                if (ybcVar != null && !f) {
                    Looper looper = getOrStartHandlerThread().getLooper();
                    synchronized (ybcVar.g) {
                        ybcVar.i = new com.google.android.gms.internal.common.zzg(looper, ybcVar.j);
                    }
                }
                f = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract ConnectionResult a(zzn zznVar, ServiceConnection serviceConnection, String str, Executor executor);

    public abstract void b(zzn zznVar, ServiceConnection serviceConnection);

    public boolean bindService(String str, ServiceConnection serviceConnection, String str2) {
        return a(new zzn(str, 4225, false), serviceConnection, str2, null).isSuccess();
    }

    public void unbindService(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        b(new zzn(componentName, 4225, (UserHandle) null), serviceConnection);
    }

    public final void zzb(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z, UserHandle userHandle) {
        b(new zzn(str, str2, 4225, z, userHandle), serviceConnection);
    }

    public void unbindService(String str, ServiceConnection serviceConnection, String str2) {
        b(new zzn(str, 4225, false), serviceConnection);
    }

    public boolean bindService(ComponentName componentName, ServiceConnection serviceConnection, String str, Executor executor) {
        return a(new zzn(componentName, 4225, (UserHandle) null), serviceConnection, str, executor).isSuccess();
    }

    public boolean bindService(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return a(new zzn(componentName, 4225, (UserHandle) null), serviceConnection, str, null).isSuccess();
    }

    public static HandlerThread getOrStartHandlerThread(int i) {
        synchronized (a) {
            try {
                HandlerThread handlerThread = d;
                if (handlerThread != null && handlerThread.isAlive()) {
                    return d;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", i);
                d = handlerThread2;
                handlerThread2.start();
                return d;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
