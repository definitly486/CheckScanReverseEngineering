package yads;

import defpackage.rs2;
import defpackage.up7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class ly4 {
    public static final ky4 Companion = new ky4();
    public static final defpackage.cl4[] b = {defpackage.nm4.a(defpackage.po4.PUBLICATION, new defpackage.tc4(5))};
    public final List a;

    public ly4(int i, List list) {
        if (1 == (i & 1)) {
            this.a = list;
        } else {
            defpackage.r96.f(jy4.b, i, 1);
            throw null;
        }
    }

    public static final /* synthetic */ defpackage.df4 a() {
        return new defpackage.mr(oy4.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ly4) && defpackage.aa4.e(this.a, ((ly4) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("PrefetchedMediationData(mediationPrefetchAdapters=", this.a, ")");
    }

    public ly4(List list) {
        this.a = list;
    }
}
