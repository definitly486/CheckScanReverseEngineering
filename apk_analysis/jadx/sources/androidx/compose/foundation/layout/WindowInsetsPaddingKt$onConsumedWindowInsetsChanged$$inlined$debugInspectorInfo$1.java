package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsPaddingKt$onConsumedWindowInsetsChanged$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ nl3 $block$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowInsetsPaddingKt$onConsumedWindowInsetsChanged$$inlined$debugInspectorInfo$1(nl3 nl3Var) {
        super(1);
        this.$block$inlined = nl3Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("onConsumedWindowInsetsChanged");
        inspectorInfo.getProperties().set("block", this.$block$inlined);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
