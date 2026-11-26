package androidx.paging;

import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class LoadState {
    private final boolean endOfPaginationReached;

    public static final class Error extends LoadState {
        private final Throwable error;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(Throwable th) {
            super(false, null);
            th.getClass();
            this.error = th;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Error)) {
                return false;
            }
            Error error = (Error) obj;
            return getEndOfPaginationReached() == error.getEndOfPaginationReached() && aa4.e(this.error, error.error);
        }

        public final Throwable getError() {
            return this.error;
        }

        public int hashCode() {
            return this.error.hashCode() + Boolean.hashCode(getEndOfPaginationReached());
        }

        public String toString() {
            return "Error(endOfPaginationReached=" + getEndOfPaginationReached() + ", error=" + this.error + ')';
        }
    }

    public static final class Loading extends LoadState {
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(false, null);
        }

        public boolean equals(Object obj) {
            return (obj instanceof Loading) && getEndOfPaginationReached() == ((Loading) obj).getEndOfPaginationReached();
        }

        public int hashCode() {
            return Boolean.hashCode(getEndOfPaginationReached());
        }

        public String toString() {
            return "Loading(endOfPaginationReached=" + getEndOfPaginationReached() + ')';
        }
    }

    private LoadState(boolean z) {
        this.endOfPaginationReached = z;
    }

    public final boolean getEndOfPaginationReached() {
        return this.endOfPaginationReached;
    }

    public static final class NotLoading extends LoadState {
        public static final Companion Companion = new Companion(null);
        private static final NotLoading Complete = new NotLoading(true);
        private static final NotLoading Incomplete = new NotLoading(false);

        public NotLoading(boolean z) {
            super(z, null);
        }

        public boolean equals(Object obj) {
            return (obj instanceof NotLoading) && getEndOfPaginationReached() == ((NotLoading) obj).getEndOfPaginationReached();
        }

        public int hashCode() {
            return Boolean.hashCode(getEndOfPaginationReached());
        }

        public String toString() {
            return "NotLoading(endOfPaginationReached=" + getEndOfPaginationReached() + ')';
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final NotLoading getComplete$paging_common() {
                return NotLoading.Complete;
            }

            public final NotLoading getIncomplete$paging_common() {
                return NotLoading.Incomplete;
            }

            private Companion() {
            }
        }
    }

    public /* synthetic */ LoadState(boolean z, jh2 jh2Var) {
        this(z);
    }
}
