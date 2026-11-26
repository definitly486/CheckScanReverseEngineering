package androidx.compose.ui.draganddrop;

import defpackage.gh4;
import defpackage.ll3;
import defpackage.n07;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidDragAndDropManager$requestDragAndDropTransfer$1$1 extends gh4 implements ll3<Boolean> {
    final /* synthetic */ n07 $isTransferStarted;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidDragAndDropManager$requestDragAndDropTransfer$1$1(n07 n07Var) {
        super(0);
        this.$isTransferStarted = n07Var;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final Boolean invoke() {
        return Boolean.valueOf(this.$isTransferStarted.b);
    }
}
