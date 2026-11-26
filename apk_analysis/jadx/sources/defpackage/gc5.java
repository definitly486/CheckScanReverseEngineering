package defpackage;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.impl.UseCaseCameraImpl;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.material3.ModalWideNavigationRailState;
import androidx.compose.ui.unit.Density;
import yads.nq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gc5 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gc5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Float.valueOf(ModalWideNavigationRailState.anchoredDraggableState$lambda$2((Density) obj));
            case 1:
                return SessionConfigAdapter.sessionConfig_delegate$lambda$0((SessionConfigAdapter) obj);
            case 2:
                return TextFieldDecoratorModifierNode._init_$lambda$0((TextFieldDecoratorModifierNode) obj);
            case 3:
                return UseCaseCameraImpl.capturePipeline_delegate$lambda$0((UseCaseCameraImpl) obj);
            default:
                return nq0.Q((nq0) obj);
        }
    }
}
