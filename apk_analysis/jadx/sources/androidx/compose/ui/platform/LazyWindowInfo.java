package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class LazyWindowInfo implements WindowInfo {
    public static final int $stable = 0;
    private MutableState<DerivedSize> _containerSize;
    private final MutableState isWindowFocused$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
    private ll3<DerivedSize> onInitializeContainerSize;

    @Override // androidx.compose.ui.platform.WindowInfo
    /* JADX INFO: renamed from: getContainerDpSize-MYxV2XQ, reason: not valid java name */
    public long mo8207getContainerDpSizeMYxV2XQ() {
        DerivedSize zero;
        MutableState<DerivedSize> mutableStateMutableStateOf$default = this._containerSize;
        if (mutableStateMutableStateOf$default == null) {
            ll3<DerivedSize> ll3Var = this.onInitializeContainerSize;
            if (ll3Var == null || (zero = ll3Var.invoke()) == null) {
                zero = DerivedSize.Companion.getZero();
            }
            mutableStateMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(zero, null, 2, null);
            this._containerSize = mutableStateMutableStateOf$default;
            this.onInitializeContainerSize = null;
        }
        mutableStateMutableStateOf$default.getClass();
        return mutableStateMutableStateOf$default.getValue().m8175getDpSizeMYxV2XQ();
    }

    @Override // androidx.compose.ui.platform.WindowInfo
    /* JADX INFO: renamed from: getContainerSize-YbymL2g, reason: not valid java name */
    public long mo8208getContainerSizeYbymL2g() {
        DerivedSize zero;
        MutableState<DerivedSize> mutableStateMutableStateOf$default = this._containerSize;
        if (mutableStateMutableStateOf$default == null) {
            ll3<DerivedSize> ll3Var = this.onInitializeContainerSize;
            if (ll3Var == null || (zero = ll3Var.invoke()) == null) {
                zero = DerivedSize.Companion.getZero();
            }
            mutableStateMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(zero, null, 2, null);
            this._containerSize = mutableStateMutableStateOf$default;
            this.onInitializeContainerSize = null;
        }
        mutableStateMutableStateOf$default.getClass();
        return mutableStateMutableStateOf$default.getValue().m8176getPxSizeYbymL2g();
    }

    @Override // androidx.compose.ui.platform.WindowInfo
    /* JADX INFO: renamed from: getKeyboardModifiers-k7X9c1A, reason: not valid java name */
    public int mo8209getKeyboardModifiersk7X9c1A() {
        return WindowInfoImpl.Companion.getGlobalKeyboardModifiers$ui().getValue().m7638unboximpl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.platform.WindowInfo
    public boolean isWindowFocused() {
        return ((Boolean) this.isWindowFocused$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: renamed from: setKeyboardModifiers-5xRPYO0, reason: not valid java name */
    public void m8210setKeyboardModifiers5xRPYO0(int i) {
        WindowInfoImpl.Companion.getGlobalKeyboardModifiers$ui().setValue(PointerKeyboardModifiers.m7632boximpl(i));
    }

    public final void setOnInitializeContainerSize(ll3<DerivedSize> ll3Var) {
        if (this._containerSize == null) {
            this.onInitializeContainerSize = ll3Var;
        }
    }

    public void setWindowFocused(boolean z) {
        this.isWindowFocused$delegate.setValue(Boolean.valueOf(z));
    }

    public final void updateContainerSizeIfObserved(ll3<DerivedSize> ll3Var) {
        MutableState mutableState = this._containerSize;
        if (mutableState != null) {
            mutableState.setValue(ll3Var.invoke());
        }
    }
}
