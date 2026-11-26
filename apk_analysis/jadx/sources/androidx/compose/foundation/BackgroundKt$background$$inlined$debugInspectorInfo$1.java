package androidx.compose.foundation;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class BackgroundKt$background$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ float $alpha$inlined;
    final /* synthetic */ Brush $brush$inlined;
    final /* synthetic */ Shape $shape$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackgroundKt$background$$inlined$debugInspectorInfo$1(float f, Brush brush, Shape shape) {
        super(1);
        this.$alpha$inlined = f;
        this.$brush$inlined = brush;
        this.$shape$inlined = shape;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("background");
        inspectorInfo.getProperties().set("alpha", Float.valueOf(this.$alpha$inlined));
        inspectorInfo.getProperties().set("brush", this.$brush$inlined);
        inspectorInfo.getProperties().set("shape", this.$shape$inlined);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
