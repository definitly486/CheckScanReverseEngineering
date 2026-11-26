package androidx.privacysandbox.ads.adservices.appsetid;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import defpackage.e02;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AppSetIdManager {
    public static final Companion Companion = new Companion(null);

    public static final AppSetIdManager obtain(Context context) {
        return Companion.obtain(context);
    }

    public abstract Object getAppSetId(e02<? super AppSetId> e02Var);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final AppSetIdManager obtain(Context context) {
            context.getClass();
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 4) {
                return new AppSetIdManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (AppSetIdManager) BackCompatManager.INSTANCE.getManager(context, "AppSetIdManager", new AppSetIdManager$Companion$obtain$1(context));
            }
            return null;
        }

        private Companion() {
        }
    }
}
