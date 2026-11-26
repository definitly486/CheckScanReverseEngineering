package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class IntrinsicKt$requiredHeight$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ IntrinsicSize $intrinsicSize$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntrinsicKt$requiredHeight$$inlined$debugInspectorInfo$1(IntrinsicSize intrinsicSize) {
        super(1);
        this.$intrinsicSize$inlined = intrinsicSize;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("requiredHeight");
        inspectorInfo.getProperties().set("intrinsicSize", this.$intrinsicSize$inlined);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
