package androidx.compose.runtime;

import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ThrowingApplierStub implements Applier<Object> {
    public static final int $stable = 0;
    public static final ThrowingApplierStub INSTANCE = new ThrowingApplierStub();

    private ThrowingApplierStub() {
    }

    private final void throwIllegalOperationException() {
        ComposerKt.composeImmediateRuntimeError("ChangeList cannot call the Applier when executing pending changes outside of the applier phase.");
    }

    @Override // androidx.compose.runtime.Applier
    public void clear() {
        throwIllegalOperationException();
    }

    @Override // androidx.compose.runtime.Applier
    public void down(Object obj) {
        throwIllegalOperationException();
    }

    @Override // androidx.compose.runtime.Applier
    public Object getCurrent() {
        throwIllegalOperationException();
        return j59.a;
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int i, Object obj) {
        throwIllegalOperationException();
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int i, Object obj) {
        throwIllegalOperationException();
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int i, int i2, int i3) {
        throwIllegalOperationException();
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int i, int i2) {
        throwIllegalOperationException();
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        throwIllegalOperationException();
    }
}
