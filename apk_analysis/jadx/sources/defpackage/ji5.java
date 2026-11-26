package defpackage;

import androidx.navigation.NavController;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import java.util.List;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ji5 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ji5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return NavController.impl$lambda$0((NavController) obj);
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodSetEmbeddingRulesValid$lambda$1((SafeActivityEmbeddingComponentProvider) obj));
            case 2:
                return ((ef4) ((List) obj).get(0)).d();
            default:
                return nq0.c0((nq0) obj);
        }
    }
}
