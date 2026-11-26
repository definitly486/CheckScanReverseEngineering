package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.gf0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class bb7 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ bb7(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodSetDraggingToFullscreenAllowedValid$lambda$50());
            case 1:
                return j59.a;
            default:
                return gf0.b();
        }
    }
}
