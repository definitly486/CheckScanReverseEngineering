package defpackage;

import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzlj;

/* JADX INFO: loaded from: classes4.dex */
public final class q0c implements Runnable {
    public final /* synthetic */ zzjl b;
    public final /* synthetic */ long c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ zzlj e;

    public q0c(zzlj zzljVar, zzjl zzjlVar, long j, boolean z) {
        this.b = zzjlVar;
        this.c = j;
        this.d = z;
        this.e = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.e;
        zzjl zzjlVar = this.b;
        zzljVar.m(zzjlVar);
        zzljVar.f(zzjlVar, this.c, this.d);
    }
}
