package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzky;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.jn2;
import defpackage.js;
import defpackage.n39;
import defpackage.nr7;
import defpackage.u0c;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class zzky {
    public static UserManager a;
    public static volatile boolean b = !zza();
    public static final /* synthetic */ int zza = 0;

    /* JADX WARN: Code duplicated, block: B:31:0x004e A[Catch: all -> 0x000f, TryCatch #1 {all -> 0x000f, blocks: (B:7:0x0009, B:9:0x000d, B:16:0x0017, B:18:0x001b, B:31:0x004e, B:32:0x0050, B:21:0x0029, B:23:0x002f, B:27:0x003c, B:29:0x004a), top: B:38:0x0009, inners: #0 }] */
    public static boolean a(Context context) {
        if (b) {
            return true;
        }
        synchronized (zzky.class) {
            try {
                if (b) {
                    return true;
                }
                int i = 1;
                while (true) {
                    boolean z = false;
                    if (i <= 2) {
                        UserManager userManager = a;
                        if (userManager == null) {
                            userManager = (UserManager) context.getSystemService(UserManager.class);
                            a = userManager;
                        }
                        if (userManager == null) {
                            z = true;
                        } else {
                            try {
                                if (userManager.isUserUnlocked() || !userManager.isUserRunning(Process.myUserHandle())) {
                                    z = true;
                                }
                            } catch (NullPointerException e) {
                                Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e);
                                a = null;
                                i++;
                            }
                        }
                        if (z) {
                            b = true;
                        }
                        return z;
                    }
                    if (z) {
                        a = null;
                    }
                    if (z) {
                        b = true;
                    }
                    return z;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean zza() {
        return true;
    }

    public static boolean zzb(Context context) {
        return zza() && !a(context);
    }

    public static boolean zzc(Context context) {
        return !zza() || a(context);
    }

    public static ListenableFuture zzd(Context context, final Callable callable, Executor executor) {
        return zze(context, new js() { // from class: z0c
            @Override // defpackage.js
            public final ListenableFuture call() {
                UserManager userManager = zzky.a;
                jn2 jn2Var = jn2.INSTANCE;
                n39 n39Var = new n39(callable);
                jn2Var.execute(n39Var);
                return n39Var;
            }
        }, executor);
    }

    public static ListenableFuture zze(final Context context, js jsVar, Executor executor) {
        if (zzc(context)) {
            n39 n39Var = new n39();
            n39Var.j = new n39.a(jsVar);
            executor.execute(n39Var);
            return n39Var;
        }
        final nr7 nr7Var = new nr7();
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        final u0c u0cVar = new u0c(atomicBoolean, context, nr7Var, jsVar, executor);
        context.registerReceiver(u0cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
        if (!zzc(context) || !atomicBoolean.compareAndSet(false, true)) {
            nr7Var.addListener(new Runnable() { // from class: w0c
                @Override // java.lang.Runnable
                public final void run() {
                    nr7 nr7Var2 = nr7Var;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    Context context2 = context;
                    u0c u0cVar2 = u0cVar;
                    UserManager userManager = zzky.a;
                    if ((nr7Var2.b instanceof l0.a) && atomicBoolean2.compareAndSet(false, true)) {
                        try {
                            context2.unregisterReceiver(u0cVar2);
                        } catch (IllegalArgumentException e) {
                            Log.w("DirectBootUtils", "Failed to unregister receiver", e);
                        }
                    }
                }
            }, jn2.INSTANCE);
            return nr7Var;
        }
        try {
            context.unregisterReceiver(u0cVar);
        } catch (IllegalArgumentException e) {
            Log.w("DirectBootUtils", "Failed to unregister receiver", e);
        }
        n39 n39Var2 = new n39();
        n39Var2.j = new n39.a(jsVar);
        executor.execute(n39Var2);
        nr7Var.n(n39Var2);
        return nr7Var;
    }
}
