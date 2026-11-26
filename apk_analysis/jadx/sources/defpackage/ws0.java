package defpackage;

import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry;
import androidx.camera.video.internal.config.FormatComboRegistry;
import androidx.compose.material3.BottomAppBarState;
import androidx.compose.ui.text.SaversKt;
import com.posthog.PostHogEvent;
import java.util.List;
import yads.e91;
import yads.fi1;
import yads.l20;
import yads.v20;
import yads.wo2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ws0 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ws0(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return BottomAppBarState.Companion.Saver$lambda$1((List) obj);
            case 1:
                return Debug.formatParameterMap$lambda$0((b36) obj);
            case 2:
                return DynamicRangeFormatComboRegistry.buildHdr10Registry$lambda$0$0((FormatComboRegistry.Builder.ContainerScope) obj);
            case 3:
                PostHogEvent postHogEvent = (PostHogEvent) obj;
                postHogEvent.getClass();
                return Boolean.valueOf(postHogEvent.isFatalExceptionEvent());
            case 4:
                char cCharValue = ((Character) obj).charValue();
                return Boolean.valueOf(cCharValue == 'T' || cCharValue == 't');
            case 5:
                return SaversKt.LineHeightStyleSaver$lambda$1(obj);
            case 6:
                return Boolean.valueOf(e91.b(obj));
            case 7:
                return Boolean.valueOf(fi1.a(obj));
            case 8:
                return Integer.valueOf(v20.a((l20) obj));
            default:
                return wo2.a(obj);
        }
    }
}
