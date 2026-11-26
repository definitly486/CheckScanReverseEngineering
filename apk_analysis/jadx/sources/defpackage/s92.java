package defpackage;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.impl.UseCaseCameraImpl;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.material3.DatePickerColors;
import androidx.work.impl.WorkContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s92 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ s92(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ((DatePickerColors) obj).dateTextFieldColors;
            case 1:
                return SessionConfigAdapter.validatingBuilder_delegate$lambda$0((SessionConfigAdapter) obj);
            case 2:
                return TextFieldDecoratorModifierNode.updateNode$lambda$0((TextFieldDecoratorModifierNode) obj);
            case 3:
                return UseCaseCameraImpl.sessionConfigAdapter_delegate$lambda$0((UseCaseCameraImpl) obj);
            default:
                return ((WorkContinuationImpl) obj).lambda$enqueue$0();
        }
    }
}
