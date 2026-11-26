package androidx.compose.material3.internal;

import androidx.compose.ui.platform.InspectorInfo;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DraggableAnchorsElementV2$inspectableProperties$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ DraggableAnchorsElementV2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableAnchorsElementV2$inspectableProperties$$inlined$debugInspectorInfo$1(DraggableAnchorsElementV2 draggableAnchorsElementV2) {
        super(1);
        this.this$0 = draggableAnchorsElementV2;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.getProperties().set(RemoteConfigConstants.ResponseFieldKey.STATE, this.this$0.state);
        inspectorInfo.getProperties().set("anchors", this.this$0.anchors);
        inspectorInfo.getProperties().set(TJAdUnitConstants.String.ORIENTATION, this.this$0.orientation);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
