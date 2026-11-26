package androidx.compose.ui.text.input;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.xp;

/* JADX INFO: loaded from: classes2.dex */
public final class PlatformImeOptions {
    public static final int $stable = 0;
    private final String privateImeOptions;

    public /* synthetic */ PlatformImeOptions(String str, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PlatformImeOptions) && aa4.e(this.privateImeOptions, ((PlatformImeOptions) obj).privateImeOptions);
    }

    public final String getPrivateImeOptions() {
        return this.privateImeOptions;
    }

    public int hashCode() {
        String str = this.privateImeOptions;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return xp.e(new StringBuilder("PlatformImeOptions(privateImeOptions="), this.privateImeOptions, ')');
    }

    public PlatformImeOptions(String str) {
        this.privateImeOptions = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlatformImeOptions() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
