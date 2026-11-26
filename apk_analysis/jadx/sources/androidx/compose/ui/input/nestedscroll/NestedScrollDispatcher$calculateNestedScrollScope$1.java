package androidx.compose.ui.input.nestedscroll;

import defpackage.gh4;
import defpackage.ll3;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
public final class NestedScrollDispatcher$calculateNestedScrollScope$1 extends gh4 implements ll3<y22> {
    final /* synthetic */ NestedScrollDispatcher this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedScrollDispatcher$calculateNestedScrollScope$1(NestedScrollDispatcher nestedScrollDispatcher) {
        super(0);
        this.this$0 = nestedScrollDispatcher;
    }

    @Override // defpackage.ll3
    public final y22 invoke() {
        return this.this$0.getScope$ui();
    }
}
