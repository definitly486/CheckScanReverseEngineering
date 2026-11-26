package androidx.camera.core.internal.compat.quirk;

import androidx.camera.core.impl.Quirk;
import androidx.core.backported.fixes.BackportedFixManager;
import androidx.core.backported.fixes.KnownIssue;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.l00;

/* JADX INFO: loaded from: classes.dex */
public abstract class BackportedFixQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final cl4<BackportedFixManager> backportedFixManager$delegate = new fh8(new l00(0));

    /* JADX INFO: Access modifiers changed from: private */
    public static final BackportedFixManager backportedFixManager_delegate$lambda$0() {
        return new BackportedFixManager();
    }

    public abstract KnownIssue getKnownIssue();

    public final boolean hasIssue() {
        return !Companion.getBackportedFixManager().isFixed(getKnownIssue());
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final BackportedFixManager getBackportedFixManager() {
            return (BackportedFixManager) BackportedFixQuirk.backportedFixManager$delegate.getValue();
        }

        private Companion() {
        }
    }
}
