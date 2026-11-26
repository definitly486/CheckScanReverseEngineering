package androidx.window.layout;

import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class SupportedPosture {
    public static final Companion Companion = new Companion(null);
    public static final SupportedPosture TABLETOP = new SupportedPosture(0);
    private final int rawValue;

    public SupportedPosture(int i) {
        this.rawValue = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && obj.getClass() == SupportedPosture.class && this.rawValue == ((SupportedPosture) obj).rawValue;
    }

    public int hashCode() {
        return this.rawValue;
    }

    public String toString() {
        return equals(TABLETOP) ? "TABLETOP" : "UNKNOWN";
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
