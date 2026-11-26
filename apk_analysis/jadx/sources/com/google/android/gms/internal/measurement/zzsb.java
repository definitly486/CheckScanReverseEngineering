package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsb {
    public final Uri.Builder a = new Uri.Builder().scheme("file").authority("").path("/");
    public final com.google.common.collect.j.a b;

    public zzsb() {
        com.google.common.collect.j.b bVar = com.google.common.collect.j.c;
        this.b = new com.google.common.collect.j.a();
    }

    public final zzsb zza(File file) {
        this.a.path(file.getAbsolutePath());
        return this;
    }

    public final Uri zzb() {
        return this.a.encodedFragment(zzsp.zzb(this.b.g())).build();
    }

    public zzsb(int i) {
        com.google.common.collect.j.b bVar = com.google.common.collect.j.c;
        this.b = new com.google.common.collect.j.a();
    }
}
