package androidx.compose.ui.node;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeUiNode$Companion$SetCompositeKeyHash$1 extends gh4 implements bm3<ComposeUiNode, Integer, j59> {
    public static final ComposeUiNode$Companion$SetCompositeKeyHash$1 INSTANCE = new ComposeUiNode$Companion$SetCompositeKeyHash$1();

    public ComposeUiNode$Companion$SetCompositeKeyHash$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(ComposeUiNode composeUiNode, Integer num) {
        invoke(composeUiNode, num.intValue());
        return j59.a;
    }

    public final void invoke(ComposeUiNode composeUiNode, int i) {
        composeUiNode.setCompositeKeyHash(i);
    }
}
