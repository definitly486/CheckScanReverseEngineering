package defpackage;

import androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry;
import androidx.camera.video.internal.config.FormatComboRegistry;
import androidx.compose.foundation.AndroidOverscroll_androidKt;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.material3.SegmentedButtonKt;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.SaversKt;
import java.util.List;
import java.util.UUID;
import yads.cs0;
import yads.o11;
import yads.t72;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vu2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ vu2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return DynamicRangeFormatComboRegistry.buildHlgRegistry$lambda$0$0((FormatComboRegistry.Builder.ContainerScope) obj);
            case 1:
                return AndroidOverscroll_androidKt.defaultOverscrollFactory((CompositionLocalAccessorScope) obj);
            case 2:
                UUID uuid = (UUID) obj;
                uuid.getClass();
                return uuid;
            case 3:
                return ProgressSemanticsKt.progressSemantics$lambda$1((SemanticsPropertyReceiver) obj);
            case 4:
                return SaversKt.LocaleSaver$lambda$1(obj);
            case 5:
                return SegmentedButtonKt.SegmentedButton$lambda$4$lambda$3((SemanticsPropertyReceiver) obj);
            case 6:
                return TextFieldScrollerPosition.Saver$lambda$1((List) obj);
            case 7:
                return ((WindowInsetsHolder) obj).getIme();
            case 8:
                return Boolean.valueOf(cs0.a(obj));
            case 9:
                return o11.a((String) obj);
            default:
                return t72.a((String) obj);
        }
    }
}
