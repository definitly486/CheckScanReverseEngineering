package defpackage;

import android.widget.TextView;
import androidx.compose.foundation.gestures.DragGestureNode;
import androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.ui.input.pointer.PointerType;
import com.monetization.ads.mediation.interstitial.c;
import java.util.List;
import yads.kw5;
import yads.q74;
import yads.u13;
import yads.yu3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class mr2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mr2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(DragGestureNode._canDrag$lambda$0((DragGestureNode) obj2, (PointerType) obj));
            case 1:
                return LazyGridState.Companion.saver$lambda$1((LazyGridPrefetchStrategy) obj2, (List) obj);
            case 2:
                return c.a((c) obj2, (q74) obj);
            case 3:
                return kw5.a((TextView) obj2, ((Integer) obj).intValue());
            default:
                return yu3.b((List) obj2, (u13) obj);
        }
    }
}
