package defpackage;

import androidx.activity.compose.ReportDrawnKt;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.material3.DefaultBasicAlertDialogOverride;
import yads.g05;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bc implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ bc(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        boolean zDetectDragGestures$lambda$5;
        switch (this.b) {
            case 0:
                return DefaultBasicAlertDialogOverride.INSTANCE;
            case 1:
                zDetectDragGestures$lambda$5 = DragGestureDetectorKt.detectDragGestures$lambda$5();
                break;
            case 2:
                zDetectDragGestures$lambda$5 = ReportDrawnKt.ReportDrawn$lambda$0$0();
                break;
            default:
                return g05.a();
        }
        return Boolean.valueOf(zDetectDragGestures$lambda$5);
    }
}
