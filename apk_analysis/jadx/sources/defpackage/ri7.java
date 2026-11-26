package defpackage;

import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public final class ri7 {
    public static final ri7 c = new ri7(null, new String());
    public final File a;
    public final String b;

    public ri7(File file, String str) {
        this.a = file;
        this.b = str;
    }

    public static ri7 a(ri7 ri7Var, File file, String str, int i) {
        if ((i & 1) != 0) {
            file = ri7Var.a;
        }
        if ((i & 2) != 0) {
            str = ri7Var.b;
        }
        ri7Var.getClass();
        return new ri7(file, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ri7)) {
            return false;
        }
        ri7 ri7Var = (ri7) obj;
        return aa4.e(this.a, ri7Var.a) && this.b.equals(ri7Var.b);
    }

    public final int hashCode() {
        File file = this.a;
        return this.b.hashCode() + ((file == null ? 0 : file.hashCode()) * 31);
    }

    public final String toString() {
        return "ScreenshotData(file=" + this.a + ", name=" + this.b + ")";
    }
}
