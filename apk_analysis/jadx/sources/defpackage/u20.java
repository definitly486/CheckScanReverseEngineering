package defpackage;

import androidx.arch.core.util.Function;
import androidx.paging.PageKeyedDataSource;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewStartUpResult;
import com.my.target.b1;
import com.warefly.checkscan.presentation.balance.main.view.BalanceFragment;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class u20 implements SwipeRefreshLayout.OnRefreshListener, b1.a, xl3, Function, WebViewCompat.WebViewStartUpCallback {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ u20(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // com.my.target.b1.a
    public void a(vha vhaVar, j8a j8aVar) {
        ((kd0) this.c).a((kia) vhaVar, j8aVar);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 2:
                return (List) ((vf1) obj2).invoke(obj);
            default:
                return PageKeyedDataSource.map$lambda$0((Function) obj2, (List) obj);
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        BalanceFragment balanceFragment = (BalanceFragment) this.c;
        BalanceFragment.a aVar = BalanceFragment.u;
        balanceFragment.n().refreshBlocks(true);
    }

    @Override // androidx.webkit.WebViewCompat.WebViewStartUpCallback
    public void onSuccess(WebViewStartUpResult webViewStartUpResult) {
        WebViewCompat.lambda$startUpWebView$1((WebViewCompat.WebViewStartUpCallback) this.c, webViewStartUpResult);
    }
}
