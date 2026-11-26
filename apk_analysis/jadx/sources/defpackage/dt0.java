package defpackage;

import android.graphics.Bitmap;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.SheetState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateSet;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import java.util.Collection;
import java.util.Set;
import yads.n8;
import yads.q31;
import yads.wc5;
import yads.yl0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dt0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ dt0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return BottomSheetScaffoldKt.verticalScaleUp$lambda$17((SheetState) obj2, (GraphicsLayerScope) obj);
            case 1:
                return Float.valueOf(ScrollableStateKt.rememberScrollableState$lambda$0$0((State) obj2, ((Float) obj).floatValue()));
            case 2:
                return Boolean.valueOf(SnapshotStateSet.retainAll$lambda$0((Collection) obj2, (Set) obj));
            case 3:
                return q31.a((wc5) obj2, (Bitmap) obj);
            default:
                return yl0.c((bm3[]) obj2, (n8) obj);
        }
    }
}
