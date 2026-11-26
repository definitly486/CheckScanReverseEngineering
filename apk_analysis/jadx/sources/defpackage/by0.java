package defpackage;

import androidx.compose.material3.SheetState;
import androidx.paging.CachedPageEventFlow;
import yads.ig6;
import yads.rh0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class by0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ by0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return CachedPageEventFlow.job$lambda$0$0((CachedPageEventFlow) obj2, (Throwable) obj);
            case 1:
                return Float.valueOf(SheetState.anchoredDraggableState$lambda$5((ll3) obj2, ((Float) obj).floatValue()));
            default:
                return ig6.a((ig6) obj2, (rh0) obj);
        }
    }
}
