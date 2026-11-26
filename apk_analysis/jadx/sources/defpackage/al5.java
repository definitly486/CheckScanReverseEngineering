package defpackage;

import androidx.compose.material3.NavigationItemKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.text.style.TextForegroundStyle;
import com.tapjoy.TapjoyCache;
import yads.b50;
import yads.df2;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class al5 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ al5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Float.valueOf(NavigationItemKt.NavigationItem_8Df7sds$lambda$9$lambda$8$lambda$7((State) obj));
            case 1:
                return TapjoyCache.a((TapjoyCache) obj);
            case 2:
                return Float.valueOf(TextForegroundStyle.merge$lambda$0((TextForegroundStyle) obj));
            case 3:
                return b50.a((b50) obj);
            case 4:
                return df2.a((df2) obj);
            default:
                return nq0.N((nq0) obj);
        }
    }
}
