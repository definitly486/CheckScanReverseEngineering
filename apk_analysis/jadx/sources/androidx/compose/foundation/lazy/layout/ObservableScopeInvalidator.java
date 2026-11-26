package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class ObservableScopeInvalidator {
    private final MutableState<j59> state;

    private /* synthetic */ ObservableScopeInvalidator(MutableState mutableState) {
        this.state = mutableState;
    }

    /* JADX INFO: renamed from: attachToScope-impl, reason: not valid java name */
    public static final void m2232attachToScopeimpl(MutableState<j59> mutableState) {
        mutableState.getValue();
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ObservableScopeInvalidator m2233boximpl(MutableState mutableState) {
        return new ObservableScopeInvalidator(mutableState);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static MutableState<j59> m2234constructorimpl(MutableState<j59> mutableState) {
        return mutableState;
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ MutableState m2235constructorimpl$default(MutableState mutableState, int i, jh2 jh2Var) {
        if ((i & 1) != 0) {
            mutableState = SnapshotStateKt.mutableStateOf(j59.a, SnapshotStateKt.neverEqualPolicy());
        }
        return m2234constructorimpl(mutableState);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2236equalsimpl(MutableState<j59> mutableState, Object obj) {
        return (obj instanceof ObservableScopeInvalidator) && aa4.e(mutableState, ((ObservableScopeInvalidator) obj).m2241unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2237equalsimpl0(MutableState<j59> mutableState, MutableState<j59> mutableState2) {
        return aa4.e(mutableState, mutableState2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2238hashCodeimpl(MutableState<j59> mutableState) {
        return mutableState.hashCode();
    }

    /* JADX INFO: renamed from: invalidateScope-impl, reason: not valid java name */
    public static final void m2239invalidateScopeimpl(MutableState<j59> mutableState) {
        mutableState.setValue(j59.a);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2240toStringimpl(MutableState<j59> mutableState) {
        return "ObservableScopeInvalidator(state=" + mutableState + ')';
    }

    public boolean equals(Object obj) {
        return m2236equalsimpl(this.state, obj);
    }

    public int hashCode() {
        return m2238hashCodeimpl(this.state);
    }

    public String toString() {
        return m2240toStringimpl(this.state);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ MutableState m2241unboximpl() {
        return this.state;
    }
}
