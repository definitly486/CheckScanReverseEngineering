package defpackage;

import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fr2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ fr2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return new ky0(new OkHttpClient());
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodGetDividerAttributesValid$lambda$42());
            default:
                return TextContextMenuProviderKt.LocalTextContextMenuDropdownProvider$lambda$0();
        }
    }
}
