package yads;

import android.content.Intent;

/* JADX INFO: loaded from: classes6.dex */
public final class en0 {
    public final Intent a;
    public final gn0 b;
    public final hn0 c;

    public en0(Intent intent, gn0 gn0Var, hn0 hn0Var) {
        this.a = intent;
        this.b = gn0Var;
        this.c = hn0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof en0)) {
            return false;
        }
        en0 en0Var = (en0) obj;
        return defpackage.aa4.e(this.a, en0Var.a) && defpackage.aa4.e(this.b, en0Var.b) && defpackage.aa4.e(this.c, en0Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "DelegatedActivityLaunchInfo(pendingIntent=" + this.a + ", onLaunchSucceed=" + this.b + ", onLaunchFailed=" + this.c + ")";
    }
}
