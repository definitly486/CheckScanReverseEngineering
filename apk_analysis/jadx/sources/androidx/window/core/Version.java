package androidx.window.core;

import defpackage.cl4;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.l2;
import defpackage.or2;
import defpackage.ta8;
import java.math.BigInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class Version implements Comparable<Version> {
    private static final Version CURRENT;
    public static final Companion Companion = new Companion(null);
    private static final Version UNKNOWN = new Version(0, 0, 0, "");
    private static final Version VERSION_0_1 = new Version(0, 1, 0, "");
    private static final Version VERSION_1_0;
    private static final String VERSION_PATTERN_STRING = "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?";
    private final cl4 bigInteger$delegate;
    private final String description;
    private final int major;
    private final int minor;
    private final int patch;

    static {
        Version version = new Version(1, 0, 0, "");
        VERSION_1_0 = version;
        CURRENT = version;
    }

    private Version(int i, int i2, int i3, String str) {
        this.major = i;
        this.minor = i2;
        this.patch = i3;
        this.description = str;
        this.bigInteger$delegate = new fh8(new or2(this, 5));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BigInteger bigInteger_delegate$lambda$0(Version version) {
        return BigInteger.valueOf(version.major).shiftLeft(32).or(BigInteger.valueOf(version.minor)).shiftLeft(32).or(BigInteger.valueOf(version.patch));
    }

    private final BigInteger getBigInteger() {
        Object value = this.bigInteger$delegate.getValue();
        value.getClass();
        return (BigInteger) value;
    }

    public static final Version parse(String str) {
        return Companion.parse(str);
    }

    @Override // java.lang.Comparable
    public int compareTo(Version version) {
        version.getClass();
        return getBigInteger().compareTo(version.getBigInteger());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return this.major == version.major && this.minor == version.minor && this.patch == version.patch;
    }

    public final String getDescription() {
        return this.description;
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
        return ((((527 + this.major) * 31) + this.minor) * 31) + this.patch;
    }

    public String toString() {
        String str;
        if (ta8.M(this.description)) {
            str = "";
        } else {
            str = "-" + this.description;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.major);
        sb.append('.');
        sb.append(this.minor);
        sb.append('.');
        return l2.e(sb, str, this.patch);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Version getCURRENT() {
            return Version.CURRENT;
        }

        public final Version getUNKNOWN() {
            return Version.UNKNOWN;
        }

        public final Version getVERSION_0_1() {
            return Version.VERSION_0_1;
        }

        public final Version getVERSION_1_0() {
            return Version.VERSION_1_0;
        }

        public final Version parse(String str) {
            String strGroup;
            if (str != null && !ta8.M(str)) {
                Matcher matcher = Pattern.compile(Version.VERSION_PATTERN_STRING).matcher(str);
                if (matcher.matches() && (strGroup = matcher.group(1)) != null) {
                    int i = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    if (strGroup2 != null) {
                        int i2 = Integer.parseInt(strGroup2);
                        String strGroup3 = matcher.group(3);
                        if (strGroup3 != null) {
                            int i3 = Integer.parseInt(strGroup3);
                            String strGroup4 = matcher.group(4) != null ? matcher.group(4) : "";
                            strGroup4.getClass();
                            return new Version(i, i2, i3, strGroup4, null);
                        }
                    }
                }
            }
            return null;
        }

        private Companion() {
        }
    }

    public /* synthetic */ Version(int i, int i2, int i3, String str, jh2 jh2Var) {
        this(i, i2, i3, str);
    }
}
