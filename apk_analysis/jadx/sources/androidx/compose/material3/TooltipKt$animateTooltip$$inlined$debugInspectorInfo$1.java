package androidx.compose.material3;

import androidx.compose.animation.core.Transition;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class TooltipKt$animateTooltip$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ Transition $transition$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TooltipKt$animateTooltip$$inlined$debugInspectorInfo$1(Transition transition) {
        super(1);
        this.$transition$inlined = transition;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("animateTooltip");
        inspectorInfo.getProperties().set("transition", this.$transition$inlined);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
