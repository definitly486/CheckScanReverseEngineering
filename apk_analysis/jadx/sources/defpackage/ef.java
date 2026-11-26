package defpackage;

import androidx.compose.foundation.lazy.LazyLayoutSemanticStateKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.material3.AppBarColumnKt;
import androidx.compose.material3.SearchBarKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.runtime.State;
import yads.nq0;
import yads.x60;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ef implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ef(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return AnchoredDraggableState.targetValue_delegate$lambda$3((AnchoredDraggableState) obj);
            case 1:
                return AppBarColumnKt.AppBarColumn$lambda$1$lambda$0((State) obj);
            case 2:
                return Integer.valueOf(LazyLayoutSemanticStateKt.AnonymousClass1.totalItemsCount_delegate$lambda$0((LazyListState) obj));
            case 3:
                return SearchBarKt.DockedSearchBar_EQC0FA8$lambda$24$lambda$23((nl3) obj);
            case 4:
                return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$8((TextFieldDecoratorModifierNode) obj));
            case 5:
                return nq0.k((nq0) obj);
            default:
                return x60.a((x60) obj);
        }
    }
}
