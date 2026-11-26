package defpackage;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.warefly.checkscan.databinding.ItemRvBalanceCompactBannerBinding;
import com.warefly.checkscan.presentation.webview.ShareWebPageDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class i20 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i20(int i, Object obj, Object obj2) {
        super(1);
        this.f = i;
        this.g = obj;
        this.h = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        Object obj3 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((j20) obj3).b.onCompactBannerClick(((ItemRvBalanceCompactBannerBinding) obj2).getRoot().getTag().toString());
                break;
            default:
                ((View) obj).getClass();
                Context context = ((WebView) obj3).getContext();
                context.getClass();
                new ShareWebPageDialog(context, (String) obj2).show();
                break;
        }
        return j59.a;
    }
}
