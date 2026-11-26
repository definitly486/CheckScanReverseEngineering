package defpackage;

import android.content.Context;
import androidx.core.app.NotificationManagerCompat;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.profile.Attribute;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class qq implements qe {
    public final Context a;
    public final fh8 b = nm4.b(a.f);

    public static final class a extends gh4 implements ll3<se> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final se invoke() {
            return new se();
        }
    }

    public qq(Context context) {
        this.a = context;
    }

    @Override // defpackage.qe
    public final void a(boolean z) {
        String str = z ? "granted" : "not_granted";
        re reVarH = h();
        if (reVarH != null) {
            reVarH.c("notifications", str);
        }
        AppMetrica.reportUserProfile(UserProfile.newBuilder().apply(Attribute.customString("notifications").withValue(str)).build());
    }

    @Override // defpackage.qe
    public final void b(boolean z) {
        re reVarH = h();
        if (reVarH != null) {
            reVarH.c("is_electro_user", String.valueOf(z));
        }
        AppMetrica.reportUserProfile(UserProfile.newBuilder().apply(Attribute.customBoolean("is_electro_user").withValue(z)).build());
    }

    @Override // defpackage.qe
    public final void c(long j) {
        re reVarH = h();
        if (reVarH != null) {
            reVarH.c("first_launch_time", String.valueOf(j));
        }
    }

    @Override // defpackage.qe
    public final void d(int i) {
        re reVarH = h();
        if (reVarH != null) {
            reVarH.c("bonuses_area_id", String.valueOf(i));
        }
        AppMetrica.reportUserProfile(UserProfile.newBuilder().apply(Attribute.customNumber("bonuses_area_id").withValue(i)).build());
    }

    @Override // defpackage.qe
    public final void e(String str) {
        str.getClass();
        re reVarH = h();
        if (reVarH != null) {
            reVarH.c("experiment_online_shop_tutorial", str);
        }
        AppMetrica.reportUserProfile(UserProfile.newBuilder().apply(Attribute.customString("experiment_online_shop_tutorial").withValue(str)).build());
    }

    @Override // defpackage.qe
    public final void f() {
        re reVarH = h();
        if (reVarH != null) {
            Map mapSingletonMap = Collections.singletonMap("Register", "SUCCESSFUL_REGISTER");
            mapSingletonMap.getClass();
            Map mapSingletonMap2 = Collections.singletonMap("Account", mapSingletonMap);
            mapSingletonMap2.getClass();
            reVarH.e(null, mapSingletonMap2.toString());
        }
    }

    @Override // defpackage.qe
    public final void g(long j) {
        String strValueOf = String.valueOf(j);
        AppMetrica.setUserProfileID(strValueOf);
        re reVarH = h();
        if (reVarH != null) {
            reVarH.a(strValueOf);
        }
        oa6.a aVar = oa6.I;
        oa6 oa6Var = oa6.J;
        if (oa6Var.h()) {
            oa6Var.g().c(qn1.t0(u96.k("version", "build", "deviceId", "sessionReplay", "errorTracking", "capturePerformance", "surveys")));
            ad6 ad6VarP = oa6Var.p();
            if (ad6VarP != null) {
                ad6VarP.b();
            }
            oa6Var.x.clear();
            oa6Var.v = null;
            synchronized (oa6Var.s) {
                j59 j59Var = j59.a;
            }
            synchronized (oa6Var.p) {
                oa6Var.B = false;
            }
            synchronized (oa6Var.q) {
                oa6Var.C = false;
            }
            synchronized (oa6Var.n) {
                oa6Var.E = null;
            }
            oa6Var.l();
            oa6Var.C();
            oa6Var.x(null);
        }
        strValueOf.getClass();
        oa6Var.s(strValueOf);
        try {
            FirebaseCrashlytics.getInstance().setUserId(strValueOf);
            j59 j59Var2 = j59.a;
        } catch (Throwable unused) {
        }
        boolean zAreNotificationsEnabled = NotificationManagerCompat.from(this.a).areNotificationsEnabled();
        AppMetrica.reportUserProfile(UserProfile.newBuilder().apply(Attribute.notificationsEnabled().withValue(zAreNotificationsEnabled)).build());
        re reVarH2 = h();
        if (reVarH2 != null) {
            reVarH2.c("notifs_on", String.valueOf(zAreNotificationsEnabled));
        }
    }

    public final re h() {
        return (re) this.b.getValue();
    }
}
