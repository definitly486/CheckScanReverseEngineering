package defpackage;

import androidx.camera.core.ImageProcessor;
import androidx.camera.core.processing.InternalImageProcessor;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sf2 implements ListenerSet.Event, CallbackToFutureAdapter.Resolver {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sf2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((InternalImageProcessor) this.b).lambda$safeProcess$1((ImageProcessor.Request) this.c, completer);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onPlayerError((AnalyticsListener.EventTime) this.b, (PlaybackException) this.c);
    }
}
