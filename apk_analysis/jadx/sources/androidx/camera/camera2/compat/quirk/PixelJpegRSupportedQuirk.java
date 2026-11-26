package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.internal.compat.quirk.BackportedFixQuirk;
import androidx.core.backported.fixes.KnownIssue;
import androidx.core.backported.fixes.KnownIssues;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class PixelJpegRSupportedQuirk extends BackportedFixQuirk {
    public static final Companion Companion = new Companion(null);

    public static final boolean isEnabled() {
        return Companion.isEnabled();
    }

    @Override // androidx.camera.core.internal.compat.quirk.BackportedFixQuirk
    public KnownIssue getKnownIssue() {
        return KnownIssues.KI_398591036;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            return Build.VERSION.SDK_INT >= 34 && new PixelJpegRSupportedQuirk().hasIssue();
        }

        private Companion() {
        }
    }
}
