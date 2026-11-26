package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope;
import androidx.compose.runtime.saveable.MapSaverKt;
import androidx.compose.runtime.saveable.SaverScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ul4 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ cm3 c;

    public /* synthetic */ ul4(cm3 cm3Var, int i) {
        this.b = i;
        this.c = cm3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        cm3 cm3Var = this.c;
        switch (i) {
            case 0:
                return LazyGridIntervalContent.item$lambda$1$0((nl3) cm3Var, (LazyGridItemSpanScope) obj, ((Integer) obj2).intValue());
            default:
                return MapSaverKt.mapSaver$lambda$0((bm3) cm3Var, (SaverScope) obj, obj2);
        }
    }
}
