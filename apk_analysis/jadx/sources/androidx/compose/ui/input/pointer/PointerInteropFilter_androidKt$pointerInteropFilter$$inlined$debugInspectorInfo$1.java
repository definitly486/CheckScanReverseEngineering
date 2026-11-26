package androidx.compose.ui.input.pointer;

import androidx.compose.ui.platform.InspectorInfo;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInteropFilter_androidKt$pointerInteropFilter$$inlined$debugInspectorInfo$1 extends gh4 implements nl3<InspectorInfo, j59> {
    final /* synthetic */ nl3 $onTouchEvent$inlined;
    final /* synthetic */ RequestDisallowInterceptTouchEvent $requestDisallowInterceptTouchEvent$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointerInteropFilter_androidKt$pointerInteropFilter$$inlined$debugInspectorInfo$1(RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent, nl3 nl3Var) {
        super(1);
        this.$requestDisallowInterceptTouchEvent$inlined = requestDisallowInterceptTouchEvent;
        this.$onTouchEvent$inlined = nl3Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("pointerInteropFilter");
        inspectorInfo.getProperties().set("requestDisallowInterceptTouchEvent", this.$requestDisallowInterceptTouchEvent$inlined);
        inspectorInfo.getProperties().set("onTouchEvent", this.$onTouchEvent$inlined);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(InspectorInfo inspectorInfo) {
        invoke2(inspectorInfo);
        return j59.a;
    }
}
