package defpackage;

import androidx.camera.core.imagecapture.RequestWithCallback;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleExtractor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class br implements Arrangement.SpacingAlignmentCalculator, xl3, CallbackToFutureAdapter.Resolver, ListenerSet.Event, Consumer {
    public final /* synthetic */ Object b;

    public /* synthetic */ br(Object obj) {
        this.b = obj;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((SubtitleExtractor) this.b).lambda$parseAndWriteToOutput$0((CuesWithTiming) obj);
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        return Arrangement.Absolute.spacedBy_D5KLDUw$lambda$0((Alignment.Horizontal) this.b, i, layoutDirection);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        b36 b36Var = (b36) this.b;
        ((Throwable) obj).getClass();
        return b36Var;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((RequestWithCallback) this.b).lambda$new$1(completer);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$49((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }
}
