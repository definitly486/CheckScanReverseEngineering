package yads;

import defpackage.rs2;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class o94 implements p94 {
    public final List a;

    public o94(List list) {
        this.a = list;
    }

    public final List a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o94) && defpackage.aa4.e(this.a, ((o94) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("IncorrectIntegration(causes=", this.a, ")");
    }
}
