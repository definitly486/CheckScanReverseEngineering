package defpackage;

import androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager;
import androidx.camera.camera2.pipe.compat.RequestCloseById;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.material3.ClockFaceSizeModifier;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadStateAdapter;
import androidx.paging.PagingDataAdapter;
import yads.b76;
import yads.jk1;
import yads.u66;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class im1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ im1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ClockFaceSizeModifier.measure_3p2s80s$lambda$0((Placeable) obj2, (Placeable.PlacementScope) obj);
            case 1:
                return PagingDataAdapter.withLoadStateFooter$lambda$0((LoadStateAdapter) obj2, (CombinedLoadStates) obj);
            case 2:
                return PruningCamera2DeviceManager.prune$lambda$6((RequestCloseById) obj2, (Throwable) obj);
            case 3:
                return SelectionManager._init_$lambda$6((SelectionManager) obj2, ((Long) obj).longValue());
            case 4:
                return TimePickerKt.PeriodToggleImpl$lambda$41$lambda$40((String) obj2, (SemanticsPropertyReceiver) obj);
            case 5:
                return b76.a((b76) obj2, (u66) obj);
            default:
                return jk1.b((bm3) obj2, (Exception) obj);
        }
    }
}
