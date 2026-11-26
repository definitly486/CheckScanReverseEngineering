package androidx.privacysandbox.ads.adservices.java.signals;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.signals.ProtectedSignalsManager;
import androidx.privacysandbox.ads.adservices.signals.UpdateSignalsRequest;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.av0;
import defpackage.j59;
import defpackage.jh2;
import defpackage.qo2;
import defpackage.z22;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ProtectedSignalsManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class JavaImpl extends ProtectedSignalsManagerFutures {
        private final ProtectedSignalsManager mProtectedSignalsManager;

        public JavaImpl(ProtectedSignalsManager protectedSignalsManager) {
            this.mProtectedSignalsManager = protectedSignalsManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.signals.ProtectedSignalsManagerFutures
        public ListenableFuture<j59> updateSignalsAsync(UpdateSignalsRequest updateSignalsRequest) {
            updateSignalsRequest.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1(this, updateSignalsRequest, null), 3), null, 1, null);
        }
    }

    public static final ProtectedSignalsManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract ListenableFuture<j59> updateSignalsAsync(UpdateSignalsRequest updateSignalsRequest);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ProtectedSignalsManagerFutures from(Context context) {
            context.getClass();
            ProtectedSignalsManager protectedSignalsManagerObtain = ProtectedSignalsManager.Companion.obtain(context);
            if (protectedSignalsManagerObtain != null) {
                return new JavaImpl(protectedSignalsManagerObtain);
            }
            return null;
        }

        private Companion() {
        }
    }
}
