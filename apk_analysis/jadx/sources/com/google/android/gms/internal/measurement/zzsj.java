package com.google.android.gms.internal.measurement;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsj implements Closeable {
    public final Closeable b;

    public zzsj(Closeable closeable) {
        this.b = closeable;
    }

    public static zzsj zza(Closeable closeable) {
        return new zzsj(closeable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Closeable closeable = this.b;
        if (closeable != null) {
            closeable.close();
        }
    }

    public final Closeable zzb() {
        return this.b;
    }
}
