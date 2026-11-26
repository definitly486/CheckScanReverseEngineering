package androidx.compose.ui.input;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class InputModeManagerImpl implements InputModeManager {
    public static final int $stable = 8;
    private final MutableState inputMode$delegate;
    private final InputModeChangeRequester onRequestInputModeChange;

    private InputModeManagerImpl(int i, InputModeChangeRequester inputModeChangeRequester) {
        this.onRequestInputModeChange = inputModeChangeRequester;
        this.inputMode$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(InputMode.m7035boximpl(i), null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.input.InputModeManager
    /* JADX INFO: renamed from: getInputMode-aOaMEAU */
    public int mo7045getInputModeaOaMEAU() {
        return ((InputMode) this.inputMode$delegate.getValue()).m7041unboximpl();
    }

    @Override // androidx.compose.ui.input.InputModeManager
    /* JADX INFO: renamed from: requestInputMode-iuPiT84 */
    public boolean mo7046requestInputModeiuPiT84(int i) {
        return this.onRequestInputModeChange.mo7044requestiuPiT84(i);
    }

    /* JADX INFO: renamed from: setInputMode-iuPiT84, reason: not valid java name */
    public void m7047setInputModeiuPiT84(int i) {
        this.inputMode$delegate.setValue(InputMode.m7035boximpl(i));
    }

    public /* synthetic */ InputModeManagerImpl(int i, InputModeChangeRequester inputModeChangeRequester, jh2 jh2Var) {
        this(i, inputModeChangeRequester);
    }
}
