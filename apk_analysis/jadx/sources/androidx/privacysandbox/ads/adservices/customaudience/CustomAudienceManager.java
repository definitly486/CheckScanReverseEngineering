package androidx.privacysandbox.ads.adservices.customaudience;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CustomAudienceManager {
    public static final Companion Companion = new Companion(null);

    public static final CustomAudienceManager obtain(Context context) {
        return Companion.obtain(context);
    }

    @ExperimentalFeatures.Ext10OptIn
    public abstract Object fetchAndJoinCustomAudience(FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, e02<? super j59> e02Var);

    public abstract Object joinCustomAudience(JoinCustomAudienceRequest joinCustomAudienceRequest, e02<? super j59> e02Var);

    public abstract Object leaveCustomAudience(LeaveCustomAudienceRequest leaveCustomAudienceRequest, e02<? super j59> e02Var);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final CustomAudienceManager obtain(Context context) {
            context.getClass();
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 4) {
                return new CustomAudienceManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (CustomAudienceManager) BackCompatManager.INSTANCE.getManager(context, "CustomAudienceManager", new CustomAudienceManager$Companion$obtain$1(context));
            }
            return null;
        }

        private Companion() {
        }
    }
}
