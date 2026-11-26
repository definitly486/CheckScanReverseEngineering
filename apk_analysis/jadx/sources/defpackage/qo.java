package defpackage;

import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.DefaultNavigationBarOverride;
import androidx.compose.material3.DefaultTwoRowsTopAppBarOverride;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.gf0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qo implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ qo(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return DefaultTwoRowsTopAppBarOverride.INSTANCE;
            case 1:
                return ColorSchemeKt.LocalColorScheme$lambda$1();
            case 2:
                return DefaultNavigationBarOverride.INSTANCE;
            case 3:
                return tx0.a;
            case 4:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassActivityStackAttributesCalculatorParamsValid$lambda$62());
            case 5:
                return SelectionRegistrarKt.LocalSelectionRegistrar$lambda$0();
            case 6:
                return TextLinkScope.textRange$lambda$0$1();
            default:
                return gf0.k();
        }
    }
}
