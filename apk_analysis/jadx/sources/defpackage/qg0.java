package defpackage;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.ui.text.TextLayoutResult;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qg0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ TextLinkScope c;
    public final /* synthetic */ nl3 d;

    public /* synthetic */ qg0(TextLinkScope textLinkScope, nl3 nl3Var, int i) {
        this.b = i;
        this.c = textLinkScope;
        this.d = nl3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.d;
        TextLinkScope textLinkScope = this.c;
        switch (i) {
            case 0:
                return BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$6$0(textLinkScope, nl3Var, (TextLayoutResult) obj);
            default:
                return TextLinkScope.StyleAnnotation$lambda$0$0(textLinkScope, nl3Var, (DisposableEffectScope) obj);
        }
    }
}
