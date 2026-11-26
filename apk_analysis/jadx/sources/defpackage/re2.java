package defpackage;

import android.view.View;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class re2 implements ListenerSet.Event, AccessibilityViewCommand {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ re2(Object obj, int i) {
        this.c = obj;
        this.b = i;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onTimelineChanged((AnalyticsListener.EventTime) this.c, this.b);
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        return ((SideSheetBehavior) this.c).lambda$createAccessibilityViewCommandForState$2(this.b, view, commandArguments);
    }
}
