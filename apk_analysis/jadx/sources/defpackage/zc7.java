package defpackage;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SpanStyle;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class zc7 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ zc7(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return SaversKt.SpanStyleSaver$lambda$0((SaverScope) obj, (SpanStyle) obj2);
            default:
                ne4 ne4Var = (ne4) obj;
                List list = (List) obj2;
                ne4Var.getClass();
                list.getClass();
                ArrayList arrayListE = iq7.e(nq7.a, list, true);
                arrayListE.getClass();
                return iq7.a(ne4Var, arrayListE, new vc6(list, 2));
        }
    }
}
