package defpackage;

import android.view.Display;
import androidx.arch.core.util.Function;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.paging.ItemKeyedDataSource;
import com.google.common.util.concurrent.ListenableFuture;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;
import io.appmetrica.analytics.impl.T5;
import java.util.List;
import yads.bw4;
import yads.eq2;
import yads.iw4;
import yads.kd6;
import yads.pd6;
import yads.tt3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class fg2 implements ListenerSet.Event, CallbackToFutureAdapter.Resolver, Function, xl3, ActivationBarrierCallback, tt3, kd6 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fg2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    public void a(Display display) {
        ((pd6) this.c).a(display);
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 2:
                return ItemKeyedDataSource.map$lambda$0((Function) obj2, (List) obj);
            case 3:
                return ((cj4) obj2).invoke(obj);
            default:
                return (us5) ((ie1) obj2).invoke(obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return Futures.lambda$nonCancellationPropagating$0((ListenableFuture) this.c, completer);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((AnalyticsListener) obj).onSeekStarted((AnalyticsListener.EventTime) obj2);
                break;
            default:
                eq2.h((bw4) obj2, (iw4) obj);
                break;
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback
    public void onWaitFinished() {
        T5.a((T5) this.c);
    }
}
