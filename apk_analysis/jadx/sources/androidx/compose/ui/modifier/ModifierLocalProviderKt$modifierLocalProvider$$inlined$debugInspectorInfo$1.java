package androidx.compose.ui.modifier;

import androidx.compose.ui.platform.InspectorInfo;
import com.tapjoy.TJKeyValueStorageKt;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ModifierLocalProviderKt$modifierLocalProvider$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ ProvidableModifierLocal $key$inlined;
    final /* synthetic */ ll3 $value$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModifierLocalProviderKt$modifierLocalProvider$$inlined$debugInspectorInfo$1(ProvidableModifierLocal providableModifierLocal, ll3 ll3Var) {
        super(1);
        this.$key$inlined = providableModifierLocal;
        this.$value$inlined = ll3Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("modifierLocalProvider");
        inspectorInfo.getProperties().set(TJKeyValueStorageKt.KEY, this.$key$inlined);
        inspectorInfo.getProperties().set("value", this.$value$inlined);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
