package androidx.camera.core.impl;

import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_StateObservable_ErrorWrapper extends StateObservable.ErrorWrapper {
    private final Throwable error;

    public AutoValue_StateObservable_ErrorWrapper(Throwable th) {
        if (th != null) {
            this.error = th;
        } else {
            o2.d("Null error");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof StateObservable.ErrorWrapper) {
            return this.error.equals(((StateObservable.ErrorWrapper) obj).getError());
        }
        return false;
    }

    @Override // androidx.camera.core.impl.StateObservable.ErrorWrapper
    public Throwable getError() {
        return this.error;
    }

    public int hashCode() {
        return this.error.hashCode() ^ 1000003;
    }

    public String toString() {
        return "ErrorWrapper{error=" + this.error + "}";
    }
}
