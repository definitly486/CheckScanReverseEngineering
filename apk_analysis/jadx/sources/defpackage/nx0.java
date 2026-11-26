package defpackage;

import androidx.compose.foundation.draganddrop.CacheDrawScopeDragShadowCallback;
import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.material3.TextKt;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextLayoutResult;
import yads.a82;
import yads.ev0;
import yads.lh1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nx0 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ nx0(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return CacheDrawScopeDragShadowCallback.cachePicture$lambda$0$0$0((ContentDrawScope) obj);
            case 1:
                return SaversKt.TextRangeSaver$lambda$1(obj);
            case 2:
                return TextFieldKeyInput.process_ZmokQxo$lambda$1$1((TextFieldPreparedSelection) obj);
            case 3:
                return TextKt.Text__4IGK_g$lambda$17$lambda$16((TextLayoutResult) obj);
            case 4:
                return a82.a((String) obj);
            case 5:
                return Boolean.valueOf(ev0.a(obj));
            default:
                return Boolean.valueOf(lh1.e(obj));
        }
    }
}
