package defpackage;

import androidx.compose.foundation.text.selection.DefaultTextSelectionColors_androidKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class db7 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ db7(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassSplitAttributesCalculatorParamsValid$lambda$22());
            default:
                return DefaultTextSelectionColors_androidKt.getDefaultTextSelectionColors();
        }
    }
}
