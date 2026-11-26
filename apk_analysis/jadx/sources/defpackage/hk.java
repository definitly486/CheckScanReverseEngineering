package defpackage;

import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.bo1;
import yads.gf0;
import yads.l15;
import yads.x95;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class hk implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hk(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ((TextContextMenuDataProvider) obj).data();
            case 1:
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$8((CoreTextFieldSemanticsModifierNode) obj));
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodSetEmbeddedActivityWindowInfoCallbackValid$lambda$40((SafeActivityEmbeddingComponentProvider) obj));
            case 3:
                return bo1.g((bo1) obj);
            case 4:
                return gf0.b((gf0) obj);
            default:
                return Long.valueOf(x95.a((l15) obj));
        }
    }
}
