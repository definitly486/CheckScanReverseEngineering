package defpackage;

import androidx.camera.camera2.adapter.CameraInfoAdapter;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.material3.DrawerState;
import androidx.compose.material3.NavigationRailKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.retain.RetainedEffectKt;
import androidx.room.InvalidationTracker;
import java.util.ArrayList;
import java.util.List;
import yads.lb;
import yads.nq0;
import yads.sc3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uj implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ uj(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(AndroidSelectionHandles_androidKt.SelectionHandle_wLIcFTc$lambda$1$0$1$0((OffsetProvider) obj));
            case 1:
                return CameraInfoAdapter._physicalCameraInfos_delegate$lambda$0((CameraInfoAdapter) obj);
            case 2:
                fs1 fs1Var = (fs1) obj;
                List<? extends ll3<? extends List<? extends td2.a>>> list = fs1Var.e;
                ArrayList arrayList = new ArrayList();
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    nn1.s(list.get(i2).invoke(), arrayList);
                }
                fs1Var.e = kx2.b;
                return arrayList;
            case 3:
                return Float.valueOf(DrawerState.anchoredDraggableState$lambda$3((DrawerState) obj));
            case 4:
                return Boolean.valueOf(InvalidationTracker._init_$lambda$2((InvalidationTracker) obj));
            case 5:
                return Float.valueOf(NavigationRailKt.NavigationRailItem$lambda$10$lambda$7$lambda$6((State) obj));
            case 6:
                return RetainedEffectKt.RetainedEffect$lambda$1$0((nl3) obj);
            case 7:
                return ((SelectionManager) obj).getContentRect();
            case 8:
                return Boolean.valueOf(lb.a((lb) obj));
            case 9:
                return nq0.x((nq0) obj);
            default:
                return sc3.a((sc3) obj);
        }
    }
}
