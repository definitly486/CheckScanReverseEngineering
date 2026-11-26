package defpackage;

import androidx.camera.core.RotationProvider;
import androidx.camera.core.UseCase;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.warefly.checkscan.products.presentation.products.view.ProductsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class vo0 implements xl3, SwipeRefreshLayout.OnRefreshListener, RotationProvider.Listener {
    public final /* synthetic */ Object b;

    public /* synthetic */ vo0(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((ep0) this.b).invoke(obj);
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        ProductsFragment productsFragment = (ProductsFragment) this.b;
        ProductsFragment.a aVar = ProductsFragment.i;
        productsFragment.o().refreshContent();
    }

    @Override // androidx.camera.core.RotationProvider.Listener
    public void onRotationChanged(int i) {
        ((UseCase) this.b).onProviderRotationChanged(i);
    }
}
