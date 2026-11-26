package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.gg0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q14 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ q14(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return (qn2) pb9.a.getValue();
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassSplitAttributesValid$lambda$21());
            default:
                return gg0.b();
        }
    }
}
