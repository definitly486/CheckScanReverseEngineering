package defpackage;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.material3.LabelKt;
import androidx.compose.material3.NavigationItemKt;
import androidx.compose.runtime.State;
import androidx.navigation.NavDeepLink;
import androidx.work.impl.utils.PreferenceUtils;
import yads.nq0;
import yads.vy2;
import yads.za2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class eh4 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ eh4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return LabelKt.Label$lambda$4$lambda$3((r07) obj);
            case 1:
                return Integer.valueOf(((PagerState) obj).getPageCount());
            case 2:
                return NavDeepLink.fragArgs_delegate$lambda$5((NavDeepLink) obj);
            case 3:
                return Float.valueOf(NavigationItemKt.AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$25$lambda$24((State) obj));
            case 4:
                return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$11((TextFieldDecoratorModifierNode) obj));
            case 5:
                return Long.valueOf(((PreferenceUtils) obj).getLastCancelAllTimeMillis());
            case 6:
                return nq0.I((nq0) obj);
            case 7:
                return vy2.a((vy2) obj);
            default:
                return za2.a((za2) obj);
        }
    }
}
