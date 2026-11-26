package androidx.privacysandbox.ads.adservices.topics;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import defpackage.e02;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TopicsManager {
    public static final Companion Companion = new Companion(null);

    public static final TopicsManager obtain(Context context) {
        return Companion.obtain(context);
    }

    public abstract Object getTopics(GetTopicsRequest getTopicsRequest, e02<? super GetTopicsResponse> e02Var);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final TopicsManager obtain(Context context) {
            context.getClass();
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 11) {
                return new TopicsManagerApi33Ext11Impl(context);
            }
            if (adServicesInfo.adServicesVersion() >= 5) {
                return new TopicsManagerApi33Ext5Impl(context);
            }
            if (adServicesInfo.adServicesVersion() == 4) {
                return new TopicsManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 11) {
                return (TopicsManager) BackCompatManager.INSTANCE.getManager(context, "TopicsManager", new TopicsManager$Companion$obtain$1(context));
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (TopicsManager) BackCompatManager.INSTANCE.getManager(context, "TopicsManager", new TopicsManager$Companion$obtain$2(context));
            }
            return null;
        }

        private Companion() {
        }
    }
}
