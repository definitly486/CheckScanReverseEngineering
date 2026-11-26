package androidx.privacysandbox.ads.adservices.appsetid;

import defpackage.aa4;
import defpackage.fg;
import defpackage.jh2;
import defpackage.kh;

/* JADX INFO: loaded from: classes3.dex */
public final class AppSetId {
    public static final Companion Companion = new Companion(null);
    public static final int SCOPE_APP = 1;
    public static final int SCOPE_DEVELOPER = 2;
    private final String id;
    private final int scope;

    public AppSetId(String str, int i) {
        str.getClass();
        this.id = str;
        this.scope = i;
        if (i == 1 || i == 2) {
            return;
        }
        fg.c("Scope undefined.");
        throw null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppSetId)) {
            return false;
        }
        AppSetId appSetId = (AppSetId) obj;
        return aa4.e(this.id, appSetId.id) && this.scope == appSetId.scope;
    }

    public final String getId() {
        return this.id;
    }

    public final int getScope() {
        return this.scope;
    }

    public int hashCode() {
        return Integer.hashCode(this.scope) + (this.id.hashCode() * 31);
    }

    public String toString() {
        return kh.c(new StringBuilder("AppSetId: id="), this.id, ", scope=", this.scope == 1 ? "SCOPE_APP" : "SCOPE_DEVELOPER");
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
