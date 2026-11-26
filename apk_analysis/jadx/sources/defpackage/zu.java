package defpackage;

import androidx.arch.core.util.Function;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.audio.AudioCapabilities;
import androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutputProvider;
import androidx.media3.exoplayer.source.preload.PreloadException;
import androidx.media3.exoplayer.source.preload.PreloadManagerListener;
import androidx.paging.DataSource;
import com.my.target.f1;
import com.my.target.m1;
import com.my.target.m2;
import com.my.target.w1;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zu implements AudioCapabilitiesReceiver.Listener, ListenerSet.Event, Function, gv9, m1.b {
    public final /* synthetic */ Object b;

    public /* synthetic */ zu(Object obj) {
        this.b = obj;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
        m2 m2Var = (m2) this.b;
        z94.b bVar = m2Var.a;
        String str = m2Var.m.B;
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return DataSource.Factory.map$lambda$0((Function) this.b, (List) obj);
    }

    @Override // defpackage.gv9
    public void b() {
        f1 f1Var = (f1) this.b;
        v2a v2aVar = f1Var.k;
        if (v2aVar != null) {
            kn9 kn9Var = f1Var.l;
            xda xdaVar = v2aVar.a;
            w1 w1Var = w1.this;
            Iterator it = w1Var.f.iterator();
            while (it.hasNext()) {
                ((v2a) it.next()).e = true;
            }
            w1Var.g.a.b(xdaVar);
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((PreloadManagerListener) obj).onError((PreloadException) this.b);
    }

    @Override // androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver.Listener
    public void onAudioCapabilitiesChanged(AudioCapabilities audioCapabilities) {
        ((AudioTrackAudioOutputProvider) this.b).onAudioCapabilitiesChanged(audioCapabilities);
    }
}
