package defpackage;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.ContentScale;

/* JADX INFO: loaded from: classes2.dex */
public final class gy1 extends z {
    public final ps g;

    public gy1(ps psVar, Alignment alignment, ContentScale contentScale, float f, boolean z, ox1 ox1Var) {
        this.b = alignment;
        this.c = contentScale;
        this.d = f;
        this.e = z;
        this.f = ox1Var;
        this.g = psVar;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        y22 coroutineScope = getCoroutineScope();
        ps psVar = this.g;
        psVar.i = coroutineScope;
        psVar.onRemembered();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        this.g.onForgotten();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onReset() {
        this.g.c(null);
    }
}
