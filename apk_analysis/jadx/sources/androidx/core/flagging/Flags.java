package androidx.core.flagging;

import android.os.Build;
import android.os.flagging.AconfigPackage;
import android.os.flagging.AconfigStorageReadException;
import defpackage.j59;
import defpackage.jh2;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
public final class Flags {
    public static final Companion Companion = new Companion(0 == true ? 1 : 0);
    private static final Map<String, AconfigPackage> aconfigCache;
    private static final Set<String> missingPackageCache;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = Build.VERSION.SDK_INT;
        aconfigCache = i >= 36 ? new ConcurrentHashMap() : null;
        missingPackageCache = i >= 36 ? new CopyOnWriteArraySet() : null;
    }

    public static final boolean getBooleanFlagValue(String str, String str2) {
        return Companion.getBooleanFlagValue(str, str2);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ boolean getBooleanFlagValue$default(Companion companion, String str, String str2, boolean z, int i, Object obj) {
            if ((i & 4) != 0) {
                z = false;
            }
            return companion.getBooleanFlagValue(str, str2, z);
        }

        public final boolean getBooleanFlagValue(String str, String str2, boolean z) {
            AconfigPackage aconfigPackage;
            str.getClass();
            str2.getClass();
            if (Build.VERSION.SDK_INT < 36) {
                return z;
            }
            Map map = Flags.aconfigCache;
            map.getClass();
            Set set = Flags.missingPackageCache;
            set.getClass();
            if (map.containsKey(str)) {
                aconfigPackage = (AconfigPackage) map.get(str);
            } else if (set.contains(str)) {
                aconfigPackage = null;
            } else {
                try {
                    AconfigPackage aconfigPackageLoad = AconfigPackage.load(str);
                    map.put(str, aconfigPackageLoad);
                    j59 j59Var = j59.a;
                    aconfigPackage = aconfigPackageLoad;
                } catch (AconfigStorageReadException unused) {
                    set.add(str);
                    aconfigPackage = null;
                }
            }
            return aconfigPackage != null ? aconfigPackage.getBooleanFlagValue(str2, z) : z;
        }

        private Companion() {
        }

        public final boolean getBooleanFlagValue(String str, String str2) {
            str.getClass();
            str2.getClass();
            return getBooleanFlagValue$default(this, str, str2, false, 4, null);
        }
    }

    public static final boolean getBooleanFlagValue(String str, String str2, boolean z) {
        return Companion.getBooleanFlagValue(str, str2, z);
    }
}
