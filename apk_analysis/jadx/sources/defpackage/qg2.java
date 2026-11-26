package defpackage;

import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditor;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditorKt;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.audio.AudioSink;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class qg2 implements ListenerSet.Event, SlotTableEditor.VisitSlotsInRememberOrderCallback {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qg2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onAudioTrackReleased((AnalyticsListener.EventTime) this.b, (AudioSink.AudioTrackConfig) this.c);
    }

    @Override // androidx.compose.runtime.composer.linkbuffer.SlotTableEditor.VisitSlotsInRememberOrderCallback
    public boolean visit(int i, int i2, Object obj) {
        return SlotTableEditorKt.deactivateGroup$lambda$0((SlotTableEditor) this.b, (RememberManager) this.c, i, i2, obj);
    }
}
