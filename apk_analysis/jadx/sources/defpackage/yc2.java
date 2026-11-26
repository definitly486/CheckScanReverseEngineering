package defpackage;

import androidx.activity.compose.LocalActivityKt;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry;
import androidx.camera.video.internal.config.FormatComboRegistry;
import androidx.compose.foundation.ScrollState;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import com.posthog.PostHogEvent;
import yads.e91;
import yads.fi1;
import yads.wo2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yc2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ yc2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Debug.formatParameterMapToLineSeparatedList$lambda$0((b36) obj);
            case 1:
                return DynamicRangeFormatComboRegistry.buildHdr10Registry$lambda$0$1((FormatComboRegistry.Builder.ContainerScope) obj);
            case 2:
                PostHogEvent postHogEvent = (PostHogEvent) obj;
                postHogEvent.getClass();
                return postHogEvent.getUuid();
            case 3:
                return Boolean.valueOf(((Character) obj).charValue() == ':');
            case 4:
                return LocalActivityKt.LocalActivity$lambda$0((CompositionLocalAccessorScope) obj);
            case 5:
                return ScrollState.Saver$lambda$1(((Integer) obj).intValue());
            case 6:
                return Boolean.valueOf(e91.c(obj));
            case 7:
                return Boolean.valueOf(fi1.b(obj));
            default:
                return wo2.c(obj);
        }
    }
}
