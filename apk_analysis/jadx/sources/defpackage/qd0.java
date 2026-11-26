package defpackage;

import androidx.camera.core.impl.utils.MappingRedirectableLiveData;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.LiveData;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import androidx.work.WorkerKt;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class qd0 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ qd0(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                ((BasePreloadManager) obj3).lambda$onSkipped$8((MediaSource) obj2, (bf6) obj);
                break;
            case 1:
                MappingRedirectableLiveData.redirectTo$lambda$0((LiveData) obj3, (MappingRedirectableLiveData) obj2, (LiveData) obj);
                break;
            default:
                WorkerKt.future$lambda$2$lambda$1((AtomicBoolean) obj3, (CallbackToFutureAdapter.Completer) obj2, (ll3) obj);
                break;
        }
    }
}
