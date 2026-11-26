package defpackage;

import android.util.DisplayMetrics;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.text.AnnotatedString;
import androidx.sqlite.SQLiteConnection;
import yads.a91;
import yads.jj2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fu3 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ fu3(int i, Object obj, Object obj2) {
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
                ((gu3) obj3).c.removeCallbacks((eu3) obj2);
                return j59.a;
            case 1:
                iu6 iu6Var = ((ku6) obj3).e;
                iu6Var.insert((SQLiteConnection) obj, (tt6) obj2);
                return j59.a;
            case 2:
                return TextLinkScope.clipLink$lambda$0((TextLinkScope) obj3, (AnnotatedString.Range) obj2, (GraphicsLayerScope) obj);
            default:
                return a91.a((jj2) obj3, (DisplayMetrics) obj2, ((Long) obj).longValue());
        }
    }
}
