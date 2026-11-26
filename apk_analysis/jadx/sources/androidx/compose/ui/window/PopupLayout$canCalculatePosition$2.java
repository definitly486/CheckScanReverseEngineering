package androidx.compose.ui.window;

import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class PopupLayout$canCalculatePosition$2 extends gh4 implements ll3<Boolean> {
    final /* synthetic */ PopupLayout this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PopupLayout$canCalculatePosition$2(PopupLayout popupLayout) {
        super(0);
        this.this$0 = popupLayout;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final Boolean invoke() {
        LayoutCoordinates parentLayoutCoordinates = this.this$0.getParentLayoutCoordinates();
        if (parentLayoutCoordinates == null || !parentLayoutCoordinates.isAttached()) {
            parentLayoutCoordinates = null;
        }
        return Boolean.valueOf((parentLayoutCoordinates == null || this.this$0.m9297getPopupContentSizebOM6tXw() == null) ? false : true);
    }
}
