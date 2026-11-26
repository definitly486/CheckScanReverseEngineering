package defpackage;

import androidx.camera.camera2.pipe.compat.ActiveCamera;
import androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager;
import androidx.navigation.NavDeepLink;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkProgressDao_Impl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ui5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ui5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(NavDestinationImpl.addDeepLink$lambda$4((NavDeepLink) obj2, (String) obj));
            case 1:
                return PruningCamera2DeviceManager.openCameraWithRetry_zDSwpeU$lambda$1((PruningCamera2DeviceManager) obj2, (ActiveCamera) obj);
            default:
                return WorkProgressDao_Impl.delete$lambda$2("DELETE from WorkProgress where work_spec_id=?", (String) obj2, (SQLiteConnection) obj);
        }
    }
}
