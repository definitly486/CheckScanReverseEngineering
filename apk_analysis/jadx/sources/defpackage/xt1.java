package defpackage;

import androidx.compose.runtime.ComposableSingletons$RecomposerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.style.LineHeightStyle;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xt1 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xt1(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return ComposableSingletons$RecomposerKt.lambda__1091980426$lambda$0((Composer) obj, ((Integer) obj2).intValue());
            default:
                return SaversKt.LineHeightStyleModeSaver$lambda$0((SaverScope) obj, (LineHeightStyle.Mode) obj2);
        }
    }
}
