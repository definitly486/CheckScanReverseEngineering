package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContent;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uo3 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ uo3(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return GapComposer.invokeMovableContentLambda$lambda$0((MovableContent) this.c, this.d, (Composer) obj, iIntValue);
            default:
                return LazyGridDslKt.rememberColumnWidthSums$lambda$0$0((GridCells) this.c, (Arrangement.Horizontal) this.d, (Density) obj, (Constraints) obj2);
        }
    }
}
