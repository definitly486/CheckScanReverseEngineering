package androidx.compose.runtime.tooling;

/* JADX INFO: loaded from: classes2.dex */
public final class LocationSourceInformation {
    public static final int $stable = 0;
    private final boolean isRepeatable;
    private final int length;
    private final int lineNumber;
    private final int offset;

    public LocationSourceInformation(int i, int i2, int i3, boolean z) {
        this.lineNumber = i;
        this.offset = i2;
        this.length = i3;
        this.isRepeatable = z;
    }

    public final int getLength() {
        return this.length;
    }

    public final int getLineNumber() {
        return this.lineNumber;
    }

    public final int getOffset() {
        return this.offset;
    }

    public final boolean isRepeatable() {
        return this.isRepeatable;
    }
}
