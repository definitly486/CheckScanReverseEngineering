package androidx.privacysandbox.ads.adservices.java.adid;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.adid.AdId;
import androidx.privacysandbox.ads.adservices.adid.AdIdManager;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.av0;
import defpackage.jh2;
import defpackage.qo2;
import defpackage.z22;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AdIdManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class Api33Ext4JavaImpl extends AdIdManagerFutures {
        private final AdIdManager mAdIdManager;

        public Api33Ext4JavaImpl(AdIdManager adIdManager) {
            adIdManager.getClass();
            this.mAdIdManager = adIdManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adid.AdIdManagerFutures
        public ListenableFuture<AdId> getAdIdAsync() {
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1(this, null), 3), null, 1, null);
        }
    }

    public static final AdIdManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract ListenableFuture<AdId> getAdIdAsync();

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final AdIdManagerFutures from(Context context) {
            context.getClass();
            AdIdManager adIdManagerObtain = AdIdManager.Companion.obtain(context);
            if (adIdManagerObtain != null) {
                return new Api33Ext4JavaImpl(adIdManagerObtain);
            }
            return null;
        }

        private Companion() {
        }
    }
}
