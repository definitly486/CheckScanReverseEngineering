package androidx.privacysandbox.ads.adservices.adid;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import defpackage.e02;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AdIdManager {
    public static final Companion Companion = new Companion(null);

    public static final AdIdManager obtain(Context context) {
        return Companion.obtain(context);
    }

    public abstract Object getAdId(e02<? super AdId> e02Var);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final AdIdManager obtain(Context context) {
            context.getClass();
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 4) {
                return new AdIdManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (AdIdManager) BackCompatManager.INSTANCE.getManager(context, "AdIdManager", new AdIdManager$Companion$obtain$1(context));
            }
            return null;
        }

        private Companion() {
        }
    }
}
