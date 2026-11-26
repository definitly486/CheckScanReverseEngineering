package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
final class ExposedDropdownMenuAnchorNode extends Modifier.Node {
    private ll3<j59> updateStateOnAttach;

    public ExposedDropdownMenuAnchorNode(ll3<j59> ll3Var) {
        this.updateStateOnAttach = ll3Var;
    }

    public final ll3<j59> getUpdateStateOnAttach() {
        return this.updateStateOnAttach;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        this.updateStateOnAttach.invoke();
    }

    public final void setUpdateStateOnAttach(ll3<j59> ll3Var) {
        this.updateStateOnAttach = ll3Var;
    }
}
