package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class BringIntoViewNode extends Modifier.Node {
    private nl3<? super nl3<? super Rect, j59>, j59> onRequesterReady;
    private final nl3<Rect, j59> requester = new BringIntoViewNode$requester$1(this);

    public BringIntoViewNode(nl3<? super nl3<? super Rect, j59>, j59> nl3Var) {
        this.onRequesterReady = nl3Var;
    }

    public final nl3<nl3<? super Rect, j59>, j59> getOnRequesterReady() {
        return this.onRequesterReady;
    }

    public final nl3<Rect, j59> getRequester() {
        return this.requester;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        this.onRequesterReady.invoke(this.requester);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.onRequesterReady.invoke(null);
    }

    public final void setOnRequesterReady(nl3<? super nl3<? super Rect, j59>, j59> nl3Var) {
        this.onRequesterReady = nl3Var;
    }

    public final void update(nl3<? super nl3<? super Rect, j59>, j59> nl3Var) {
        this.onRequesterReady = nl3Var;
        if (isAttached()) {
            nl3Var.invoke(this.requester);
        }
    }
}
