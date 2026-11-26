package androidx.camera.viewfinder.core.impl;

import defpackage.j59;
import defpackage.ll3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes.dex */
public /* synthetic */ class PixelCopyCompat$PixelCopyApi24Impl$withHandlerScope$3 extends qm3 implements ll3<j59> {
    public PixelCopyCompat$PixelCopyApi24Impl$withHandlerScope$3(Object obj) {
        super(0, obj, RefCounted.class, "release", "release()V", 0);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((RefCounted) this.receiver).release();
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
