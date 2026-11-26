package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import com.tapjoy.TJAdUnitConstants;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.qg;

/* JADX INFO: renamed from: androidx.compose.foundation.layout.SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class SizeKt$sizeVpY3zN4$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ float $height$inlined;
    final /* synthetic */ float $width$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeKt$sizeVpY3zN4$$inlined$debugInspectorInfo$1(float f, float f2) {
        super(1);
        this.$width$inlined = f;
        this.$height$inlined = f2;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName(TJAdUnitConstants.String.SIZE);
        qg.e(this.$width$inlined, inspectorInfo.getProperties(), TJAdUnitConstants.String.WIDTH, inspectorInfo).set(TJAdUnitConstants.String.HEIGHT, Dp.m9040boximpl(this.$height$inlined));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
