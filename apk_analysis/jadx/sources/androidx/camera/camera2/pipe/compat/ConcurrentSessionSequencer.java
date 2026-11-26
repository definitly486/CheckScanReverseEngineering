package androidx.camera.camera2.pipe.compat;

import defpackage.ch5;
import defpackage.yg5;

/* JADX INFO: loaded from: classes.dex */
public final class ConcurrentSessionSequencer {
    private final yg5 sharedMutex = new ch5();

    public final yg5 getSharedMutex() {
        return this.sharedMutex;
    }
}
