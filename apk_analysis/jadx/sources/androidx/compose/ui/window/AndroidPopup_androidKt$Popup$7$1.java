package androidx.compose.ui.window;

import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidPopup_androidKt$Popup$7$1 extends gh4 implements nl3<LayoutCoordinates, j59> {
    final /* synthetic */ PopupLayout $popupLayout;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidPopup_androidKt$Popup$7$1(PopupLayout popupLayout) {
        super(1);
        this.$popupLayout = popupLayout;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        parentLayoutCoordinates.getClass();
        this.$popupLayout.updateParentLayoutCoordinates(parentLayoutCoordinates);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutCoordinates layoutCoordinates) {
        invoke2(layoutCoordinates);
        return j59.a;
    }
}
