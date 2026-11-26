package defpackage;

import android.os.Bundle;
import android.view.View;
import androidx.camera.core.impl.CameraRepository;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.fragment.app.FragmentResultListener;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.my.target.d2;
import com.my.target.wh;
import com.my.target.y1;
import com.my.target.z1;
import com.warefly.checkscan.presentation.bonuses.search.presenter.BonusesSearchPresenter;
import com.warefly.checkscan.products.presentation.selections.view.SelectionsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class l3 implements xl3, CallbackToFutureAdapter.Resolver, FragmentResultListener, SwipeRefreshLayout.OnRefreshListener, y1.a {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ l3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // com.my.target.y1.a
    public void a(fo9 fo9Var, int i, pfa pfaVar, View view) {
        d2.b bVar = (d2.b) this.c;
        int i2 = wh.e;
        if (bVar != null) {
            ((z1) bVar).g(fo9Var, i, pfaVar, view);
        }
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (qq1) ((p4) obj2).invoke(obj);
            case 1:
                return (qx5) ((w9) obj2).invoke(obj);
            default:
                return BonusesSearchPresenter.onFirstViewAttach$lambda$1((BonusesSearchPresenter.f) obj2, obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((CameraRepository) this.c).lambda$deinit$0(completer);
    }

    @Override // androidx.fragment.app.FragmentResultListener
    public void onFragmentResult(String str, Bundle bundle) {
        yn3 yn3Var = (yn3) this.c;
        str.getClass();
        bundle.getClass();
        ((no3) yn3Var.b.getValue()).b(un3.c.a);
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        SelectionsFragment selectionsFragment = (SelectionsFragment) this.c;
        SelectionsFragment.a aVar = SelectionsFragment.i;
        selectionsFragment.o().refreshContent();
    }
}
