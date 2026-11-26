package androidx.window.embedding;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.sg;

/* JADX INFO: loaded from: classes3.dex */
public final class EmbeddingConfiguration {
    private final DimAreaBehavior dimAreaBehavior;
    private final boolean isAutoSaveEmbeddingState;

    public static final class Builder {
        private DimAreaBehavior mDimAreaBehavior = DimAreaBehavior.UNDEFINED;
        private boolean mSaveEmbeddingState;

        public final EmbeddingConfiguration build() {
            return new EmbeddingConfiguration(this.mDimAreaBehavior, this.mSaveEmbeddingState, null);
        }

        public final Builder setAutoSaveEmbeddingState(boolean z) {
            this.mSaveEmbeddingState = z;
            return this;
        }

        public final Builder setDimAreaBehavior(DimAreaBehavior dimAreaBehavior) {
            dimAreaBehavior.getClass();
            this.mDimAreaBehavior = dimAreaBehavior;
            return this;
        }
    }

    public /* synthetic */ EmbeddingConfiguration(DimAreaBehavior dimAreaBehavior, boolean z, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? DimAreaBehavior.UNDEFINED : dimAreaBehavior, (i & 2) != 0 ? false : z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EmbeddingConfiguration)) {
            return false;
        }
        EmbeddingConfiguration embeddingConfiguration = (EmbeddingConfiguration) obj;
        return aa4.e(this.dimAreaBehavior, embeddingConfiguration.dimAreaBehavior) && this.isAutoSaveEmbeddingState == embeddingConfiguration.isAutoSaveEmbeddingState;
    }

    public final DimAreaBehavior getDimAreaBehavior() {
        return this.dimAreaBehavior;
    }

    public int hashCode() {
        return Boolean.hashCode(this.isAutoSaveEmbeddingState) + (this.dimAreaBehavior.hashCode() * 31);
    }

    public final boolean isAutoSaveEmbeddingState() {
        return this.isAutoSaveEmbeddingState;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("EmbeddingConfiguration{dimArea=");
        sb.append(this.dimAreaBehavior);
        sb.append(", saveState=");
        return sg.d(sb, this.isAutoSaveEmbeddingState, '}');
    }

    public static final class DimAreaBehavior {
        private final int value;
        public static final Companion Companion = new Companion(null);
        public static final DimAreaBehavior UNDEFINED = new DimAreaBehavior(0);
        public static final DimAreaBehavior ON_ACTIVITY_STACK = new DimAreaBehavior(1);
        public static final DimAreaBehavior ON_TASK = new DimAreaBehavior(2);

        private DimAreaBehavior(int i) {
            this.value = i;
        }

        public final int getValue$window_release() {
            return this.value;
        }

        public String toString() {
            String str;
            int i = this.value;
            if (i == 0) {
                str = "UNDEFINED";
            } else if (i != 1) {
                str = i != 2 ? "UNKNOWN" : "ON_TASK";
            } else {
                str = "ON_ACTIVITY_STACK";
            }
            return "DimAreaBehavior=".concat(str);
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            private Companion() {
            }
        }
    }

    private EmbeddingConfiguration(DimAreaBehavior dimAreaBehavior, boolean z) {
        this.dimAreaBehavior = dimAreaBehavior;
        this.isAutoSaveEmbeddingState = z;
    }

    public /* synthetic */ EmbeddingConfiguration(DimAreaBehavior dimAreaBehavior, boolean z, jh2 jh2Var) {
        this(dimAreaBehavior, z);
    }
}
