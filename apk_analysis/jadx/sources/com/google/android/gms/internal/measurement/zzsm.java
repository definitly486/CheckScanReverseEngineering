package com.google.android.gms.internal.measurement;

import java.io.File;
import java.io.FileOutputStream;
import java.io.SyncFailedException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsm extends zzso implements zzsf {
    public final FileOutputStream b;
    public final File c;

    public zzsm(FileOutputStream fileOutputStream, File file) {
        super(fileOutputStream);
        this.b = fileOutputStream;
        this.c = file;
    }

    @Override // com.google.android.gms.internal.measurement.zzsf
    public final File zza() {
        return this.c;
    }

    public final void zzb() throws SyncFailedException {
        this.b.getFD().sync();
    }
}
