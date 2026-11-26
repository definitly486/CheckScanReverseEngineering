package defpackage;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.SaversKt;
import yads.e91;
import yads.gi;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class yq2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ yq2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return DragGestureDetectorKt.detectHorizontalDragGestures$lambda$0((Offset) obj);
            case 1:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                return Integer.valueOf(nb6Var.f);
            case 2:
                return SaversKt.LineHeightStyleTrimSaver$lambda$1(obj);
            case 3:
                return Boolean.valueOf(e91.f(obj));
            default:
                return gi.a(obj);
        }
    }
}
