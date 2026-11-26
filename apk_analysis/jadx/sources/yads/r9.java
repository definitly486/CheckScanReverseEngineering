package yads;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public enum r9 {
    HTML(TJAdUnitConstants.String.HTML),
    NATIVE("native"),
    JAVASCRIPT("javascript");

    public final String b;

    r9(String str) {
        this.b = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.b;
    }
}
