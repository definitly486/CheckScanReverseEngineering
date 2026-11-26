package defpackage;

import androidx.camera.camera2.pipe.core.ProcessingQueue;
import androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry;
import androidx.camera.video.internal.config.FormatComboRegistry;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.TabIndicatorOffsetNode;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.input.TextFieldValue;
import com.posthog.PostHogEvent;
import java.util.List;
import yads.cs0;
import yads.m11;
import yads.o12;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wu2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ wu2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return DynamicRangeFormatComboRegistry.buildSdrRegistry$lambda$0$0((FormatComboRegistry.Builder.ContainerScope) obj);
            case 1:
                ((PostHogEvent) obj).getClass();
                return "snapshot";
            case 2:
                return Boolean.valueOf(((Character) obj).charValue() == '-');
            case 3:
                return LazyStaggeredGridState.Saver$lambda$1((List) obj);
            case 4:
                return ProcessingQueue._init_$lambda$0((List) obj);
            case 5:
                j44 j44Var = (j44) obj;
                j44Var.getClass();
                return j44Var.b;
            case 6:
                return TabIndicatorOffsetNode.measure_3p2s80s$lambda$0((Placeable.PlacementScope) obj);
            case 7:
                return TextFieldSelectionManager.onValueChange$lambda$0((TextFieldValue) obj);
            case 8:
                return ((WindowInsetsHolder) obj).getNavigationBars();
            case 9:
                return Boolean.valueOf(cs0.b(obj));
            case 10:
                return m11.a((String) obj);
            default:
                return o12.a((String) obj);
        }
    }
}
