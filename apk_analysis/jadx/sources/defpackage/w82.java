package defpackage;

import androidx.camera.camera2.impl.FlashControl;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.selection.SelectableGroupKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.paging.DataSource;
import com.posthog.PostHogEvent;
import com.posthog.surveys.SurveyAppearanceWidgetType;
import yads.e92;
import yads.gl1;
import yads.iz1;
import yads.kn3;
import yads.ri2;
import yads.th1;
import yads.vm3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class w82 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ w82(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return DataSource.invalidateCallbackTracker$lambda$0((DataSource.InvalidatedCallback) obj);
            case 1:
                return DragGestureDetectorKt.detectVerticalDragGestures$lambda$0((Offset) obj);
            case 2:
                PostHogEvent postHogEvent = (PostHogEvent) obj;
                postHogEvent.getClass();
                return Boolean.valueOf(postHogEvent.isFatalExceptionEvent());
            case 3:
                return FlashControl.setExternalFlashAeModeAsync$lambda$1$1((Throwable) obj);
            case 4:
                return SelectableGroupKt.selectableGroup$lambda$0((SemanticsPropertyReceiver) obj);
            case 5:
                return SurveyAppearanceWidgetType.Companion.fromValue$lambda$0((SurveyAppearanceWidgetType) obj);
            case 6:
                return Boolean.valueOf(e92.f(obj));
            case 7:
                return Boolean.valueOf(gl1.e(obj));
            case 8:
                return iz1.a((String) obj);
            case 9:
                return kn3.a((vm3) obj);
            case 10:
                return ri2.a((String) obj);
            default:
                return Boolean.valueOf(th1.a(obj));
        }
    }
}
