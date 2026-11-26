package defpackage;

import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.selection.SelectionManager_androidKt;
import androidx.compose.material3.IconKt;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.unit.Density;
import java.util.List;
import yads.sy0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mk implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mk(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AndroidTextContextMenuToolbarProvider.onDataChange$lambda$0((AndroidTextContextMenuToolbarProvider) obj2, obj);
            case 1:
                return FlowRowOverflow.Companion.expandIndicator$lambda$0((dm3) obj2, (FlowLayoutOverflowState) obj);
            case 2:
                return IconKt.Icon$lambda$12$lambda$11((ColorProducer) obj2, (CacheDrawScope) obj);
            case 3:
                return SelectionManager_androidKt.selectionMagnifier$lambda$0$4$0$0((ll3) obj2, (Density) obj);
            default:
                return sy0.a(obj2, (List) obj);
        }
    }
}
