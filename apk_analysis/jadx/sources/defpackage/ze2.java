package defpackage;

import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import yads.jb4;
import yads.pb4;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ze2 implements ListenerSet.IterationFinishedEvent, pb4 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ze2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // yads.pb4
    public void a(String str) {
        jb4.a((jb4) this.b, (String) this.c, str);
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        ((DefaultAnalyticsCollector) this.b).lambda$setPlayer$0((Player) this.c, (AnalyticsListener) obj, flagSet);
    }
}
