package defpackage;

import androidx.compose.foundation.gestures.DraggableElement;
import androidx.compose.ui.input.pointer.PointerType;
import yads.x01;
import yads.z71;
import yads.zg1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class yr2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ yr2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(DraggableElement.CanDrag$lambda$0((PointerType) obj));
            case 1:
                return x01.a((String) obj);
            case 2:
                return Boolean.valueOf(z71.b(obj));
            default:
                return Boolean.valueOf(zg1.c(obj));
        }
    }
}
