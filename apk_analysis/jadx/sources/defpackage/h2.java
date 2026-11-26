package defpackage;

import androidx.compose.runtime.ComposerKt;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaParserExtractorAdapter;
import androidx.media3.exoplayer.source.ProgressiveMediaExtractor;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.util.List;
import yads.h22;
import yads.l66;
import yads.n71;
import yads.qj1;
import yads.st3;
import yads.u62;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class h2 implements OnFailureListener, ProgressiveMediaExtractor.Factory, l66, st3 {
    public final /* synthetic */ int b;

    public /* synthetic */ h2(int i) {
        this.b = i;
    }

    public static void b(int i, String str) {
        ComposerKt.composeImmediateRuntimeError(str + i);
    }

    public static /* synthetic */ void c(Object obj, StringBuilder sb) {
        sb.append(obj);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public static /* synthetic */ void d(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4);
    }

    public static /* synthetic */ void e(String str, Throwable th) {
        throw new IllegalStateException(str, th);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 7:
                return h22.b(((Long) obj).longValue());
            case 8:
            default:
                return u62.c(((Long) obj).longValue());
            case 9:
                return qj1.a(((Double) obj).doubleValue());
        }
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor.Factory
    public ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId) {
        return MediaParserExtractorAdapter.lambda$static$0(playerId);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        FirebaseCrashlytics.lambda$init$0(exc);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return n71.a(list);
    }
}
