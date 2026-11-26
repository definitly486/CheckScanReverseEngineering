package defpackage;

import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import yads.rv5;
import yads.wq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uc6 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ uc6(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((wc6) obj).a();
                return j59.a;
            case 1:
                return TextContextMenuToolbarHandlerNode.derivedData_delegate$lambda$0((TextContextMenuToolbarHandlerNode) obj);
            case 2:
                return rv5.a((rv5) obj);
            default:
                return wq0.f((wq0) obj);
        }
    }
}
