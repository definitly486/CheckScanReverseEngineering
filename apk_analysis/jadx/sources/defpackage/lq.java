package defpackage;

import androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode;
import androidx.compose.material3.SliderDefaults;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Placeable;
import com.tapjoy.internal.AppUsageForegroundService;
import java.util.List;
import yads.u13;
import yads.yu3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lq implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ lq(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AppUsageForegroundService.a((AppUsageForegroundService) obj2, (List) obj);
            case 1:
                return SliderDefaults.TrackImpl_xlyIBlM$lambda$44$lambda$43$lambda$42((Placeable) obj2, (Placeable.PlacementScope) obj);
            case 2:
                return TextFieldCoreModifierNode.textContextMenuToolbarHandlerNode$lambda$0((TextFieldCoreModifierNode) obj2, (LayoutCoordinates) obj);
            default:
                return yu3.c((List) obj2, (u13) obj);
        }
    }
}
