package defpackage;

import androidx.camera.core.CameraX;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.widget.NestedScrollView;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.my.target.c1;
import com.my.target.p0;
import com.my.target.w1;
import com.my.target.y1;
import com.my.tracker.obfuscated.m0;
import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;
import com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsFragment;
import java.util.concurrent.CountDownLatch;
import yads.iw4;
import yads.tt3;
import yads.ye6;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c21 implements CallbackToFutureAdapter.Resolver, ze6, NestedScrollView.OnScrollChangeListener, ListenerSet.Event, tt3, s0a.b, OnCompleteListener, gv9, c1.a {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ c21(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // s0a.b
    public void a() {
        ((CountDownLatch) this.c).countDown();
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((CameraX) this.c).lambda$shutdownInternal$5(completer);
    }

    @Override // defpackage.gv9
    public void b() {
        w1 w1Var = (w1) this.c;
        v2a v2aVar = w1Var.k;
        if (v2aVar != null) {
            v2aVar.e = true;
            p0.a aVar = w1Var.g;
            aVar.a.b(v2aVar.a);
            w1Var.A();
        }
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        y1 y1Var = (y1) this.c;
        int i = y1.q;
        y1Var.k = e6aVar;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 3:
                SimpleBasePlayer.lambda$updateStateAndInformListeners$46((SimpleBasePlayer.State) obj2, (Player.Listener) obj);
                break;
            default:
                ((iw4) obj).a((ye6) obj2);
                break;
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        m0.b.a((m0.c) this.c, task);
    }

    @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
    public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        NewSearchProductsFragment newSearchProductsFragment = (NewSearchProductsFragment) this.c;
        ze4<Object>[] ze4VarArr = NewSearchProductsFragment.l;
        newSearchProductsFragment.o().scrollChanged(i2, nestedScrollView.getHeight(), nestedScrollView.getChildAt(0).getBottom());
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return ChequePagePresenter.prepareAutoScroll$lambda$26((ChequePagePresenter.j) this.c, obj);
    }
}
