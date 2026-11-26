package defpackage;

import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.et1;
import yads.gf0;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class a22 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ a22(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$9((CoreTextFieldSemanticsModifierNode) obj));
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodPinUnpinTopActivityStackValid$lambda$32((SafeActivityEmbeddingComponentProvider) obj));
            case 2:
                return et1.a((et1) obj);
            case 3:
                return gf0.d((gf0) obj);
            default:
                return nq0.X((nq0) obj);
        }
    }
}
