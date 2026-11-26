package defpackage;

import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.SelectionManager_androidKt;
import yads.bo1;
import yads.gf0;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class b22 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b22(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$10((CoreTextFieldSemanticsModifierNode) obj));
            case 1:
                return SelectionManager_androidKt.addSelectionContainerTextContextMenuComponents$lambda$0$1$0$0((SelectionManager) obj);
            case 2:
                return bo1.b((bo1) obj);
            case 3:
                return gf0.c((gf0) obj);
            default:
                return nq0.O((nq0) obj);
        }
    }
}
