package defpackage;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.TrackGroup;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.work.ListenableFutureKt;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ak2 implements DefaultTrackSelector.TrackInfo.Factory, CallbackToFutureAdapter.Resolver {
    public final /* synthetic */ String b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ak2(Object obj, String str, Object obj2) {
        this.c = obj;
        this.b = str;
        this.d = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ListenableFutureKt.executeAsync$lambda$4((Executor) this.c, this.b, (ll3) this.d, completer);
    }

    @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
    public List create(int i, TrackGroup trackGroup, int[] iArr) {
        return DefaultTrackSelector.lambda$selectTextTrack$4((DefaultTrackSelector.Parameters) this.c, this.b, (String) this.d, i, trackGroup, iArr);
    }
}
