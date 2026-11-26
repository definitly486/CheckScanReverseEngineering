package androidx.privacysandbox.ads.adservices.java.topics;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.TopicsManager;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.av0;
import defpackage.jh2;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.uy4;
import defpackage.z22;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TopicsManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class CommonApiJavaImpl extends TopicsManagerFutures {
        private final TopicsManager mTopicsManager;

        public CommonApiJavaImpl(TopicsManager topicsManager) {
            topicsManager.getClass();
            this.mTopicsManager = topicsManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures
        public ListenableFuture<GetTopicsResponse> getTopicsAsync(GetTopicsRequest getTopicsRequest) {
            getTopicsRequest.getClass();
            oi2 oi2Var = qo2.a;
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(uy4.a), null, null, new TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1(this, getTopicsRequest, null), 3), null, 1, null);
        }
    }

    public static final TopicsManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract ListenableFuture<GetTopicsResponse> getTopicsAsync(GetTopicsRequest getTopicsRequest);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final TopicsManagerFutures from(Context context) {
            context.getClass();
            TopicsManager topicsManagerObtain = TopicsManager.Companion.obtain(context);
            if (topicsManagerObtain != null) {
                return new CommonApiJavaImpl(topicsManagerObtain);
            }
            return null;
        }

        private Companion() {
        }
    }
}
