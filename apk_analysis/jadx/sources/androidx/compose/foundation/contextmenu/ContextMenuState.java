package androidx.compose.foundation.contextmenu;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class ContextMenuState {
    public static final int $stable = 0;
    private final MutableState status$delegate;

    public ContextMenuState(Status status) {
        this.status$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(status, null, 2, null);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ContextMenuState) {
            return aa4.e(((ContextMenuState) obj).getStatus(), getStatus());
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Status getStatus() {
        return (Status) this.status$delegate.getValue();
    }

    public int hashCode() {
        return getStatus().hashCode();
    }

    public final void setStatus(Status status) {
        this.status$delegate.setValue(status);
    }

    public String toString() {
        return "ContextMenuState(status=" + getStatus() + ')';
    }

    public static abstract class Status {
        public static final int $stable = 0;

        public static final class Closed extends Status {
            public static final int $stable = 0;
            public static final Closed INSTANCE = new Closed();

            private Closed() {
                super(null);
            }

            public String toString() {
                return "Closed";
            }
        }

        public /* synthetic */ Status(jh2 jh2Var) {
            this();
        }

        private Status() {
        }

        public static final class Open extends Status {
            public static final int $stable = 0;
            private final long offset;

            private Open(long j) {
                super(null);
                this.offset = j;
                if ((j & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                    return;
                }
                androidx.compose.foundation.internal.InlineClassHelperKt.throwIllegalStateException("ContextMenuState.Status should never be open with an unspecified offset. Use ContextMenuState.Status.Closed instead.");
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof Open) {
                    return Offset.m5984equalsimpl0(this.offset, ((Open) obj).offset);
                }
                return false;
            }

            /* JADX INFO: renamed from: getOffset-F1C5BW0, reason: not valid java name */
            public final long m1418getOffsetF1C5BW0() {
                return this.offset;
            }

            public int hashCode() {
                return Offset.m5989hashCodeimpl(this.offset);
            }

            public String toString() {
                return "Open(offset=" + ((Object) Offset.m5995toStringimpl(this.offset)) + ')';
            }

            public /* synthetic */ Open(long j, jh2 jh2Var) {
                this(j);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContextMenuState() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ ContextMenuState(Status status, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Status.Closed.INSTANCE : status);
    }
}
