package defpackage;

import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.style.TextAlign;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class oc7 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ oc7(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        SaverScope saverScope = (SaverScope) obj;
        switch (this.b) {
            case 0:
                return SaversKt.TextAlignSaver$lambda$0(saverScope, (TextAlign) obj2);
            default:
                return SelectionRegistrarImpl.Saver$lambda$0(saverScope, (SelectionRegistrarImpl) obj2);
        }
    }
}
