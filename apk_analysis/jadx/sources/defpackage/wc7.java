package defpackage;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.style.LineHeightStyle;
import yads.l20;
import yads.q20;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class wc7 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ wc7(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return SaversKt.LineHeightStyleTrimSaver$lambda$0((SaverScope) obj, (LineHeightStyle.Trim) obj2);
            default:
                return q20.a((l20) obj, ((Double) obj2).doubleValue());
        }
    }
}
