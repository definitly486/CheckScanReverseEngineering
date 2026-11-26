package defpackage;

import android.net.Uri;
import android.view.MenuItem;
import androidx.activity.result.ActivityResultCallback;
import androidx.camera.video.internal.encoder.EncodedDataImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.navigation.NavController;
import androidx.navigation.ui.NavigationUI;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.navigation.NavigationBarView;
import com.my.target.c1;
import com.my.target.ca;
import com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsFragment;
import com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewFragment;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import yads.bw4;
import yads.iw4;
import yads.tt3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class b9 implements ActivityResultCallback, xl3, CallbackToFutureAdapter.Resolver, NavigationBarView.OnItemSelectedListener, SwipeRefreshLayout.OnRefreshListener, c1.a, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return (qq1) ((pn0) obj2).invoke(obj);
            default:
                return (List) ((ae1) obj2).invoke(obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return EncodedDataImpl.lambda$new$0((AtomicReference) this.c, completer);
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        ca caVar = (ca) this.c;
        int i = ca.i;
        caVar.f = e6aVar;
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).a(((bw4) this.c).i.d);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        AddScreenshotsFragment addScreenshotsFragment = (AddScreenshotsFragment) this.c;
        ze4<Object>[] ze4VarArr = AddScreenshotsFragment.n;
        addScreenshotsFragment.o().getUriShopScreenshot((Uri) obj);
    }

    @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
    public boolean onNavigationItemSelected(MenuItem menuItem) {
        return NavigationUI.setupWithNavController$lambda$6((NavController) this.c, menuItem);
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        UniversalWebViewFragment universalWebViewFragment = (UniversalWebViewFragment) this.c;
        UniversalWebViewFragment.a aVar = UniversalWebViewFragment.r;
        universalWebViewFragment.q().onRefreshRequested();
    }
}
