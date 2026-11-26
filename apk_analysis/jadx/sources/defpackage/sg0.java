package defpackage;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.material3.NavigationBarKt;
import androidx.compose.runtime.State;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.ig6;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class sg0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sg0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$8$0((TextLinkScope) obj));
            case 1:
                return Float.valueOf(NavigationBarKt.NavigationBarItem$lambda$15$lambda$12$lambda$11((State) obj));
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodSetActivityStackAttributesCalculatorValid$lambda$57((SafeActivityEmbeddingComponentProvider) obj));
            default:
                return ig6.a((ig6) obj);
        }
    }
}
