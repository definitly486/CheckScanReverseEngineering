package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import androidx.window.layout.WindowInfoTracker;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ya7 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ya7(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodSplitInfoGetTokenValid$lambda$28());
            default:
                return WindowInfoTracker.Companion.extensionBackend_delegate$lambda$2();
        }
    }
}
