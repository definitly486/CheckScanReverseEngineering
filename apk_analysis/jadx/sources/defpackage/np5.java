package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.webview.WebViewReplenishmentActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class np5 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ np5(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                Boolean bool = (Boolean) obj;
                z68 z68Var = ((pp5) obj2).e;
                bool.getClass();
                z68Var.k(null, bool);
                break;
            default:
                ((View) obj).getClass();
                ((WebViewReplenishmentActivity) obj2).getOnBackPressedDispatcher().onBackPressed();
                break;
        }
        return j59.a;
    }
}
