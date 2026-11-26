package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import com.tapjoy.TJTracking;
import yads.hc3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class eb7 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ eb7(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassWindowAttributesValid$lambda$37());
            case 1:
                return TJTracking.a();
            default:
                return hc3.b();
        }
    }
}
