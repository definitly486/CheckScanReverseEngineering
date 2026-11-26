package androidx.compose.material3;

import androidx.compose.ui.Alignment;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TextFieldLabelPosition {
    public static final int $stable = 0;

    public /* synthetic */ TextFieldLabelPosition(jh2 jh2Var) {
        this();
    }

    private TextFieldLabelPosition() {
    }

    public static final class Above extends TextFieldLabelPosition {
        public static final int $stable = 0;
        private final Alignment.Horizontal alignment;

        public /* synthetic */ Above(Alignment.Horizontal horizontal, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? Alignment.Companion.getStart() : horizontal);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Above) {
                return aa4.e(this.alignment, ((Above) obj).alignment);
            }
            return false;
        }

        public final Alignment.Horizontal getAlignment() {
            return this.alignment;
        }

        public int hashCode() {
            return this.alignment.hashCode();
        }

        public String toString() {
            return "Above(alignment=" + this.alignment + ')';
        }

        public Above(Alignment.Horizontal horizontal) {
            super(null);
            this.alignment = horizontal;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Above() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    public static final class Attached extends TextFieldLabelPosition {
        public static final int $stable = 0;
        private final boolean alwaysMinimize;
        private final Alignment.Horizontal expandedAlignment;
        private final Alignment.Horizontal minimizedAlignment;

        public /* synthetic */ Attached(boolean z, Alignment.Horizontal horizontal, Alignment.Horizontal horizontal2, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? Alignment.Companion.getStart() : horizontal, (i & 4) != 0 ? Alignment.Companion.getStart() : horizontal2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Attached)) {
                return false;
            }
            Attached attached = (Attached) obj;
            return this.alwaysMinimize == attached.alwaysMinimize && aa4.e(this.minimizedAlignment, attached.minimizedAlignment) && aa4.e(this.expandedAlignment, attached.expandedAlignment);
        }

        public final boolean getAlwaysMinimize() {
            return this.alwaysMinimize;
        }

        public final Alignment.Horizontal getExpandedAlignment() {
            return this.expandedAlignment;
        }

        public final Alignment.Horizontal getMinimizedAlignment() {
            return this.minimizedAlignment;
        }

        public int hashCode() {
            return this.expandedAlignment.hashCode() + ((this.minimizedAlignment.hashCode() + (Boolean.hashCode(this.alwaysMinimize) * 31)) * 31);
        }

        public String toString() {
            return "Attached(alwaysMinimize=" + this.alwaysMinimize + ", minimizedAlignment=" + this.minimizedAlignment + ", expandedAlignment=" + this.expandedAlignment + ')';
        }

        public Attached() {
            this(false, null, null, 7, null);
        }

        public Attached(boolean z, Alignment.Horizontal horizontal, Alignment.Horizontal horizontal2) {
            super(null);
            this.alwaysMinimize = z;
            this.minimizedAlignment = horizontal;
            this.expandedAlignment = horizontal2;
        }
    }
}
