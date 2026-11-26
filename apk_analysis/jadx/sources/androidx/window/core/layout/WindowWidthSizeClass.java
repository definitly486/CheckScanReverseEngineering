package androidx.window.core.layout;

import defpackage.jh2;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
@ul2
public final class WindowWidthSizeClass {
    private final int rawValue;
    public static final Companion Companion = new Companion(null);
    public static final WindowWidthSizeClass COMPACT = new WindowWidthSizeClass(0);
    public static final WindowWidthSizeClass MEDIUM = new WindowWidthSizeClass(1);
    public static final WindowWidthSizeClass EXPANDED = new WindowWidthSizeClass(2);

    private WindowWidthSizeClass(int i) {
        this.rawValue = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && WindowWidthSizeClass.class == obj.getClass() && this.rawValue == ((WindowWidthSizeClass) obj).rawValue;
    }

    public int hashCode() {
        return this.rawValue;
    }

    public String toString() {
        String str;
        if (equals(COMPACT)) {
            str = "COMPACT";
        } else if (equals(MEDIUM)) {
            str = "MEDIUM";
        } else {
            str = equals(EXPANDED) ? "EXPANDED" : "UNKNOWN";
        }
        return "WindowWidthSizeClass: ".concat(str);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        @ul2
        public static /* synthetic */ void getCOMPACT$annotations() {
        }

        @ul2
        public static /* synthetic */ void getEXPANDED$annotations() {
        }

        @ul2
        public static /* synthetic */ void getMEDIUM$annotations() {
        }

        @ul2
        public final WindowWidthSizeClass compute$window_core(float f) {
            if (f >= 0.0f) {
                if (f < 600.0f) {
                    return WindowWidthSizeClass.COMPACT;
                }
                return f < 840.0f ? WindowWidthSizeClass.MEDIUM : WindowWidthSizeClass.EXPANDED;
            }
            throw new IllegalArgumentException(("Width must be positive, received " + f).toString());
        }

        private Companion() {
        }
    }
}
