package defpackage;

import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.compose.material3.TooltipKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hz0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hz0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Camera2CameraMetadata._sessionCharacteristicsKeys$lambda$0((Camera2CameraMetadata) obj);
            case 1:
                return ((GapComposer) obj).currentStackTrace();
            default:
                return TooltipKt.TooltipBox$lambda$4$lambda$3((MutableState) obj);
        }
    }
}
