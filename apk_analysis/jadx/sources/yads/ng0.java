package yads;

import defpackage.ab7;
import defpackage.ca8;
import defpackage.up7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class ng0 {
    public static final mg0 Companion = new mg0();
    public static final defpackage.cl4[] d = {null, null, defpackage.nm4.a(defpackage.po4.PUBLICATION, new ab7(3))};
    public final String a;
    public final boolean b;
    public final List c;

    public ng0(int i, String str, boolean z, List list) {
        if (7 != (i & 7)) {
            defpackage.r96.f(lg0.b, i, 7);
            throw null;
        }
        this.a = str;
        this.b = z;
        this.c = list;
    }

    public static final /* synthetic */ defpackage.df4 a() {
        return new defpackage.mr(ca8.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ng0)) {
            return false;
        }
        ng0 ng0Var = (ng0) obj;
        return defpackage.aa4.e(this.a, ng0Var.a) && this.b == ng0Var.b && defpackage.aa4.e(this.c, ng0Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + m7.a(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return defpackage.bg.e(")", this.c, defpackage.p2.b("DebugPanelSdkData(version=", this.a, ", isIntegratedSuccess=", ", integrationMessages=", this.b));
    }

    public ng0(List list, boolean z) {
        this.a = "8.2.0";
        this.b = z;
        this.c = list;
    }
}
