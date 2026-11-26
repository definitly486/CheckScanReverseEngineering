package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class jh6 {
    public final ArrayList a;

    public jh6(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof jh6) && defpackage.aa4.e(this.a, ((jh6) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ViewableImpression(viewableUrls=" + this.a + ")";
    }
}
