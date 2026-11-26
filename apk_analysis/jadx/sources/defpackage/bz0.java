package defpackage;

import androidx.camera.camera2.pipe.compat.Camera2CameraController;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridIntervalContent;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldPointerModifier_commonKt;
import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.TypefaceRequest;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bz0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ bz0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Camera2CameraController.detachSessionAndCamera$lambda$0((Camera2CameraController) obj2, (Throwable) obj);
            case 1:
                return FontFamilyResolverImpl.createDefaultTypeface$lambda$0((FontFamilyResolverImpl) obj2, (TypefaceRequest) obj);
            case 2:
                return LazyStaggeredGridIntervalContent.item$lambda$1(obj2, ((Integer) obj).intValue());
            case 3:
                return SeekableTransitionState.animateOneFrameLambda$lambda$0((SeekableTransitionState) obj2, ((Long) obj).longValue());
            case 4:
                return TextFieldPointerModifier_commonKt.defaultTextFieldPointer$lambda$0((LegacyTextFieldState) obj2, ((Boolean) obj).booleanValue());
            default:
                return Boolean.valueOf(TextStringSimpleNode.applySemantics$lambda$1((TextStringSimpleNode) obj2, (AnnotatedString) obj));
        }
    }
}
