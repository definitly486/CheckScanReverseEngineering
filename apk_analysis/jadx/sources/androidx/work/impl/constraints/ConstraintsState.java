package androidx.work.impl.constraints;

import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ConstraintsState {

    public static final class ConstraintsMet extends ConstraintsState {
        public static final ConstraintsMet INSTANCE = new ConstraintsMet();

        private ConstraintsMet() {
            super(null);
        }
    }

    public static final class ConstraintsNotMet extends ConstraintsState {
        private final int reason;

        public ConstraintsNotMet(int i) {
            super(null);
            this.reason = i;
        }

        public static /* synthetic */ ConstraintsNotMet copy$default(ConstraintsNotMet constraintsNotMet, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = constraintsNotMet.reason;
            }
            return constraintsNotMet.copy(i);
        }

        public final int component1() {
            return this.reason;
        }

        public final ConstraintsNotMet copy(int i) {
            return new ConstraintsNotMet(i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConstraintsNotMet) && this.reason == ((ConstraintsNotMet) obj).reason;
        }

        public final int getReason() {
            return this.reason;
        }

        public int hashCode() {
            return Integer.hashCode(this.reason);
        }

        public String toString() {
            return rg.h(new StringBuilder("ConstraintsNotMet(reason="), this.reason, ')');
        }
    }

    public /* synthetic */ ConstraintsState(jh2 jh2Var) {
        this();
    }

    private ConstraintsState() {
    }
}
