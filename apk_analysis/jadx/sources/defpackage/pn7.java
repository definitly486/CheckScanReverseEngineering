package defpackage;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.selection.SelectionManager_androidKt;
import yads.c62;
import yads.m62;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class pn7 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ pn7(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return SelectionManager_androidKt.addSelectionContainerTextContextMenuComponents$lambda$0$selectionContainerItem$0((ll3) obj3, (ll3) obj2, (TextContextMenuSession) obj);
            default:
                return c62.a((c62) obj3, (m62) obj2, ((Long) obj).longValue());
        }
    }
}
