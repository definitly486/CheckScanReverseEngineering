package androidx.compose.runtime.tooling;

import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
public final class ObjectLocation {
    public static final int $stable = 0;
    private final Integer dataOffset;
    private final int group;

    public ObjectLocation(int i, Integer num) {
        this.group = i;
        this.dataOffset = num;
    }

    public static /* synthetic */ ObjectLocation copy$default(ObjectLocation objectLocation, int i, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = objectLocation.group;
        }
        if ((i2 & 2) != 0) {
            num = objectLocation.dataOffset;
        }
        return objectLocation.copy(i, num);
    }

    public final int component1() {
        return this.group;
    }

    public final Integer component2() {
        return this.dataOffset;
    }

    public final ObjectLocation copy(int i, Integer num) {
        return new ObjectLocation(i, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ObjectLocation)) {
            return false;
        }
        ObjectLocation objectLocation = (ObjectLocation) obj;
        return this.group == objectLocation.group && aa4.e(this.dataOffset, objectLocation.dataOffset);
    }

    public final Integer getDataOffset() {
        return this.dataOffset;
    }

    public final int getGroup() {
        return this.group;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.group) * 31;
        Integer num = this.dataOffset;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "ObjectLocation(group=" + this.group + ", dataOffset=" + this.dataOffset + ')';
    }
}
