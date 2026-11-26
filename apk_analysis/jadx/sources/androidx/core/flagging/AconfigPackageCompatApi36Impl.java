package androidx.core.flagging;

import android.os.flagging.AconfigPackage;

/* JADX INFO: loaded from: classes2.dex */
final class AconfigPackageCompatApi36Impl implements AconfigPackageCompat {
    private final AconfigPackage aconfigPackageImpl;

    public AconfigPackageCompatApi36Impl(AconfigPackage aconfigPackage) {
        aconfigPackage.getClass();
        this.aconfigPackageImpl = aconfigPackage;
    }

    @Override // androidx.core.flagging.AconfigPackageCompat
    public boolean getBooleanFlagValue(String str, boolean z) {
        str.getClass();
        return this.aconfigPackageImpl.getBooleanFlagValue(str, z);
    }
}
