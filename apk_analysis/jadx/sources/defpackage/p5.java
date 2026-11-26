package defpackage;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.source.preload.PreloadException;
import androidx.media3.exoplayer.source.preload.PreloadManagerListener;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.RandomTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectionUtil;
import com.my.target.f1;
import com.my.target.m1;
import com.my.target.m2;
import com.my.target.w1;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p5 implements xl3, ListenerSet.Event, TrackSelectionUtil.AdaptiveTrackSelectionFactory, m1.b {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ p5(f1 f1Var, v2a v2aVar) {
        this.b = 4;
        this.c = f1Var;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 4:
                ((w1.a) ((f1) obj).l).getClass();
                break;
            default:
                m2 m2Var = (m2) obj;
                z94.b bVar = m2Var.a;
                String str = m2Var.m.B;
                break;
        }
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (List) ((nl3) obj2).invoke(obj);
            default:
                return (List) ((p42) obj2).invoke(obj);
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory
    public ExoTrackSelection createAdaptiveTrackSelection(ExoTrackSelection.Definition definition) {
        return ((RandomTrackSelection.Factory) this.c).lambda$createTrackSelections$0(definition);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((PreloadManagerListener) obj).onError((PreloadException) this.c);
    }

    public /* synthetic */ p5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }
}
