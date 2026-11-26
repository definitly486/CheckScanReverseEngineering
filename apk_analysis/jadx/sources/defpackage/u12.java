package defpackage;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.pulltorefresh.PullToRefreshKt;
import yads.gf0;
import yads.nq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u12 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ u12(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return CoreTextFieldKt.CoreTextField$lambda$4$0((Orientation) obj);
            case 1:
                s96 s96Var = (s96) obj;
                return Integer.valueOf(x97.a(s96Var, (mp7[]) s96Var.j.getValue()));
            case 2:
                return Float.valueOf(PullToRefreshKt.CircularArrowProgressIndicator_RPmYEkk$lambda$7$lambda$6((FloatProducer) obj));
            case 3:
                return SelectionManagerKt.contextMenuBuilder$lambda$0$1((SelectionManager) obj);
            case 4:
                return gf0.k((gf0) obj);
            default:
                return nq0.M((nq0) obj);
        }
    }
}
