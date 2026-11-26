package defpackage;

import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zznl;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class rzb implements Runnable {
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ zzlj e;

    public rzb(zzlj zzljVar, AtomicReference atomicReference, String str, String str2) {
        this.b = atomicReference;
        this.c = str;
        this.d = str2;
        this.e = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVarZzt = this.e.a.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        zznlVarZzt.h(new x5c(zznlVarZzt, this.b, this.c, this.d, zznlVarZzt.j(false)));
    }
}
