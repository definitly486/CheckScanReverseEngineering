package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composition;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorPainterKt$rememberVectorPainter$2$1$1 extends gh4 implements nl3<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ Composition $composition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorPainterKt$rememberVectorPainter$2$1$1(Composition composition) {
        super(1);
        this.$composition = composition;
    }

    @Override // defpackage.nl3
    public final DisposableEffectResult invoke(DisposableEffectScope disposableEffectScope) {
        final Composition composition = this.$composition;
        return new DisposableEffectResult() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$rememberVectorPainter$2$1$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                composition.dispose();
            }
        };
    }
}
