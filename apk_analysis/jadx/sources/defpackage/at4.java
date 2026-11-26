package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.o74;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class at4 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ at4(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return ss.a.a;
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodGetDefaultSplitAttributesValid$lambda$18());
            default:
                return o74.c();
        }
    }
}
