package defpackage;

import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.gestures.TransformableKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.text.SaversKt;
import java.util.Map;
import yads.lr1;
import yads.t12;
import yads.uw2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mg6 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ mg6(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return ProcessCameraProvider.Companion.getInstance$lambda$0((Void) obj);
            case 1:
                return SaversKt.FontSynthesisSaver$lambda$1(obj);
            case 2:
                return Boolean.valueOf(TransformableKt.transformable$lambda$0((Offset) obj));
            case 3:
                return VectorConvertersKt.SizeToVector$lambda$0((Size) obj);
            case 4:
                return Boolean.valueOf(lr1.a(obj));
            case 5:
                return Boolean.valueOf(t12.a(obj));
            default:
                return uw2.a((Map.Entry) obj);
        }
    }
}
