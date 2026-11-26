package defpackage;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.ui.text.SaversKt;
import yads.ni1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jy2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ jy2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.FALSE;
            case 1:
                al1 al1Var = (al1) obj;
                al1Var.getClass();
                al1Var.a("JsonPrimitive", new vc4(new tc4(0)));
                al1Var.a("JsonNull", new vc4(new qy1(1)));
                al1Var.a("JsonLiteral", new vc4(new ru2(2)));
                al1Var.a("JsonObject", new vc4(new su2(1)));
                al1Var.a("JsonArray", new vc4(new tu2(1)));
                return j59.a;
            case 2:
                return SaversKt.TextUnitTypeSaver$lambda$1(obj);
            case 3:
                return VectorConvertersKt.IntOffsetToVector$lambda$1((AnimationVector2D) obj);
            case 4:
                return ((WindowInsetsHolder) obj).getSystemGestures();
            default:
                return Boolean.valueOf(ni1.f(obj));
        }
    }
}
