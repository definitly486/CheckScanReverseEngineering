package defpackage;

import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class cn2 {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public boolean f;

    public final String toString() {
        String str;
        int i = this.d;
        if ((i & 3) == 3) {
            str = "both";
        } else if ((i & 1) == 1) {
            str = "insert";
        } else if ((i & 2) == 2) {
            str = "remove";
        } else {
            str = i == 0 ? "none" : null;
        }
        if (str != null) {
            return String.format(Locale.getDefault(), "[ DiffMeasures type=%s, diffStartPosition=%d, diffInsertLength=%d, diffRemoveLength=%d, cursor: %d ]", str, Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.e));
        }
        j2.c(this.d, "unknown behaviour for diffType ");
        return null;
    }
}
