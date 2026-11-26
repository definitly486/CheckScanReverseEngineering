package com.google.android.gms.internal.play_billing;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes4.dex */
public final class i extends h {
    public static final AtomicReferenceFieldUpdater<l, Thread> a = AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
    public static final AtomicReferenceFieldUpdater<l, l> b = AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "b");
    public static final AtomicReferenceFieldUpdater<? super m<?>, l> c = AtomicReferenceFieldUpdater.newUpdater(m.class, l.class, "d");
    public static final AtomicReferenceFieldUpdater<? super m<?>, f> d = AtomicReferenceFieldUpdater.newUpdater(m.class, f.class, "c");
    public static final AtomicReferenceFieldUpdater<? super m<?>, Object> e = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "b");

    @Override // com.google.android.gms.internal.play_billing.h
    public final f a(zzcu zzcuVar, f fVar) {
        return d.getAndSet(zzcuVar, fVar);
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final l b(zzcu zzcuVar) {
        return c.getAndSet(zzcuVar, l.c);
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final void c(l lVar, l lVar2) {
        b.lazySet(lVar, lVar2);
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final void d(l lVar, Thread thread) {
        a.lazySet(lVar, thread);
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final boolean e(zzcu zzcuVar, f fVar, f fVar2) {
        return zzcw.zza(d, zzcuVar, fVar, fVar2);
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final boolean f(m mVar, Object obj, Object obj2) {
        return zzcw.zza(e, mVar, obj, obj2);
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final boolean g(m mVar, l lVar, l lVar2) {
        return zzcw.zza(c, mVar, lVar, lVar2);
    }
}
