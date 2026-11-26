package defpackage;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.warefly.checkscan.CheckScanApplication;
import com.warefly.checkscan.R;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.StartupParamsCallback;

/* JADX INFO: loaded from: classes5.dex */
public abstract class gd {
    public static final a a = new a();
    public static volatile hd b;
    public static Context c;
    public static boolean d;
    public static na1 e;

    public static final class a {
    }

    public static final class b implements StartupParamsCallback {
        @Override // io.appmetrica.analytics.StartupParamsCallback
        public final void onReceive(StartupParamsCallback.Result result) {
            String str;
            hg4 hg4VarB;
            if (result == null || (str = result.deviceId) == null) {
                return;
            }
            na1 na1Var = gd.e;
            if (na1Var == null) {
                aa4.j(ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
                throw null;
            }
            ComponentCallbacks2 componentCallbacks2 = (CheckScanApplication) na1Var.a;
            if (componentCallbacks2 instanceof jg4) {
                hg4VarB = ((jg4) componentCallbacks2).b();
            } else {
                hg4VarB = c.d;
                if (hg4VarB == null) {
                    ah.f("KoinApplication has not been started");
                    return;
                }
            }
            ((jf6) hg4VarB.c.d.e(x07.a(jf6.class), null, null)).o0(str);
        }

        @Override // io.appmetrica.analytics.StartupParamsCallback
        public final void onRequestError(StartupParamsCallback.Reason reason, StartupParamsCallback.Result result) {
            reason.getClass();
        }
    }

    public static void a() {
        Context context = c;
        if (context == null) {
            aa4.j("appContext");
            throw null;
        }
        AppMetricaConfig.Builder builderNewConfigBuilder = AppMetricaConfig.newConfigBuilder(context.getString(R.string.yandex_app_metrica_api_key));
        builderNewConfigBuilder.getClass();
        if (!d) {
            builderNewConfigBuilder.handleFirstActivationAsUpdate(true);
        }
        AppMetricaConfig appMetricaConfigBuild = builderNewConfigBuilder.build();
        appMetricaConfigBuild.getClass();
        Context context2 = c;
        if (context2 == null) {
            aa4.j("appContext");
            throw null;
        }
        AppMetrica.activate(context2, appMetricaConfigBuild);
        Context context3 = c;
        if (context3 == null) {
            aa4.j("appContext");
            throw null;
        }
        Application application = context3 instanceof Application ? (Application) context3 : null;
        if (application != null) {
            AppMetrica.enableActivityAutoTracking(application);
        }
        Context context4 = c;
        if (context4 != null) {
            AppMetrica.requestStartupParams(context4, new b(), u96.h(StartupParamsCallback.APPMETRICA_DEVICE_ID));
        } else {
            aa4.j("appContext");
            throw null;
        }
    }
}
