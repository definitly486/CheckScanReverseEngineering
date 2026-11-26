package com.google.android.gms.internal.mlkit_vision_barcode;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends b {
    public final AtomicReferenceFieldUpdater<k, Thread> a;
    public final AtomicReferenceFieldUpdater<k, k> b;
    public final AtomicReferenceFieldUpdater<? super zzdz<?>, k> c;
    public final AtomicReferenceFieldUpdater<? super zzdz<?>, e> d;
    public final AtomicReferenceFieldUpdater<? super zzdz<?>, Object> e;

    public f(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.a = atomicReferenceFieldUpdater;
        this.b = atomicReferenceFieldUpdater2;
        this.c = atomicReferenceFieldUpdater3;
        this.d = atomicReferenceFieldUpdater4;
        this.e = atomicReferenceFieldUpdater5;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final e a(zzdz zzdzVar, e eVar) {
        return this.d.getAndSet(zzdzVar, eVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final k b(zzdz zzdzVar) {
        return this.c.getAndSet(zzdzVar, k.c);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final void c(k kVar, k kVar2) {
        this.b.lazySet(kVar, kVar2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final void d(k kVar, Thread thread) {
        this.a.lazySet(kVar, thread);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final boolean e(zzdz zzdzVar, e eVar, e eVar2) {
        return zzea.zza(this.d, zzdzVar, eVar, eVar2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final boolean f(zzdz zzdzVar, Object obj, Object obj2) {
        return zzea.zza(this.e, zzdzVar, obj, obj2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final boolean g(zzdz zzdzVar, k kVar, k kVar2) {
        return zzea.zza(this.c, zzdzVar, kVar, kVar2);
    }
}
