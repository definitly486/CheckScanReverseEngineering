package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.fa4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qy1 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ qy1(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return id4.b;
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassDividerAttributesBuilderValid$lambda$46());
            default:
                return fa4.a();
        }
    }
}
