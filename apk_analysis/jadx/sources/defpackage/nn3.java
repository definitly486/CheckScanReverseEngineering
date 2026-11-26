package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.bo1;
import yads.gf0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class nn3 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ nn3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((nl3) obj).invoke(un3.a.a);
                return j59.a;
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodUpdateActivityStackAttributesValid$lambda$59((SafeActivityEmbeddingComponentProvider) obj));
            case 2:
                return bo1.a((bo1) obj);
            default:
                return gf0.g((gf0) obj);
        }
    }
}
