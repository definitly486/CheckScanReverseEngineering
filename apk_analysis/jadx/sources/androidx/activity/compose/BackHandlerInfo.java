package androidx.activity.compose;

import androidx.navigationevent.NavigationEventInfo;
import defpackage.aa4;
import defpackage.lg;

/* JADX INFO: loaded from: classes.dex */
final class BackHandlerInfo extends NavigationEventInfo {
    private final long compositeKey;
    private final Object owner;

    public BackHandlerInfo(Object obj, long j) {
        this.owner = obj;
        this.compositeKey = j;
    }

    public static /* synthetic */ BackHandlerInfo copy$default(BackHandlerInfo backHandlerInfo, Object obj, long j, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = backHandlerInfo.owner;
        }
        if ((i & 2) != 0) {
            j = backHandlerInfo.compositeKey;
        }
        return backHandlerInfo.copy(obj, j);
    }

    public final Object component1() {
        return this.owner;
    }

    public final long component2() {
        return this.compositeKey;
    }

    public final BackHandlerInfo copy(Object obj, long j) {
        return new BackHandlerInfo(obj, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackHandlerInfo)) {
            return false;
        }
        BackHandlerInfo backHandlerInfo = (BackHandlerInfo) obj;
        return aa4.e(this.owner, backHandlerInfo.owner) && this.compositeKey == backHandlerInfo.compositeKey;
    }

    public final long getCompositeKey() {
        return this.compositeKey;
    }

    public final Object getOwner() {
        return this.owner;
    }

    public int hashCode() {
        return Long.hashCode(this.compositeKey) + (this.owner.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BackHandlerInfo(owner=");
        sb.append(this.owner);
        sb.append(", compositeKey=");
        return lg.f(sb, this.compositeKey, ')');
    }
}
