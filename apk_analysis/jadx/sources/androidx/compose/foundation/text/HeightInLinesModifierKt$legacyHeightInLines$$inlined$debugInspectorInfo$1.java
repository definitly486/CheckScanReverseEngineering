package androidx.compose.foundation.text;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.text.TextStyle;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class HeightInLinesModifierKt$legacyHeightInLines$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ int $maxLines$inlined;
    final /* synthetic */ int $minLines$inlined;
    final /* synthetic */ TextStyle $textStyle$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeightInLinesModifierKt$legacyHeightInLines$$inlined$debugInspectorInfo$1(int i, int i2, TextStyle textStyle) {
        super(1);
        this.$minLines$inlined = i;
        this.$maxLines$inlined = i2;
        this.$textStyle$inlined = textStyle;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("heightInLines");
        inspectorInfo.getProperties().set("minLines", Integer.valueOf(this.$minLines$inlined));
        inspectorInfo.getProperties().set("maxLines", Integer.valueOf(this.$maxLines$inlined));
        inspectorInfo.getProperties().set("textStyle", this.$textStyle$inlined);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
