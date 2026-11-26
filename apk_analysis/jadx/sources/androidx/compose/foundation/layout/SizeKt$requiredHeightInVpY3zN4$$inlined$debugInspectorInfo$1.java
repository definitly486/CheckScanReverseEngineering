package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.qg;

/* JADX INFO: renamed from: androidx.compose.foundation.layout.SizeKt$requiredHeightIn-VpY3zN4$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class SizeKt$requiredHeightInVpY3zN4$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ float $max$inlined;
    final /* synthetic */ float $min$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeKt$requiredHeightInVpY3zN4$$inlined$debugInspectorInfo$1(float f, float f2) {
        super(1);
        this.$min$inlined = f;
        this.$max$inlined = f2;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("requiredHeightIn");
        qg.e(this.$min$inlined, inspectorInfo.getProperties(), "min", inspectorInfo).set("max", Dp.m9040boximpl(this.$max$inlined));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
