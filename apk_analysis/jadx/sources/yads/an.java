package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class an {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && an.class == obj.getClass()) {
            if (Float.compare(0.0f, 0.0f) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(0.0f) + 16337;
    }
}
