package defpackage;

import androidx.activity.compose.LocalActivityResultRegistryOwner;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.rd0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xs4 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xs4(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return LocalActivityResultRegistryOwner.LocalComposition$lambda$0();
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodGetSplitRatioValid$lambda$4());
            default:
                return rd0.a();
        }
    }
}
