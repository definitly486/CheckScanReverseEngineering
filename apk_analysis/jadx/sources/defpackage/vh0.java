package defpackage;

import androidx.compose.foundation.BasicTooltipKt;
import androidx.compose.foundation.GestureNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.paging.PagedList;
import java.lang.ref.WeakReference;
import yads.ho2;
import yads.st;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vh0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vh0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return BasicTooltipKt.TooltipPopup$lambda$1$0$0((String) obj2, (SemanticsPropertyReceiver) obj);
            case 1:
                return Boolean.valueOf(GestureNodeKt.traverseAncestorGestureConnections$lambda$0((nl3) obj2, (TraversableNode) obj));
            case 2:
                return Boolean.valueOf(PagedList.removeWeakCallback$lambda$0((PagedList.Callback) obj2, (WeakReference) obj));
            default:
                return ho2.a((ho2) obj2, (st) obj);
        }
    }
}
