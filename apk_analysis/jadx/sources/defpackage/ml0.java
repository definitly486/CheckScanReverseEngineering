package defpackage;

import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditor;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditorKt;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.my.target.wf;
import java.util.concurrent.atomic.AtomicReference;
import yads.c06;
import yads.f03;
import yads.v13;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ml0 implements xl3, ListenerSet.Event, CallbackToFutureAdapter.Resolver, DoubleFunction, SlotTableEditor.VisitSlotsInRememberOrderCallback, v13, wf.a {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ml0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (b36) ((nl3) obj2).invoke(obj);
            case 3:
                return (us5) ((qs5) obj2).invoke(obj);
            default:
                return ((f03) obj2).a((c06) obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return EncoderImpl.lambda$acquireInputBuffer$13((AtomicReference) this.c, completer);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onDrmSessionReleased((AnalyticsListener.EventTime) this.c);
    }

    @Override // androidx.compose.runtime.composer.linkbuffer.SlotTableEditor.VisitSlotsInRememberOrderCallback
    public boolean visit(int i, int i2, Object obj) {
        return SlotTableEditorKt.removeGroupAndForgetSlots$lambda$0((RememberManager) this.c, i, i2, obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.oetfFunc$lambda$0((Rgb) this.c, d);
    }
}
