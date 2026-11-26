package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.wd0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ua7 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ua7(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassSplitPairRuleBuilderLevel2Valid$lambda$24());
            default:
                return wd0.b();
        }
    }
}
