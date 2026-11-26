package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$8$1$1$2;
import androidx.compose.material3.ListItemKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.PopUpToBuilder;
import java.util.List;
import yads.jq1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class y12 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ y12(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return CoreTextFieldKt$CoreTextField$8$1$1$2.measure_3p2s80s$lambda$2((Placeable.PlacementScope) obj);
            case 1:
                return LazyListState.Saver$lambda$1((List) obj);
            case 2:
                return ListItemKt.ListItem_HXNGIdc$lambda$5$lambda$4((SemanticsPropertyReceiver) obj);
            case 3:
                return NavOptionsBuilder.popUpTo$lambda$3((PopUpToBuilder) obj);
            default:
                return Boolean.valueOf(jq1.b(obj));
        }
    }
}
