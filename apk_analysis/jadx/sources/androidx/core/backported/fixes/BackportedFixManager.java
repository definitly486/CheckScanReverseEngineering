package androidx.core.backported.fixes;

import android.os.Build;
import defpackage.me0;

/* JADX INFO: loaded from: classes2.dex */
public final class BackportedFixManager {
    private final StatusResolver resolver;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            try {
                iArr[Status.Unknown.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Status.Fixed.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Status.NotApplicable.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Status.NotFixed.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BackportedFixManager(StatusResolver statusResolver) {
        statusResolver.getClass();
        this.resolver = statusResolver;
    }

    public final Status getStatus(KnownIssue knownIssue) {
        knownIssue.getClass();
        if (knownIssue.getPrecondition$core_backported_fixes().invoke().booleanValue()) {
            return knownIssue.getManuallyTestedFingerprints$core_backported_fixes().contains(Build.FINGERPRINT) ? Status.Fixed : this.resolver.getStatus(knownIssue);
        }
        return Status.NotApplicable;
    }

    public final boolean isFixed(KnownIssue knownIssue) {
        knownIssue.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[getStatus(knownIssue).ordinal()];
        if (i == 1) {
            return false;
        }
        if (i == 2 || i == 3) {
            return true;
        }
        if (i == 4) {
            return false;
        }
        me0.e();
        return false;
    }

    public BackportedFixManager() {
        this(new SystemPropertyResolver());
    }
}
