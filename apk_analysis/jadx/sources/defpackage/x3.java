package defpackage;

import androidx.camera.core.impl.DeferrableSurface;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.android.gms.tasks.OnFailureListener;
import com.my.target.m1;
import com.my.target.r;
import com.warefly.checkscan.core.analytics.dynamicLinks.exception.NoUriFoundException;
import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;
import yads.h84;
import yads.iw4;
import yads.nr;
import yads.tt3;
import yads.vu5;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class x3 implements xl3, CallbackToFutureAdapter.Resolver, OnFailureListener, tt3, m1.b, vu5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ x3(r rVar, ao9 ao9Var) {
        this.b = 6;
        this.c = ao9Var;
    }

    @Override // yads.vu5
    public int a() {
        return ((nr) this.c).b();
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (c18) ((n4) obj2).invoke(obj);
            default:
                return ChequePagePresenter.showCheque$lambda$11$lambda$7((ChequePagePresenter.t) obj2, obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((DeferrableSurface) this.c).lambda$new$1(completer);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).a((h84) this.c);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        b08 b08Var = (b08) this.c;
        exc.getClass();
        b08Var.onError(new NoUriFoundException());
    }

    public /* synthetic */ x3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
        String str = ((ao9) this.c).B;
    }
}
