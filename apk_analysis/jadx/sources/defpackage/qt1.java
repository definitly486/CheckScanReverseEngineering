package defpackage;

import androidx.compose.runtime.ComposableSingletons$CompositionKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.style.LineHeightStyle;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qt1 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ qt1(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return ComposableSingletons$CompositionKt.lambda_954879418$lambda$0((Composer) obj, ((Integer) obj2).intValue());
            default:
                return SaversKt.LineHeightStyleSaver$lambda$0((SaverScope) obj, (LineHeightStyle) obj2);
        }
    }
}
