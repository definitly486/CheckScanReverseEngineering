package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.ListenableFuture;
import defpackage.ah;
import defpackage.jn2;
import defpackage.ugc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwi implements Runnable, zzwt {
    public zzws b;
    public final boolean c = zzrn.zza(Thread.currentThread());
    public boolean d;
    public boolean e;
    public final boolean f;

    public zzwi(zzws zzwsVar, boolean z) {
        this.f = false;
        this.b = zzwsVar;
        this.f = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzwt, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        zzws zzwsVar = this.b;
        try {
            this.b = null;
            boolean z = this.e;
            if (!z) {
                if (this.d) {
                    throw new IllegalStateException("Span was already closed!");
                }
                this.d = true;
                if (this.c && !z) {
                    zzrn.zza(Thread.currentThread());
                }
            }
            if (zzwsVar != null) {
                zzwsVar.close();
            }
            if (this.f) {
                zzvy.zzc(zzvy.zzd(), zzwg.zza);
            }
        } catch (Throwable th) {
            if (zzwsVar != null) {
                try {
                    zzwsVar.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        if (this.d || !(z = this.e)) {
            zzrn.zzb().post(ugc.b);
            return;
        }
        this.d = true;
        if (!this.c || z) {
            return;
        }
        zzrn.zza(Thread.currentThread());
    }

    public final ListenableFuture zza(ListenableFuture listenableFuture) {
        if (this.d) {
            ah.f("Span was already closed. Did you attach it to a future after calling Tracer.endSpan()?");
            return null;
        }
        if (this.e) {
            ah.f("Signal is already attached to future");
            return null;
        }
        this.e = true;
        listenableFuture.addListener(this, jn2.INSTANCE);
        return listenableFuture;
    }
}
