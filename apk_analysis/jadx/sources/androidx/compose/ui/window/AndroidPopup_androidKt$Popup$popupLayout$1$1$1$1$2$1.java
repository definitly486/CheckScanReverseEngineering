package androidx.compose.ui.window;

import androidx.compose.ui.unit.IntSize;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$2$1 extends gh4 implements nl3<IntSize, j59> {
    final /* synthetic */ PopupLayout $this_apply;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$2$1(PopupLayout popupLayout) {
        super(1);
        this.$this_apply = popupLayout;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(IntSize intSize) {
        m9295invokeozmzZPI(intSize.m9217unboximpl());
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke-ozmzZPI, reason: not valid java name */
    public final void m9295invokeozmzZPI(long j) {
        this.$this_apply.m9298setPopupContentSizefhxjrPA(IntSize.m9205boximpl(j));
        this.$this_apply.updatePosition();
    }
}
