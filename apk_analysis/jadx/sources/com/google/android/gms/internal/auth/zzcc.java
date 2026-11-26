package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcc {
    public static UserManager a;
    public static volatile boolean b = !zzb();

    /* JADX WARN: Code duplicated, block: B:32:0x0052 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:9:0x000f, B:11:0x0013, B:18:0x001d, B:20:0x0021, B:34:0x0056, B:35:0x0058, B:23:0x002f, B:25:0x0035, B:32:0x0052, B:30:0x0044), top: B:41:0x000f, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0056 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:9:0x000f, B:11:0x0013, B:18:0x001d, B:20:0x0021, B:34:0x0056, B:35:0x0058, B:23:0x002f, B:25:0x0035, B:32:0x0052, B:30:0x0044), top: B:41:0x000f, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x005b A[RETURN] */
    public static boolean zza(Context context) {
        boolean z;
        if (zzb() && !b) {
            synchronized (zzcc.class) {
                try {
                    if (!b) {
                        int i = 1;
                        while (true) {
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
                                        if (z) {
                                            a = null;
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
                                if (!z) {
                                    return true;
                                }
                            }
                            z = false;
                            if (z) {
                                a = null;
                            }
                            if (z) {
                                b = true;
                            }
                            if (!z) {
                                return true;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return false;
    }

    public static boolean zzb() {
        return true;
    }
}
