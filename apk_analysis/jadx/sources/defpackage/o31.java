package defpackage;

import androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import yads.ja5;
import yads.nq0;
import yads.wr1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o31 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ o31(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(CapturePipelineTorchCorrection.isLegacyDevice_delegate$lambda$0((CameraProperties) obj));
            case 1:
                return TextFieldDecoratorModifierNode.observeUntransformedTextChanges$lambda$0((TextFieldDecoratorModifierNode) obj);
            case 2:
                return TextFieldSelectionState.observeTextChanges$lambda$0((TextFieldSelectionState) obj);
            case 3:
                return ja5.a((ja5) obj);
            case 4:
                return nq0.a((nq0) obj);
            default:
                return Boolean.valueOf(wr1.b((wr1) obj));
        }
    }
}
