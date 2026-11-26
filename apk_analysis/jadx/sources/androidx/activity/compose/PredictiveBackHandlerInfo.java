package androidx.activity.compose;

import androidx.navigationevent.NavigationEventInfo;
import defpackage.aa4;
import defpackage.lg;

/* JADX INFO: loaded from: classes.dex */
final class PredictiveBackHandlerInfo extends NavigationEventInfo {
    private final long compositeKey;
    private final Object owner;

    public PredictiveBackHandlerInfo(Object obj, long j) {
        this.owner = obj;
        this.compositeKey = j;
    }

    public static /* synthetic */ PredictiveBackHandlerInfo copy$default(PredictiveBackHandlerInfo predictiveBackHandlerInfo, Object obj, long j, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = predictiveBackHandlerInfo.owner;
        }
        if ((i & 2) != 0) {
            j = predictiveBackHandlerInfo.compositeKey;
        }
        return predictiveBackHandlerInfo.copy(obj, j);
    }

    public final Object component1() {
        return this.owner;
    }

    public final long component2() {
        return this.compositeKey;
    }

    public final PredictiveBackHandlerInfo copy(Object obj, long j) {
        return new PredictiveBackHandlerInfo(obj, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PredictiveBackHandlerInfo)) {
            return false;
        }
        PredictiveBackHandlerInfo predictiveBackHandlerInfo = (PredictiveBackHandlerInfo) obj;
        return aa4.e(this.owner, predictiveBackHandlerInfo.owner) && this.compositeKey == predictiveBackHandlerInfo.compositeKey;
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
        StringBuilder sb = new StringBuilder("PredictiveBackHandlerInfo(owner=");
        sb.append(this.owner);
        sb.append(", compositeKey=");
        return lg.f(sb, this.compositeKey, ')');
    }
}
