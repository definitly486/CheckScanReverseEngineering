package defpackage;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.material3.internal.ChildSemanticsNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.TypefaceResult;
import yads.ni1;
import yads.t12;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ji1 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ji1(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(ChildSemanticsNode.onDetach$lambda$2((TraversableNode) obj));
            case 1:
                return FontFamilyResolverImpl.preload$lambda$1$0((TypefaceResult.Immutable) obj);
            case 2:
                return VectorConvertersKt.SizeToVector$lambda$1((AnimationVector2D) obj);
            case 3:
                return Boolean.valueOf(ni1.b(obj));
            default:
                return Boolean.valueOf(t12.b(obj));
        }
    }
}
