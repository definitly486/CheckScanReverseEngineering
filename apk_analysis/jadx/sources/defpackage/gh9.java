package defpackage;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.warefly.checkscan.presentation.webview.ShareWebPageDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class gh9 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ WebView f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gh9(WebView webView, String str) {
        super(1);
        this.f = webView;
        this.g = str;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        Context context = this.f.getContext();
        context.getClass();
        new ShareWebPageDialog(context, this.g).show();
        return j59.a;
    }
}
