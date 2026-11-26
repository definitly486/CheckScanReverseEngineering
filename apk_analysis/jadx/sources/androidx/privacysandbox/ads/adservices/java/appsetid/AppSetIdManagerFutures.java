package androidx.privacysandbox.ads.adservices.java.appsetid;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetId;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.av0;
import defpackage.jh2;
import defpackage.qo2;
import defpackage.z22;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AppSetIdManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class Api33Ext4JavaImpl extends AppSetIdManagerFutures {
        private final AppSetIdManager mAppSetIdManager;

        public Api33Ext4JavaImpl(AppSetIdManager appSetIdManager) {
            appSetIdManager.getClass();
            this.mAppSetIdManager = appSetIdManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.appsetid.AppSetIdManagerFutures
        public ListenableFuture<AppSetId> getAppSetIdAsync() {
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1(this, null), 3), null, 1, null);
        }
    }

    public static final AppSetIdManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract ListenableFuture<AppSetId> getAppSetIdAsync();

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final AppSetIdManagerFutures from(Context context) {
            context.getClass();
            AppSetIdManager appSetIdManagerObtain = AppSetIdManager.Companion.obtain(context);
            if (appSetIdManagerObtain != null) {
                return new Api33Ext4JavaImpl(appSetIdManagerObtain);
            }
            return null;
        }

        private Companion() {
        }
    }
}
