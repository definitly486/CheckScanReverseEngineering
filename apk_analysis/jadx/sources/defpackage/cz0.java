package defpackage;

import androidx.camera.camera2.pipe.compat.Camera2CameraController;
import androidx.compose.foundation.layout.InsetsConsumingModifierNode;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridIntervalContent;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridItemSpan;
import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.TypefaceRequest;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cz0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ cz0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(Camera2CameraController.startLocked$lambda$2((Camera2CameraController) obj2, (j59) obj));
            case 1:
                return FontFamilyResolverImpl.preload$lambda$1((FontFamilyResolverImpl) obj2, (TypefaceRequest) obj);
            case 2:
                return InsetsConsumingModifierNode.invalidateChildConsumedInsets$lambda$0((InsetsConsumingModifierNode) obj2, (TraversableNode) obj);
            case 3:
                return LazyStaggeredGridIntervalContent.item$lambda$2$0((StaggeredGridItemSpan) obj2, ((Integer) obj).intValue());
            default:
                return Boolean.valueOf(TextStringSimpleNode.applySemantics$lambda$2((TextStringSimpleNode) obj2, ((Boolean) obj).booleanValue()));
        }
    }
}
