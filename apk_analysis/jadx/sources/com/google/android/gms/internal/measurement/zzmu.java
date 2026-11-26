package com.google.android.gms.internal.measurement;

import defpackage.o5c;
import defpackage.r5c;
import java.io.Closeable;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmu implements Closeable {
    public final Inflater b = new Inflater(true);

    public static zzmu zza() {
        return new zzmu();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.b.end();
    }

    public final Object zzb(byte[] bArr, zzmt zzmtVar) {
        Inflater inflater = this.b;
        inflater.setInput(bArr);
        try {
            return zzmw.zzd(zzacv.zzM(new o5c(this), 4096));
        } finally {
            inflater.reset();
        }
    }

    public final Object zzc(zzacv zzacvVar, zzmt zzmtVar) {
        Inflater inflater = this.b;
        int iZzF = zzacvVar.zzF();
        try {
            return zzmw.zzd(zzacv.zzM(new InflaterInputStream(new r5c(this, zzacvVar), inflater, iZzF < 0 ? 4096 : Math.min(iZzF, 4096)), 4096));
        } finally {
            inflater.reset();
        }
    }
}
