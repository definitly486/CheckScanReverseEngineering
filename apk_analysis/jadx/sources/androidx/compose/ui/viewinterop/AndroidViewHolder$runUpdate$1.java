package androidx.compose.ui.viewinterop;

import android.view.ViewParent;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidViewHolder$runUpdate$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ AndroidViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder$runUpdate$1(AndroidViewHolder androidViewHolder) {
        super(0);
        this.this$0 = androidViewHolder;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (this.this$0.hasUpdateBlock && this.this$0.isAttachedToWindow()) {
            ViewParent parent = this.this$0.getView().getParent();
            AndroidViewHolder androidViewHolder = this.this$0;
            if (parent == androidViewHolder) {
                OwnerSnapshotObserver snapshotObserver = androidViewHolder.getSnapshotObserver();
                snapshotObserver.observer.observeReads(this.this$0, AndroidViewHolder.OnCommitAffectingUpdate, this.this$0.getUpdate());
            }
        }
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
