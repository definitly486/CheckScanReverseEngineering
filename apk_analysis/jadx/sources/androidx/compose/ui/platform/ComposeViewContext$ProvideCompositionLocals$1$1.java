package androidx.compose.ui.platform;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeViewContext$ProvideCompositionLocals$1$1 extends gh4 implements nl3<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ DisposableSaveableStateRegistry $saveableStateRegistry;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeViewContext$ProvideCompositionLocals$1$1(DisposableSaveableStateRegistry disposableSaveableStateRegistry) {
        super(1);
        this.$saveableStateRegistry = disposableSaveableStateRegistry;
    }

    @Override // defpackage.nl3
    public final DisposableEffectResult invoke(DisposableEffectScope disposableEffectScope) {
        final DisposableSaveableStateRegistry disposableSaveableStateRegistry = this.$saveableStateRegistry;
        return new DisposableEffectResult() { // from class: androidx.compose.ui.platform.ComposeViewContext$ProvideCompositionLocals$1$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                disposableSaveableStateRegistry.dispose();
            }
        };
    }
}
