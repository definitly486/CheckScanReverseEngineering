package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.VerbatimTtsAnnotation;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xl4 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xl4(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return LazyGridIntervalContent.DefaultSpan$lambda$0((LazyGridItemSpanScope) obj, ((Integer) obj2).intValue());
            case 1:
                return SaversKt.VerbatimTtsAnnotationSaver$lambda$0((SaverScope) obj, (VerbatimTtsAnnotation) obj2);
            default:
                it8 it8Var = (it8) obj;
                o22.a aVar = (o22.a) obj2;
                if (it8Var != null) {
                    return it8Var;
                }
                if (aVar instanceof it8) {
                    return (it8) aVar;
                }
                return null;
        }
    }
}
