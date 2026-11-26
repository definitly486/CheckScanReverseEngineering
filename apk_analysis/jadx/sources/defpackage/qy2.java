package defpackage;

import androidx.camera.camera2.impl.FlashControl;
import androidx.compose.foundation.gestures.OffsetSmoother;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.ui.text.SaversKt;
import androidx.paging.PagedList;
import com.posthog.PostHogEvent;
import java.lang.ref.WeakReference;
import java.util.List;
import yads.e92;
import yads.gl1;
import yads.ix0;
import yads.tf1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qy2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ qy2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                PostHogEvent postHogEvent = (PostHogEvent) obj;
                postHogEvent.getClass();
                return "Event " + postHogEvent.getEvent();
            case 1:
                return FlashControl.setTorchForScreenFlash$lambda$1$1((Throwable) obj);
            case 2:
                return LegacyTextInputMethodRequest.onEditCommand$lambda$0((List) obj);
            case 3:
                return Float.valueOf(OffsetSmoother.smoothEventPosition_MK_Hz9U$lambda$2(((Long) obj).longValue()));
            case 4:
                return Boolean.valueOf(PagedList.addWeakLoadStateListener$lambda$0((WeakReference) obj));
            case 5:
                return SaversKt.VerbatimTtsAnnotationSaver$lambda$1(obj);
            case 6:
                return Boolean.valueOf(e92.d(obj));
            case 7:
                return Boolean.valueOf(gl1.c(obj));
            case 8:
                return Boolean.valueOf(ix0.a(obj));
            default:
                return tf1.a((String) obj);
        }
    }
}
