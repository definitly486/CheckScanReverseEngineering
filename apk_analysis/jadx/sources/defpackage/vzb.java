package defpackage;

import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zznl;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class vzb implements Runnable {
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ zzlj f;

    public vzb(zzlj zzljVar, AtomicReference atomicReference, String str, String str2, boolean z) {
        this.b = atomicReference;
        this.c = str;
        this.d = str2;
        this.e = z;
        this.f = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVarZzt = this.f.a.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        zznlVarZzt.h(new c6c(zznlVarZzt, this.b, this.c, this.d, zznlVarZzt.j(false), this.e));
    }
}
