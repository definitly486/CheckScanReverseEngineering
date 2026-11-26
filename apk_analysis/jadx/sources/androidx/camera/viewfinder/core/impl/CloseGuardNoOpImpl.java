package androidx.camera.viewfinder.core.impl;

/* JADX INFO: loaded from: classes.dex */
final class CloseGuardNoOpImpl implements CloseGuardImpl {
    @Override // androidx.camera.viewfinder.core.impl.CloseGuardImpl
    public void close() {
    }

    @Override // androidx.camera.viewfinder.core.impl.CloseGuardImpl
    public void open(String str) {
        str.getClass();
    }

    @Override // androidx.camera.viewfinder.core.impl.CloseGuardImpl
    public void warnIfOpen() {
    }
}
