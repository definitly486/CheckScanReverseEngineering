package defpackage;

import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SaversKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class lf implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ lf(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        SaverScope saverScope = (SaverScope) obj;
        switch (this.b) {
            case 0:
                return AnchoredDraggableState.Companion.Saver$lambda$0(saverScope, (AnchoredDraggableState) obj2);
            default:
                return SaversKt.AnnotatedStringSaver$lambda$0(saverScope, (AnnotatedString) obj2);
        }
    }
}
