package androidx.compose.foundation;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.Role;
import com.tapjoy.TJAdUnitConstants;
import defpackage.gh4;
import defpackage.il1;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$combinedClickable-f5TDLPQ$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class ClickableKt$combinedClickablef5TDLPQ$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ boolean $hapticFeedbackEnabled$inlined;
    final /* synthetic */ ll3 $onClick$inlined;
    final /* synthetic */ String $onClickLabel$inlined;
    final /* synthetic */ ll3 $onDoubleClick$inlined;
    final /* synthetic */ ll3 $onLongClick$inlined;
    final /* synthetic */ String $onLongClickLabel$inlined;
    final /* synthetic */ Role $role$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClickableKt$combinedClickablef5TDLPQ$$inlined$debugInspectorInfo$1(boolean z, String str, Role role, ll3 ll3Var, ll3 ll3Var2, ll3 ll3Var3, String str2, boolean z2) {
        super(1);
        this.$enabled$inlined = z;
        this.$onClickLabel$inlined = str;
        this.$role$inlined = role;
        this.$onClick$inlined = ll3Var;
        this.$onDoubleClick$inlined = ll3Var2;
        this.$onLongClick$inlined = ll3Var3;
        this.$onLongClickLabel$inlined = str2;
        this.$hapticFeedbackEnabled$inlined = z2;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("combinedClickable");
        il1.c(this.$enabled$inlined, inspectorInfo.getProperties(), TJAdUnitConstants.String.ENABLED, inspectorInfo).set("onClickLabel", this.$onClickLabel$inlined);
        inspectorInfo.getProperties().set("role", this.$role$inlined);
        inspectorInfo.getProperties().set("onClick", this.$onClick$inlined);
        inspectorInfo.getProperties().set("onDoubleClick", this.$onDoubleClick$inlined);
        inspectorInfo.getProperties().set("onLongClick", this.$onLongClick$inlined);
        inspectorInfo.getProperties().set("onLongClickLabel", this.$onLongClickLabel$inlined);
        inspectorInfo.getProperties().set("hapticFeedbackEnabled", Boolean.valueOf(this.$hapticFeedbackEnabled$inlined));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
