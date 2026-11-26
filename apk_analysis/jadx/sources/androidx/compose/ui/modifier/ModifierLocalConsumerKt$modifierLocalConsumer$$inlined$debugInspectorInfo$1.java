package androidx.compose.ui.modifier;

import androidx.compose.ui.platform.InspectorInfo;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ModifierLocalConsumerKt$modifierLocalConsumer$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ nl3 $consumer$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModifierLocalConsumerKt$modifierLocalConsumer$$inlined$debugInspectorInfo$1(nl3 nl3Var) {
        super(1);
        this.$consumer$inlined = nl3Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("modifierLocalConsumer");
        inspectorInfo.getProperties().set("consumer", this.$consumer$inlined);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
