package androidx.core.flagging;

import android.os.Build;
import android.os.flagging.AconfigPackage;
import android.os.flagging.AconfigStorageReadException;

/* JADX INFO: loaded from: classes2.dex */
public interface AconfigPackageCompat {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final AconfigPackageCompat load(String str) {
            str.getClass();
            if (Build.VERSION.SDK_INT < 36) {
                return new AconfigPackageCompatNoopImpl();
            }
            try {
                AconfigPackage aconfigPackageLoad = AconfigPackage.load(str);
                aconfigPackageLoad.getClass();
                return new AconfigPackageCompatApi36Impl(aconfigPackageLoad);
            } catch (AconfigStorageReadException e) {
                if (e.getErrorCode() == 2) {
                    return new AconfigPackageCompatNoopImpl();
                }
                throw e;
            }
        }
    }

    static AconfigPackageCompat load(String str) {
        return Companion.load(str);
    }

    boolean getBooleanFlagValue(String str, boolean z);
}
