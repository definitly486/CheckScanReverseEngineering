package kotlin;

/* JADX INFO: loaded from: classes5.dex */
public final class KotlinVersion implements Comparable<KotlinVersion> {
    public static final int MAX_COMPONENT_VALUE = 255;
    private final int major;
    private final int minor;
    private final int patch;
    private final int version;
    public static final a Companion = new a();
    public static final KotlinVersion CURRENT = new KotlinVersion(2, 3, 20);

    public static final class a {
    }

    public KotlinVersion(int i, int i2, int i3) {
        this.major = i;
        this.minor = i2;
        this.patch = i3;
        this.version = versionOf(i, i2, i3);
    }

    private final int versionOf(int i, int i2, int i3) {
        if (i >= 0 && i < 256 && i2 >= 0 && i2 < 256 && i3 >= 0 && i3 < 256) {
            return (i << 16) + (i2 << 8) + i3;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i + '.' + i2 + '.' + i3).toString());
    }

    @Override // java.lang.Comparable
    public int compareTo(KotlinVersion kotlinVersion) {
        kotlinVersion.getClass();
        return this.version - kotlinVersion.version;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        KotlinVersion kotlinVersion = obj instanceof KotlinVersion ? (KotlinVersion) obj : null;
        return kotlinVersion != null && this.version == kotlinVersion.version;
    }

    public final int getMajor() {
        return this.major;
    }

    public final int getMinor() {
        return this.minor;
    }

    public final int getPatch() {
        return this.patch;
    }

    public int hashCode() {
        return this.version;
    }

    public final boolean isAtLeast(int i, int i2, int i3) {
        int i4 = this.major;
        if (i4 > i) {
            return true;
        }
        if (i4 != i) {
            return false;
        }
        int i5 = this.minor;
        if (i5 <= i2) {
            return i5 == i2 && this.patch >= i3;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.major);
        sb.append('.');
        sb.append(this.minor);
        sb.append('.');
        sb.append(this.patch);
        return sb.toString();
    }

    public KotlinVersion(int i, int i2) {
        this(i, i2, 0);
    }

    public final boolean isAtLeast(int i, int i2) {
        int i3 = this.major;
        if (i3 <= i) {
            return i3 == i && this.minor >= i2;
        }
        return true;
    }
}
