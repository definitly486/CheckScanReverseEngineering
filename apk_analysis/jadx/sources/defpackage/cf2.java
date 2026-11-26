package defpackage;

import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cf2 implements ListenerSet.Event, OnApplyWindowInsetsListener, v75 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ cf2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.v75
    public void a(c75.a aVar) {
        InAppMessageStreamManager.lambda$taskToMaybe$30((Task) this.b, (Executor) this.c, aVar);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onMetadata((AnalyticsListener.EventTime) this.b, (Metadata) this.c);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        o16 o16Var = (o16) this.b;
        bm3 bm3Var = (bm3) this.c;
        boolean zIsVisible = windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime());
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime());
        Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.statusBars());
        view.getClass();
        view.setPadding(view.getPaddingLeft(), o16Var.b + insets2.top, view.getPaddingRight(), view.getPaddingBottom());
        Boolean boolValueOf = Boolean.valueOf(zIsVisible);
        insets.getClass();
        bm3Var.invoke(boolValueOf, insets);
        return windowInsetsCompat;
    }
}
