package defpackage;

import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.TypefaceResult;
import yads.f81;
import yads.ni1;
import yads.pt1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ii3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ii3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return FontFamilyResolverImpl.preload$lambda$1$1((TypefaceResult.Immutable) obj);
            case 1:
                return SaversKt.TextUnitSaver$lambda$1(obj);
            case 2:
                return VectorConvertersKt.OffsetToVector$lambda$0((Offset) obj);
            case 3:
                return ((WindowInsetsHolder) obj).getSafeDrawing();
            case 4:
                return f81.a((String) obj);
            case 5:
                return Boolean.valueOf(ni1.c(obj));
            default:
                return pt1.a((String) obj);
        }
    }
}
