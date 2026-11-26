package defpackage;

import androidx.activity.result.ActivityResultCallback;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.extractor.text.CuesWithTiming;
import com.google.common.collect.j;
import com.google.firebase.crashlytics.AnalyticsDeferredProxy;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbHandler;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource;
import com.google.firebase.sessions.EventGDTLogger;
import com.google.firebase.sessions.SessionEvent;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j7 implements ActivityResultCallback, BreadcrumbSource, xl3, d29, ListenerSet.Event, k68.b, Consumer {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ j7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // k68.b
    public Iterator a(k68 k68Var, CharSequence charSequence) {
        return new i68(k68Var, charSequence, (y91.f) this.c);
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((j.a) this.c).c((CuesWithTiming) obj);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 2:
                return ((tv) obj2).invoke(obj);
            default:
                return ((EventGDTLogger) obj2).encode((SessionEvent) obj);
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$50((SimpleBasePlayer.State) this.c, (Player.Listener) obj);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ((nl3) this.c).invoke(obj);
    }

    @Override // com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource
    public void registerBreadcrumbHandler(BreadcrumbHandler breadcrumbHandler) {
        ((AnalyticsDeferredProxy) this.c).lambda$getDeferredBreadcrumbSource$0(breadcrumbHandler);
    }
}
