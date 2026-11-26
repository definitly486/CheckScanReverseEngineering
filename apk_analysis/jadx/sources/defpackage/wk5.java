package defpackage;

import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.material3.NavigationItemKt;
import androidx.compose.runtime.State;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wk5 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ State c;

    public /* synthetic */ wk5(State state, int i) {
        this.b = i;
        this.c = state;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        State state = this.c;
        switch (i) {
            case 0:
                return Float.valueOf(NavigationItemKt.AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$23$lambda$22(state));
            default:
                return SelectionMagnifierKt.animatedSelectionMagnifier$lambda$0$1$0(state);
        }
    }
}
