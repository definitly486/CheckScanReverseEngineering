package defpackage;

import androidx.compose.foundation.OverscrollConfiguration_androidKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ot1 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ot1(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return OverscrollConfiguration_androidKt.LocalOverscrollConfiguration$lambda$0();
            default:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassActivityStackAttributesBuilderValid$lambda$61());
        }
    }
}
