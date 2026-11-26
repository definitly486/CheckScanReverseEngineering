package androidx.window.core.layout;

import defpackage.jh2;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
@ul2
public final class WindowHeightSizeClass {
    private final int rawValue;
    public static final Companion Companion = new Companion(null);
    public static final WindowHeightSizeClass COMPACT = new WindowHeightSizeClass(0);
    public static final WindowHeightSizeClass MEDIUM = new WindowHeightSizeClass(1);
    public static final WindowHeightSizeClass EXPANDED = new WindowHeightSizeClass(2);

    private WindowHeightSizeClass(int i) {
        this.rawValue = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && WindowHeightSizeClass.class == obj.getClass() && this.rawValue == ((WindowHeightSizeClass) obj).rawValue;
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
        return "WindowHeightSizeClass: ".concat(str);
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
        public final WindowHeightSizeClass compute$window_core(float f) {
            if (f >= 0.0f) {
                if (f < 480.0f) {
                    return WindowHeightSizeClass.COMPACT;
                }
                return f < 900.0f ? WindowHeightSizeClass.MEDIUM : WindowHeightSizeClass.EXPANDED;
            }
            throw new IllegalArgumentException(("Height must be positive, received " + f).toString());
        }

        private Companion() {
        }
    }
}
