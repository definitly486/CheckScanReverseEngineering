package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.media3.common.PlaybackException;
import com.my.target.h2;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public final class qfa implements dha {
    public static final w7 g = new w7();
    public static final a h = new a();
    public static int i;
    public final kt9 a;
    public final Handler b;
    public final yea c;
    public CustomTabsSession d;
    public b e;
    public rfa f;

    public class a implements dha {
        @Override // defpackage.dha
        public final boolean a(h2 h2Var, Uri uri, pp9 pp9Var, Context context) {
            return false;
        }

        @Override // defpackage.dha
        public final void b() {
        }

        @Override // defpackage.dha
        public final void a() {
        }
    }

    public static final class b extends CustomTabsCallback {
        public final Handler a;
        public final HashSet b = new HashSet();
        public volatile e5a c = qfa.g;

        public b(Handler handler) {
            this.a = handler;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void extraCallback(String str, Bundle bundle) {
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void onNavigationEvent(final int i, Bundle bundle) {
            Integer numValueOf = Integer.valueOf(i);
            HashSet hashSet = this.b;
            if (hashSet.contains(numValueOf)) {
                return;
            }
            hashSet.add(Integer.valueOf(i));
            this.a.post(new Runnable() { // from class: sfa
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.c.accept(Integer.valueOf(i));
                }
            });
        }
    }

    public qfa(Handler handler, kt9 kt9Var) {
        this.b = handler;
        this.a = kt9Var;
        this.c = new yea((Application) kt9Var.a);
    }

    @Override // defpackage.dha
    public final boolean a(h2 h2Var, Uri uri, pp9 pp9Var, Context context) {
        b bVar = this.e;
        CustomTabsSession customTabsSession = this.d;
        if (bVar == null || customTabsSession == null) {
            return false;
        }
        bVar.c = new vx7(h2Var);
        yea yeaVar = this.c;
        as1 as1Var = new as1(h2Var, 3);
        m97 m97Var = new m97(h2Var, 2);
        synchronized (yeaVar) {
            if (yeaVar.b == null) {
                yea.a aVar = new yea.a(as1Var, m97Var);
                yeaVar.b = aVar;
                yeaVar.a.registerActivityLifecycleCallbacks(aVar);
            }
        }
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder(customTabsSession).build();
        if (Build.VERSION.SDK_INT >= 30 && (context instanceof Activity)) {
            Activity activity = (Activity) context;
            if (activity.isDestroyed() || activity.isFinishing()) {
                context = context.getApplicationContext();
            }
        }
        if (!(context instanceof Activity)) {
            customTabsIntentBuild.intent.addFlags(268435456);
        }
        try {
            customTabsIntentBuild.launchUrl(context, uri);
            return true;
        } catch (Throwable th) {
            pp9Var.b("cti, message=" + th.getMessage() + "\nurl=" + uri, 2, 0, PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED, null);
            return false;
        }
    }

    @Override // defpackage.dha
    public final void b() {
        a();
        this.e = new b(this.b);
        this.f = new rfa(this);
        kt9 kt9Var = this.a;
        String packageName = CustomTabsClient.getPackageName(kt9Var.a, null);
        if (packageName != null ? CustomTabsClient.bindCustomTabsService(kt9Var.a, packageName, this.f) : false) {
            return;
        }
        this.e = null;
        this.f = null;
        this.d = null;
    }

    @Override // defpackage.dha
    public final void a() {
        yea yeaVar = this.c;
        synchronized (yeaVar) {
            yea.a aVar = yeaVar.b;
            if (aVar != null) {
                yeaVar.a.unregisterActivityLifecycleCallbacks(aVar);
                yeaVar.b = null;
            }
        }
        try {
            rfa rfaVar = this.f;
            if (rfaVar != null) {
                this.a.a.unbindService(rfaVar);
            }
            this.f = null;
            this.d = null;
            this.e = null;
        } catch (Throwable unused) {
            this.f = null;
            this.d = null;
            this.e = null;
        }
    }
}
