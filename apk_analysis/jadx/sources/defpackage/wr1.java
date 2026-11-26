package defpackage;

import androidx.activity.ComponentActivity;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.navigation.NavDeepLink;
import yads.nq0;
import yads.x32;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class wr1 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wr1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ComponentActivity.onBackPressedDispatcher_delegate$lambda$0((ComponentActivity) obj);
            case 1:
                return NavDeepLink.mimeTypePattern_delegate$lambda$10((NavDeepLink) obj);
            case 2:
                return SelectionManager._get_modifier_$lambda$0((SelectionManager) obj);
            case 3:
                return nq0.w((nq0) obj);
            default:
                return x32.b((ws6) obj);
        }
    }
}
