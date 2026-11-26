package defpackage;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.material3.SearchBarKt;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class q12 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ q12(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return CoreTextFieldKt.CoreTextField$lambda$20$0((LegacyTextFieldState) obj3, (Brush) obj2, (ContentDrawScope) obj);
            case 1:
                al1 al1Var = (al1) obj;
                al1Var.getClass();
                al1Var.a("first", ((df4) obj3).getDescriptor());
                al1Var.a("second", ((df4) obj2).getDescriptor());
                return j59.a;
            default:
                return SearchBarKt.SearchBarLayout$lambda$42$lambda$41((MutableWindowInsets) obj3, (WindowInsets) obj2, (WindowInsets) obj);
        }
    }
}
