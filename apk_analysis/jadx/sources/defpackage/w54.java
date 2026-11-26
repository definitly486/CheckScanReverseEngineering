package defpackage;

import androidx.compose.foundation.layout.InsetsConsumingModifierNode;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w54 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ w54(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(InsetsConsumingModifierNode.onAttach$lambda$0((InsetsConsumingModifierNode) obj2, (TraversableNode) obj));
            default:
                return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$26$lambda$25((ll3) obj2, (SemanticsPropertyReceiver) obj);
        }
    }
}
