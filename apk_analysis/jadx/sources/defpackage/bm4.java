package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridMeasureKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.Placeable;
import androidx.work.ListenableWorker;
import androidx.work.impl.WorkerWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class bm4 implements nl3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ bm4(MutableState mutableState, List list, List list2, boolean z) {
        this.d = mutableState;
        this.e = list;
        this.f = list2;
        this.c = z;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.f;
        Object obj3 = this.e;
        boolean z = this.c;
        Object obj4 = this.d;
        switch (i) {
            case 0:
                return LazyGridMeasureKt.measureLazyGrid_t1x4au0$lambda$8((MutableState) obj4, (List) obj3, (List) obj2, z, (Placeable.PlacementScope) obj);
            default:
                return WorkerWrapper.runWorker$lambda$4((ListenableWorker) obj4, z, (String) obj3, (WorkerWrapper) obj2, (Throwable) obj);
        }
    }

    public /* synthetic */ bm4(ListenableWorker listenableWorker, boolean z, String str, WorkerWrapper workerWrapper) {
        this.d = listenableWorker;
        this.c = z;
        this.e = str;
        this.f = workerWrapper;
    }
}
