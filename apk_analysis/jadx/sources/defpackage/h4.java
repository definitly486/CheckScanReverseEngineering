package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.webview.WebViewActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class h4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h4(Object obj, int i) {
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
                t99 t99Var = (t99) obj;
                dc7 dc7Var = ((c4) obj2).o;
                t99Var.getClass();
                dc7Var.a(t99Var);
                break;
            default:
                ((View) obj).getClass();
                ((WebViewActivity) obj2).getOnBackPressedDispatcher().onBackPressed();
                break;
        }
        return j59.a;
    }
}
