package androidx.compose.foundation.selection;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.state.ToggleableState;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;
import defpackage.gh4;
import defpackage.il1;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: renamed from: androidx.compose.foundation.selection.ToggleableKt$triStateToggleable-XHw0xAI$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class ToggleableKt$triStateToggleableXHw0xAI$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ ll3 $onClick$inlined;
    final /* synthetic */ Role $role$inlined;
    final /* synthetic */ ToggleableState $state$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToggleableKt$triStateToggleableXHw0xAI$$inlined$debugInspectorInfo$1(ToggleableState toggleableState, boolean z, Role role, ll3 ll3Var) {
        super(1);
        this.$state$inlined = toggleableState;
        this.$enabled$inlined = z;
        this.$role$inlined = role;
        this.$onClick$inlined = ll3Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("triStateToggleable");
        inspectorInfo.getProperties().set(RemoteConfigConstants.ResponseFieldKey.STATE, this.$state$inlined);
        il1.c(this.$enabled$inlined, inspectorInfo.getProperties(), TJAdUnitConstants.String.ENABLED, inspectorInfo).set("role", this.$role$inlined);
        inspectorInfo.getProperties().set("onClick", this.$onClick$inlined);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
