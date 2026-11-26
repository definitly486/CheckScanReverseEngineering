package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qn4 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ qn4(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        SaverScope saverScope = (SaverScope) obj;
        switch (this.b) {
            case 0:
                return LazyListState.Companion.saver$lambda$0(saverScope, (LazyListState) obj2);
            default:
                return SaversKt.AnnotationRangeListSaver$lambda$0(saverScope, (List) obj2);
        }
    }
}
