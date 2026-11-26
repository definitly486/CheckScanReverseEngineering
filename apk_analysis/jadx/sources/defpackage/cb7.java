package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.gf0;
import yads.hc3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class cb7 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ cb7(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassSplitInfoValid$lambda$8());
            case 1:
                return gf0.n();
            default:
                return hc3.a((y22) null);
        }
    }
}
