package defpackage;

import com.google.android.gms.internal.play_billing.zzi;
import com.google.android.gms.internal.play_billing.zzo;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes4.dex */
public final class rub extends y14 {
    public final AtomicReferenceFieldUpdater o;
    public final AtomicReferenceFieldUpdater p;
    public final AtomicReferenceFieldUpdater q;
    public final AtomicReferenceFieldUpdater r;
    public final AtomicReferenceFieldUpdater s;

    public rub(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.o = atomicReferenceFieldUpdater;
        this.p = atomicReferenceFieldUpdater2;
        this.q = atomicReferenceFieldUpdater3;
        this.r = atomicReferenceFieldUpdater4;
        this.s = atomicReferenceFieldUpdater5;
    }

    @Override // defpackage.y14
    public final void P(a4c a4cVar, a4c a4cVar2) {
        this.p.lazySet(a4cVar, a4cVar2);
    }

    @Override // defpackage.y14
    public final void Q(a4c a4cVar, Thread thread) {
        this.o.lazySet(a4cVar, thread);
    }

    @Override // defpackage.y14
    public final boolean R(zzo zzoVar, emb embVar, emb embVar2) {
        return zzi.zza(this.r, zzoVar, embVar, embVar2);
    }

    @Override // defpackage.y14
    public final boolean S(zzo zzoVar, Object obj, Object obj2) {
        return zzi.zza(this.s, zzoVar, obj, obj2);
    }

    @Override // defpackage.y14
    public final boolean T(zzo zzoVar, a4c a4cVar, a4c a4cVar2) {
        return zzi.zza(this.q, zzoVar, a4cVar, a4cVar2);
    }
}
