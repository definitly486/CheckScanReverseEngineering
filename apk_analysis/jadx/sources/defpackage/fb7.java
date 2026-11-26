package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.ag0;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class fb7 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ fb7(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassSplitInfoTokenValid$lambda$38());
            case 1:
                return ag0.a();
            default:
                return nq0.j();
        }
    }
}
