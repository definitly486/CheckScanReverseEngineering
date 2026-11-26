package defpackage;

import androidx.camera.core.impl.LiveDataObservable;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.my.target.c1;
import com.my.target.wj;
import yads.ae4;
import yads.ci4;
import yads.dh4;
import yads.iw4;
import yads.tt3;
import yads.ub0;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class hu2 implements OnFailureListener, Continuation, CallbackToFutureAdapter.Resolver, DoubleFunction, ci4, tt3, c1.a {
    public final /* synthetic */ Object b;

    public /* synthetic */ hu2(Object obj) {
        this.b = obj;
    }

    @Override // yads.ci4
    public boolean a(dh4 dh4Var) {
        return ae4.a((ae4) this.b, dh4Var);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((LiveDataObservable) this.b).lambda$fetchData$1(completer);
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        wj wjVar = (wj) this.b;
        int i = wj.k;
        wjVar.i = e6aVar;
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).a((ub0) this.b);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        oz7.a aVar = (oz7.a) this.b;
        exc.getClass();
        aVar.onError(exc);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return Boolean.valueOf(((FirebaseRemoteConfig) this.b).processActivatePutTask(task));
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.Companion.generateOetf$lambda$0((TransferParameters) this.b, d);
    }
}
