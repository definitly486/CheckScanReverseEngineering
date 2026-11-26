package androidx.compose.runtime.retain;

import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
final class RetainContentPresenceIndicator implements RememberObserver {
    private final MutableState composer$delegate;
    private boolean didEnterComposition;
    private CancellationHandle enterCompositionCancellationHandle;
    private final RetainedValuesStore store;

    public RetainContentPresenceIndicator(RetainedValuesStore retainedValuesStore, Composer composer) {
        this.store = retainedValuesStore;
        this.composer$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(composer, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onRemembered$lambda$0(RetainContentPresenceIndicator retainContentPresenceIndicator) {
        retainContentPresenceIndicator.didEnterComposition = true;
        retainContentPresenceIndicator.store.onContentEnteredComposition();
        return j59.a;
    }

    private final void setEnterCompositionCancellationHandle(CancellationHandle cancellationHandle) {
        CancellationHandle cancellationHandle2 = this.enterCompositionCancellationHandle;
        if (cancellationHandle2 != null) {
            cancellationHandle2.cancel();
        }
        this.enterCompositionCancellationHandle = cancellationHandle;
    }

    public final Composer getComposer() {
        return (Composer) this.composer$delegate.getValue();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        CancellationHandle cancellationHandle = this.enterCompositionCancellationHandle;
        if (cancellationHandle != null) {
            cancellationHandle.cancel();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        CancellationHandle cancellationHandle = this.enterCompositionCancellationHandle;
        if (cancellationHandle != null) {
            cancellationHandle.cancel();
        }
        if (this.didEnterComposition) {
            this.store.onContentExitComposition();
            this.didEnterComposition = false;
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        setEnterCompositionCancellationHandle(getComposer().scheduleFrameEndCallback(new ll3() { // from class: androidx.compose.runtime.retain.a
            @Override // defpackage.ll3
            public final Object invoke() {
                return RetainContentPresenceIndicator.onRemembered$lambda$0(this.b);
            }
        }));
    }

    public final void setComposer(Composer composer) {
        this.composer$delegate.setValue(composer);
    }
}
