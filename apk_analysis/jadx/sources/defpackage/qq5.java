package defpackage;

import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qq5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qq5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                al1 al1Var = (al1) obj;
                al1Var.getClass();
                List<? extends Annotation> list = ((rq5) obj2).b;
                list.getClass();
                al1Var.b = list;
                return j59.a;
            case 1:
                return Recomposer.effectJob$lambda$0$0((Recomposer) obj2, (Throwable) obj);
            default:
                return SelectionManager._get_contextMenuAreaModifier_$lambda$0((SelectionManager) obj2, (LayoutCoordinates) obj);
        }
    }
}
