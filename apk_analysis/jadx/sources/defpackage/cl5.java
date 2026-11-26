package defpackage;

import androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager;
import androidx.compose.foundation.content.ReceiveContentNode;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.material3.NavigationItemKt;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkProgressDao_Impl;
import yads.jk1;
import yads.sd4;
import yads.zl4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cl5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ cl5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return NavigationItemKt.Indicator_3J_VO9M$lambda$44$lambda$43((ll3) obj2, (GraphicsLayerScope) obj);
            case 1:
                return PruningCamera2DeviceManager.prune$lambda$2$0((xp1) obj2, (Throwable) obj);
            case 2:
                return ReceiveContentNode._init_$lambda$0((ReceiveContentNode) obj2, (DragAndDropEvent) obj);
            case 3:
                return SelectionManager._init_$lambda$5((SelectionManager) obj2, ((Long) obj).longValue());
            case 4:
                return WorkProgressDao_Impl.getProgressForWorkSpecId$lambda$1("SELECT progress FROM WorkProgress WHERE work_spec_id=?", (String) obj2, (SQLiteConnection) obj);
            case 5:
                return jk1.a((bm3) obj2, (Exception) obj);
            default:
                return zl4.a((zl4) obj2, (sd4) obj);
        }
    }
}
