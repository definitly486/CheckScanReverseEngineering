package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.runtime.GapComposerKt;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vo3 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ vo3(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return GapComposerKt.deactivateCurrentGroup$lambda$0((RememberManager) obj4, (SlotWriter) obj3, ((Integer) obj).intValue(), obj2);
            default:
                return LazyGridDslKt.rememberRowHeightSums$lambda$0$0((GridCells) obj4, (Arrangement.Vertical) obj3, (Density) obj, (Constraints) obj2);
        }
    }
}
