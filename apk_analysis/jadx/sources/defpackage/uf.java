package defpackage;

import androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.PopUpToBuilder;
import yads.jo0;
import yads.lg1;
import yads.nd2;
import yads.sr0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class uf implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ uf(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AnchoredDraggableState.Companion.Saver$lambda$1(obj);
            case 1:
                return NavOptionsBuilder.popUpTo$lambda$1((PopUpToBuilder) obj);
            case 2:
                return Boolean.valueOf(RetryingCameraStateOpener.openCameraWithRetry_aeCOTgg$lambda$0((j59) obj));
            case 3:
                return jo0.a(obj);
            case 4:
                return lg1.a((String) obj);
            case 5:
                return nd2.a((String) obj);
            default:
                return Boolean.valueOf(sr0.a(obj));
        }
    }
}
