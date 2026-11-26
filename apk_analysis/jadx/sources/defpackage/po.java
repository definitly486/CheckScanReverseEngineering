package defpackage;

import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import com.my.tracker.ads.AdFormat;
import java.lang.annotation.Annotation;
import yads.sz4;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class po implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ po(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return DefaultSingleRowTopAppBarOverride.INSTANCE;
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodGetFinishPrimaryWithPlaceholderValid$lambda$17());
            case 2:
                return TextLinkScope.textRange$lambda$0$0();
            default:
                return e.c("com.monetization.ads.core.configuration.model.PreloadFormat", sz4.values(), new String[]{AdFormat.INTERSTITIAL, AdFormat.REWARDED, "appopen"}, new Annotation[][]{null, null, null});
        }
    }
}
