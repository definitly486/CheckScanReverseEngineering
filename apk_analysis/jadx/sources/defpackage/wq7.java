package defpackage;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.impl.UseCaseCameraImpl;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import yads.nq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wq7 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wq7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return SessionConfigAdapter.surfaceToStreamUseHintMap_delegate$lambda$0((SessionConfigAdapter) obj);
            case 1:
                return TextFieldDecoratorModifierNode.updateWindowFocus$lambda$0((TextFieldDecoratorModifierNode) obj);
            case 2:
                return UseCaseCameraImpl.useCaseSurfaceManager_delegate$lambda$0((UseCaseCameraImpl) obj);
            default:
                return nq0.o0((nq0) obj);
        }
    }
}
