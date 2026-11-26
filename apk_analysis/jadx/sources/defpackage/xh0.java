package defpackage;

import androidx.compose.foundation.BasicTooltipKt;
import androidx.compose.foundation.BasicTooltipState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.material3.DrawerState;
import androidx.compose.material3.NavigationDrawerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xh0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ xh0(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return BasicTooltipKt.TooltipPopup$lambda$0$0((BasicTooltipState) obj2, (y22) obj);
            case 1:
                return CompositionErrorContextImpl.attachComposeStackTrace$lambda$0((CompositionErrorContextImpl) obj2, obj);
            case 2:
                return Boolean.valueOf(NavigationDrawerKt.DismissibleNavigationDrawer$lambda$38$lambda$36$lambda$33$lambda$32$lambda$31((DrawerState) obj2, (y22) obj));
            default:
                return TextFieldSelectionManager_androidKt.textFieldMagnifier$lambda$0$3$0((TextFieldSelectionManager) obj2, (MutableState) obj);
        }
    }
}
