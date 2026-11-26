package androidx.camera.camera2.pipe.core;

import defpackage.ht;
import defpackage.kt;
import defpackage.yg5;

/* JADX INFO: loaded from: classes.dex */
public final class MutexToken implements Token {
    private final ht _released;
    private final yg5 mutex;

    public MutexToken(yg5 yg5Var) {
        yg5Var.getClass();
        this.mutex = yg5Var;
        this._released = kt.a(false);
    }

    @Override // androidx.camera.camera2.pipe.core.Token
    public boolean getReleased() {
        return this._released.b();
    }

    @Override // androidx.camera.camera2.pipe.core.Token
    public boolean release() {
        if (!this._released.a()) {
            return false;
        }
        this.mutex.unlock(null);
        return true;
    }
}
