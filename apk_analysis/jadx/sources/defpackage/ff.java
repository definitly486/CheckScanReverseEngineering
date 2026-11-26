package defpackage;

import androidx.activity.ComponentDialog;
import androidx.camera.video.internal.muxer.MediaMuxerImpl;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.material3.TimePickerState;
import androidx.compose.runtime.LinkComposer;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import yads.nq0;
import yads.zm;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ff implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ff(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Float.valueOf(AnchoredDraggableState.progress_delegate$lambda$0((AnchoredDraggableState) obj));
            case 1:
                return ComponentDialog.onBackPressedInput_delegate$lambda$0((ComponentDialog) obj);
            case 2:
                return ((LinkComposer) obj).currentStackTrace();
            case 3:
                return MediaMuxerImpl.start$lambda$1((MediaMuxerImpl) obj);
            case 4:
                return SavedStateRegistryController.Companion.create$lambda$0((SavedStateRegistryOwner) obj);
            case 5:
                return TimePickerKt.PeriodToggleImpl$lambda$46$lambda$43$lambda$42((TimePickerState) obj);
            case 6:
                return nq0.B((nq0) obj);
            default:
                return Boolean.valueOf(zm.a((zm) obj));
        }
    }
}
