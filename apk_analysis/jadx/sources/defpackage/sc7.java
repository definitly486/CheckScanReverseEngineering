package defpackage;

import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.gestures.TransformGestureDetectorKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.unit.Dp;
import yads.ng1;
import yads.r22;
import yads.uq3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class sc7 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ sc7(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return SaversKt.AnnotationRangeListSaver$lambda$1(obj);
            case 1:
                return Boolean.valueOf(TransformGestureDetectorKt.calculateCentroid$lambda$0((PointerInputChange) obj));
            case 2:
                return VectorConvertersKt.DpToVector$lambda$0((Dp) obj);
            case 3:
                return ng1.a((String) obj);
            case 4:
                return Boolean.valueOf(r22.b(obj));
            default:
                return uq3.b(obj);
        }
    }
}
