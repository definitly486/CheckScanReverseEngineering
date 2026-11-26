package defpackage;

import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.SelectionManager_androidKt;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.bo1;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class c22 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ c22(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return CoreTextFieldSemanticsModifierNode._init_$lambda$0((CoreTextFieldSemanticsModifierNode) obj);
            case 1:
                return Float.valueOf(MultiParagraphIntrinsics.minIntrinsicWidth_delegate$lambda$0((MultiParagraphIntrinsics) obj));
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodClearActivityStackAttributesCalculatorValid$lambda$58((SafeActivityEmbeddingComponentProvider) obj));
            case 3:
                return Boolean.valueOf(SelectionManager_androidKt.addSelectionContainerTextContextMenuComponents$lambda$0$1$0$1((SelectionManager) obj));
            case 4:
                return bo1.i((bo1) obj);
            default:
                return nq0.b((nq0) obj);
        }
    }
}
