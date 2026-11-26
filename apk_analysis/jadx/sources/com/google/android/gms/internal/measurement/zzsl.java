package com.google.android.gms.internal.measurement;

import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsl extends zzsn implements zzsf {
    public final File b;

    public zzsl(FileInputStream fileInputStream, File file) {
        super(fileInputStream);
        this.b = file;
    }

    public static zzsl zzb(File file) {
        return new zzsl(new FileInputStream(file), file);
    }

    @Override // com.google.android.gms.internal.measurement.zzsf
    public final File zza() {
        return this.b;
    }
}
