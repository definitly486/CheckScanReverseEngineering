package com.google.android.gms.internal.measurement;

import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbu {
    public static volatile zzbu b;
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    public static zzbu zza() {
        if (b == null) {
            synchronized (zzbu.class) {
                try {
                    if (b == null) {
                        b = new zzbu();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public final void zzb(zzbt zzbtVar) {
        this.a.add(0, zzbtVar);
    }
}
