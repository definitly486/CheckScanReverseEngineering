package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.b5c;
import defpackage.i79;
import defpackage.jn2;
import defpackage.nd5;
import defpackage.p;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmn implements zzmj {
    public final zzkk a;

    public zzmn(zzkk zzkkVar) {
        zzkkVar.getClass();
        this.a = zzkkVar;
    }

    public static p.a a(Task task) {
        ListenableFuture listenableFutureZza = zzlb.zza(task, null);
        jn2 jn2Var = jn2.INSTANCE;
        int i = p.m;
        p.a aVar = new p.a(listenableFutureZza, ApiException.class, b5c.a);
        listenableFutureZza.addListener(aVar, nd5.a(jn2Var, aVar));
        return aVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final ListenableFuture zza(String str, String str2) {
        str.getClass();
        return a(this.a.zzb(str, "", null).continueWith(jn2.INSTANCE, new i79(3)));
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final ListenableFuture zzb(String str) {
        str.getClass();
        return a(this.a.zzc(str));
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final ListenableFuture zzc(zzme zzmeVar) {
        return a(this.a.zzd(zzmeVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final ListenableFuture zzd() {
        return a(this.a.zze());
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final ListenableFuture zze(zzpm zzpmVar) {
        return a(this.a.zzf(zzpmVar));
    }
}
