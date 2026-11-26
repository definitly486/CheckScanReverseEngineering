package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.input.pointer.PointerEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class WindowInfoImpl implements WindowInfo {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final MutableState<PointerKeyboardModifiers> GlobalKeyboardModifiers = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(PointerKeyboardModifiers.m7632boximpl(PointerEvent_androidKt.EmptyPointerKeyboardModifiers()), null, 2, null);
    private final MutableState<IntSize> _containerSize = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntSize.m9205boximpl(IntSize.Companion.m9218getZeroYbymL2g()), null, 2, null);
    private final MutableState<DpSize> _containerDpSize = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(DpSize.m9128boximpl(DpSize.Companion.m9150getZeroMYxV2XQ()), null, 2, null);
    private final MutableState isWindowFocused$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);

    @Override // androidx.compose.ui.platform.WindowInfo
    /* JADX INFO: renamed from: getContainerDpSize-MYxV2XQ */
    public long mo8207getContainerDpSizeMYxV2XQ() {
        return this._containerDpSize.getValue().m9148unboximpl();
    }

    @Override // androidx.compose.ui.platform.WindowInfo
    /* JADX INFO: renamed from: getContainerSize-YbymL2g */
    public long mo8208getContainerSizeYbymL2g() {
        return this._containerSize.getValue().m9217unboximpl();
    }

    @Override // androidx.compose.ui.platform.WindowInfo
    /* JADX INFO: renamed from: getKeyboardModifiers-k7X9c1A */
    public int mo8209getKeyboardModifiersk7X9c1A() {
        return GlobalKeyboardModifiers.getValue().m7638unboximpl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.platform.WindowInfo
    public boolean isWindowFocused() {
        return ((Boolean) this.isWindowFocused$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: renamed from: setContainerDpSize-EaSLcWc, reason: not valid java name */
    public void m8242setContainerDpSizeEaSLcWc(long j) {
        this._containerDpSize.setValue(DpSize.m9128boximpl(j));
    }

    /* JADX INFO: renamed from: setContainerSize-ozmzZPI, reason: not valid java name */
    public void m8243setContainerSizeozmzZPI(long j) {
        this._containerSize.setValue(IntSize.m9205boximpl(j));
    }

    /* JADX INFO: renamed from: setKeyboardModifiers-5xRPYO0, reason: not valid java name */
    public void m8244setKeyboardModifiers5xRPYO0(int i) {
        GlobalKeyboardModifiers.setValue(PointerKeyboardModifiers.m7632boximpl(i));
    }

    public void setWindowFocused(boolean z) {
        this.isWindowFocused$delegate.setValue(Boolean.valueOf(z));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final MutableState<PointerKeyboardModifiers> getGlobalKeyboardModifiers$ui() {
            return WindowInfoImpl.GlobalKeyboardModifiers;
        }

        private Companion() {
        }
    }
}
