package defpackage;

import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gb7 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gb7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() throws NoSuchMethodException {
        boolean zIsMethodInvalidateTopVisibleSplitAttributesValid$lambda$26;
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                zIsMethodInvalidateTopVisibleSplitAttributesValid$lambda$26 = SafeActivityEmbeddingComponentProvider.isMethodInvalidateTopVisibleSplitAttributesValid$lambda$26((SafeActivityEmbeddingComponentProvider) obj);
                break;
            default:
                zIsMethodInvalidateTopVisibleSplitAttributesValid$lambda$26 = TextStringSimpleNode.applySemantics$lambda$3((TextStringSimpleNode) obj);
                break;
        }
        return Boolean.valueOf(zIsMethodInvalidateTopVisibleSplitAttributesValid$lambda$26);
    }
}
