package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public class BooleanResult implements Result {
    public final Status b;
    public final boolean c;

    public BooleanResult(Status status, boolean z) {
        this.b = (Status) Preconditions.checkNotNull(status, "Status must not be null");
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BooleanResult)) {
            return false;
        }
        BooleanResult booleanResult = (BooleanResult) obj;
        return this.b.equals(booleanResult.b) && this.c == booleanResult.c;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.b;
    }

    public boolean getValue() {
        return this.c;
    }

    public final int hashCode() {
        return ((this.b.hashCode() + 527) * 31) + (this.c ? 1 : 0);
    }
}
