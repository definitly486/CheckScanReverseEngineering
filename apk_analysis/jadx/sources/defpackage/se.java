package defpackage;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import com.google.firebase.Firebase;
import com.google.firebase.analytics.AnalyticsKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.analytics.ParametersBuilder;

/* JADX INFO: loaded from: classes4.dex */
public final class se implements re {
    public final fh8 a = new fh8(new a(0));

    public static final class a extends gh4 implements ll3<FirebaseAnalytics> {
        @Override // defpackage.ll3
        public final FirebaseAnalytics invoke() {
            Object aVar;
            try {
                aVar = AnalyticsKt.getAnalytics(Firebase.INSTANCE);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            return (FirebaseAnalytics) aVar;
        }
    }

    @Override // defpackage.re
    public final void a(String str) {
        str.getClass();
        FirebaseAnalytics firebaseAnalytics = (FirebaseAnalytics) this.a.getValue();
        if (firebaseAnalytics != null) {
            firebaseAnalytics.setUserId(str);
        }
    }

    @Override // defpackage.re
    public final void b(FragmentActivity fragmentActivity, String str, String str2) {
        FirebaseAnalytics analytics = AnalyticsKt.getAnalytics(Firebase.INSTANCE);
        ParametersBuilder parametersBuilder = new ParametersBuilder();
        parametersBuilder.param(FirebaseAnalytics.Param.SCREEN_NAME, str);
        parametersBuilder.param(FirebaseAnalytics.Param.SCREEN_CLASS, str2);
        analytics.logEvent(FirebaseAnalytics.Event.SCREEN_VIEW, parametersBuilder.getBundle());
    }

    @Override // defpackage.re
    public final void c(String str, String str2) {
        FirebaseAnalytics firebaseAnalytics = (FirebaseAnalytics) this.a.getValue();
        if (firebaseAnalytics != null) {
            firebaseAnalytics.setUserProperty(str, str2);
        }
    }

    @Override // defpackage.re
    public final void d(String str) {
    }

    @Override // defpackage.re
    public final void e(Bundle bundle, String str) {
        str.getClass();
        FirebaseAnalytics firebaseAnalytics = (FirebaseAnalytics) this.a.getValue();
        if (firebaseAnalytics != null) {
            firebaseAnalytics.logEvent(str, bundle);
        }
    }
}
