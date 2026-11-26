package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cr2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ cr2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            default:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassSplitPlaceholderRuleValid$lambda$11());
        }
    }
}
