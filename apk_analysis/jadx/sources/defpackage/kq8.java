package defpackage;

import android.util.DisplayMetrics;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldCursorKt;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import yads.d22;
import yads.fs2;
import yads.in5;
import yads.s22;
import yads.yc1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kq8 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ kq8(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f = obj4;
        this.g = obj5;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.g;
        Object obj3 = this.f;
        Object obj4 = this.e;
        Object obj5 = this.d;
        Object obj6 = this.c;
        switch (i) {
            case 0:
                return TextFieldCursorKt.cursor$lambda$0$2$0((CursorAnimationState) obj6, (OffsetMapping) obj5, (TextFieldValue) obj4, (LegacyTextFieldState) obj3, (Brush) obj2, (ContentDrawScope) obj);
            default:
                return d22.a((s22) obj6, (in5) obj5, (yc1) obj4, (fs2) obj3, (DisplayMetrics) obj2, ((Long) obj).longValue());
        }
    }
}
