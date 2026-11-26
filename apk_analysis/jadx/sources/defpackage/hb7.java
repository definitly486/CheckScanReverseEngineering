package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.gg0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class hb7 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ hb7(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassAnimationParamsValid$lambda$51());
            default:
                return gg0.a();
        }
    }
}
