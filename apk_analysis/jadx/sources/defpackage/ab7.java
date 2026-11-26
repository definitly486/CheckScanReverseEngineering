package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.gf0;
import yads.ha6;
import yads.ng0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ab7 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ab7(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodGetAnimationParamsValid$lambda$47());
            case 1:
                return gf0.c();
            case 2:
                return ha6.a();
            default:
                return ng0.a();
        }
    }
}
