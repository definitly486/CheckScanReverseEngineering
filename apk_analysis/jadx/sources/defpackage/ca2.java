package defpackage;

import android.text.Spanned;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.monetization.ads.mediation.appopenad.b;
import com.monetization.ads.mediation.base.MediatedAdRequestError;
import yads.an2;
import yads.br0;
import yads.c26;
import yads.g82;
import yads.l44;
import yads.q74;
import yads.vq0;
import yads.zd2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ca2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ca2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return DatePickerKt.Day$lambda$61$lambda$60((String) obj2, (SemanticsPropertyReceiver) obj);
            case 1:
                return TextFieldDecoratorModifierNode.dragAndDropNode$lambda$6((TextFieldDecoratorModifierNode) obj2, (DragAndDropEvent) obj);
            case 2:
                l39 l39Var = (l39) obj2;
                al1 al1Var = (al1) obj;
                al1Var.getClass();
                al1Var.a("first", l39Var.a.getDescriptor());
                al1Var.a("second", l39Var.b.getDescriptor());
                al1Var.a("third", l39Var.c.getDescriptor());
                return j59.a;
            case 3:
                return UseCaseManager.defaultCameraGraphFactory$lambda$0((UseCaseManager) obj2, (CameraGraph.Config) obj);
            case 4:
                return b.a((b) obj2, (q74) obj);
            case 5:
                return c26.a((c26) obj2, (zd2) obj);
            case 6:
                return g82.a((an2) obj2, (Spanned) obj);
            case 7:
                return l44.a((l44) obj2, (MediatedAdRequestError) obj);
            default:
                return vq0.a((fr) obj2, (br0) obj);
        }
    }
}
