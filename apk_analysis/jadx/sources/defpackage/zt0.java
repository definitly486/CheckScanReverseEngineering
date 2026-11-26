package defpackage;

import android.view.View;
import android.view.Window;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zt0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ zt0(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return BringIntoViewResponderNode.bringIntoView$lambda$1((BringIntoViewResponderNode) this.c, (LayoutCoordinates) this.d, (ll3) this.e);
            default:
                od6 od6Var = (od6) this.c;
                View view = (View) this.d;
                Window window = (Window) this.e;
                if (!od6Var.l || aa4.e(od6Var.c.y, "posthog-flutter")) {
                    return j59.a;
                }
                Object value = od6Var.g.getValue();
                value.getClass();
                ((ExecutorService) value).submit(new hd6(od6Var, view, window, 0));
                return j59.a;
        }
    }
}
