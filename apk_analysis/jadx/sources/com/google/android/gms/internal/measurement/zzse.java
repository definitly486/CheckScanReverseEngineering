package com.google.android.gms.internal.measurement;

import defpackage.ua4;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzse implements zzro {
    public OutputStream a;
    public zzsm b;

    @Override // com.google.android.gms.internal.measurement.zzro
    public final void zza(List list) {
        OutputStream outputStream = (OutputStream) ua4.a(list);
        if (outputStream instanceof zzsm) {
            this.b = (zzsm) outputStream;
            this.a = (OutputStream) list.get(0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzro
    public final void zzb() throws IOException {
        zzc();
    }

    public final void zzc() throws IOException {
        if (this.b == null) {
            throw new zzsk("Cannot sync underlying stream");
        }
        this.a.flush();
        this.b.zzb();
    }
}
