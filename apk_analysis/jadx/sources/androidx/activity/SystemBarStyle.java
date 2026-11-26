package androidx.activity;

import android.content.res.Resources;
import defpackage.ct3;
import defpackage.dt3;
import defpackage.hf;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class SystemBarStyle {
    public static final Companion Companion = new Companion(null);
    private final int darkScrim;
    private final nl3<Resources, Boolean> detectDarkMode;
    private final int lightScrim;
    private final int nightMode;

    /* JADX WARN: Multi-variable type inference failed */
    private SystemBarStyle(int i, int i2, int i3, nl3<? super Resources, Boolean> nl3Var) {
        this.lightScrim = i;
        this.darkScrim = i2;
        this.nightMode = i3;
        this.detectDarkMode = nl3Var;
    }

    public static final SystemBarStyle auto(int i, int i2) {
        return Companion.auto(i, i2);
    }

    public static final SystemBarStyle dark(int i) {
        return Companion.dark(i);
    }

    public static final SystemBarStyle light(int i, int i2) {
        return Companion.light(i, i2);
    }

    public final int getDarkScrim$activity() {
        return this.darkScrim;
    }

    public final nl3<Resources, Boolean> getDetectDarkMode$activity() {
        return this.detectDarkMode;
    }

    public final int getNightMode$activity() {
        return this.nightMode;
    }

    public final int getScrim$activity(boolean z) {
        return z ? this.darkScrim : this.lightScrim;
    }

    public final int getScrimWithEnforcedContrast$activity(boolean z) {
        if (this.nightMode == 0) {
            return 0;
        }
        return z ? this.darkScrim : this.lightScrim;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ SystemBarStyle auto$default(Companion companion, int i, int i2, nl3 nl3Var, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                nl3Var = new hf(5);
            }
            return companion.auto(i, i2, nl3Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean auto$lambda$0(Resources resources) {
            resources.getClass();
            return (resources.getConfiguration().uiMode & 48) == 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean dark$lambda$0(Resources resources) {
            resources.getClass();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean light$lambda$0(Resources resources) {
            resources.getClass();
            return false;
        }

        public final SystemBarStyle auto(int i, int i2, nl3<? super Resources, Boolean> nl3Var) {
            nl3Var.getClass();
            return new SystemBarStyle(i, i2, 0, nl3Var, null);
        }

        public final SystemBarStyle dark(int i) {
            return new SystemBarStyle(i, i, 2, new dt3(2), null);
        }

        public final SystemBarStyle light(int i, int i2) {
            return new SystemBarStyle(i, i2, 1, new ct3(1), null);
        }

        private Companion() {
        }

        public final SystemBarStyle auto(int i, int i2) {
            return auto$default(this, i, i2, null, 4, null);
        }
    }

    public static final SystemBarStyle auto(int i, int i2, nl3<? super Resources, Boolean> nl3Var) {
        return Companion.auto(i, i2, nl3Var);
    }

    public /* synthetic */ SystemBarStyle(int i, int i2, int i3, nl3 nl3Var, jh2 jh2Var) {
        this(i, i2, i3, nl3Var);
    }
}
