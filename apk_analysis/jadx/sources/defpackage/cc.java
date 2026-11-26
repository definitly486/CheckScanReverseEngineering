package defpackage;

import android.app.Person;
import android.os.Bundle;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import com.google.firebase.messaging.FirebaseMessaging;
import yads.e92;
import yads.g06;
import yads.gl1;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.ry1;
import yads.th1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cc implements w08, ea1.a, TrackSelector.InvalidationListener, l66, jv {
    public final /* synthetic */ int b;

    public static bm3 b(ComposeUiNode.Companion companion, Composer composer, MeasurePolicy measurePolicy, Composer composer2, CompositionLocalMap compositionLocalMap) {
        Updater.m5363setimpl(composer, measurePolicy, companion.getSetMeasurePolicy());
        Updater.m5363setimpl(composer2, compositionLocalMap, companion.getSetResolvedCompositionLocals());
        return companion.getSetCompositeKeyHash();
    }

    public static /* bridge */ /* synthetic */ Person d(Object obj) {
        return (Person) obj;
    }

    public static /* synthetic */ void e(String str, Throwable th) {
        throw new IllegalArgumentException(str, th);
    }

    public static boolean f(bm3 bm3Var, Composer composer, int i) {
        bm3Var.invoke(composer, Integer.valueOf(i));
        composer.endNode();
        return ComposerKt.isTraceInProgress();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 8:
                return e92.c(((Long) obj).longValue());
            case 9:
            default:
                return th1.c(((Long) obj).longValue());
            case 10:
                return gl1.b(((Long) obj).longValue());
            case 11:
                return ry1.a(((Double) obj).doubleValue());
        }
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        FirebaseMessaging.getInstance().getToken().addOnSuccessListener(new ia5(new ne1(aVar, 1)));
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        DefaultPreloadManager.lambda$new$0();
    }

    public /* synthetic */ cc(int i) {
        this.b = i;
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return g06.a(bundle);
    }

    @Override // ea1.a
    public boolean a(char c) {
        return (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ' || c == '/' || c == '>') ? false : true;
    }
}
