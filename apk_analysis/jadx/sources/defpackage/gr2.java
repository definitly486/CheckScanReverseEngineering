package defpackage;

import androidx.compose.material3.DefaultShortNavigationBarOverride;
import androidx.compose.ui.text.SpanStyleKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.nq0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gr2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ gr2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodGetLayoutDirectionValid$lambda$5());
            case 2:
                return DefaultShortNavigationBarOverride.INSTANCE;
            case 3:
                return SpanStyleKt.DefaultColorForegroundStyle;
            default:
                return nq0.i();
        }
    }
}
