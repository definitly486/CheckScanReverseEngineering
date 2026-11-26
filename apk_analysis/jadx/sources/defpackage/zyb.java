package defpackage;

import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zznl;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zyb implements Runnable {
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ zzlj d;

    public zyb(zzlj zzljVar, AtomicReference atomicReference, boolean z) {
        this.b = atomicReference;
        this.c = z;
        this.d = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVarZzt = this.d.a.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        zznlVarZzt.h(new l4c(zznlVarZzt, this.b, zznlVarZzt.j(false), this.c));
    }
}
