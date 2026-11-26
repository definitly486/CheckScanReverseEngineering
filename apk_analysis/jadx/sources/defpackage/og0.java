package defpackage;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.material3.AppBarMenuState;
import androidx.compose.material3.ToggleableAppBarItem;
import androidx.compose.ui.text.AnnotatedString;
import yads.bo6;
import yads.zn6;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class og0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ og0(int i, Object obj, Object obj2) {
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
                return BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$1$0((TextLinkScope) obj2, (AnnotatedString) obj);
            case 1:
                return ToggleableAppBarItem.MenuContent$lambda$2$lambda$1((ToggleableAppBarItem) obj2, (AppBarMenuState) obj);
            default:
                return bo6.a((bo6) obj2, (zn6) obj);
        }
    }
}
