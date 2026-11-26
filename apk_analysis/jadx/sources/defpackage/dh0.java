package defpackage;

import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.ui.geometry.Rect;
import yads.e91;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dh0 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ dh0(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Long.valueOf(((Long) obj).longValue());
            case 1:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                return Integer.valueOf(nb6Var.f);
            case 2:
                return VectorConvertersKt.RectToVector$lambda$0((Rect) obj);
            case 3:
                return ((WindowInsetsHolder) obj).getSafeContent();
            default:
                return Boolean.valueOf(e91.a(obj));
        }
    }
}
