package com.google.android.gms.internal.measurement;

import defpackage.tpa;
import defpackage.xg;
import java.io.Closeable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabt implements Closeable {
    public static final tpa c = new tpa();
    public int b = 0;

    public static int zza() {
        return ((zzabt) c.get()).b;
    }

    public static zzabt zzc() {
        zzabt zzabtVar = (zzabt) c.get();
        int i = zzabtVar.b + 1;
        zzabtVar.b = i;
        if (i != 0) {
            return zzabtVar;
        }
        xg.d("Overflow of RecursionDepth (possible error in core library)");
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.b;
        if (i > 0) {
            this.b = i - 1;
        } else {
            xg.d("Mismatched calls to RecursionDepth (possible error in core library)");
        }
    }

    public final int zzb() {
        return this.b;
    }
}
