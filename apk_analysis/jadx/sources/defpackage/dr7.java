package defpackage;

import android.app.ApplicationExitInfo;
import com.google.firebase.crashlytics.internal.common.SessionReportingCoordinator;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dr7 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return SessionReportingCoordinator.lambda$isOom$5((ApplicationExitInfo) obj);
    }
}
