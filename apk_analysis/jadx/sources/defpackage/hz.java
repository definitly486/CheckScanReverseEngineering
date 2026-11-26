package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class hz extends s29 {
    public final String a;
    public final byte[] b;
    public final ig6 c;

    public static final class a extends s29.a {
        public String a;
        public byte[] b;
        public ig6 c;

        public final hz a() {
            String strConcat = this.a == null ? " backendName" : "";
            if (this.c == null) {
                strConcat = strConcat.concat(" priority");
            }
            if (strConcat.isEmpty()) {
                return new hz(this.a, this.b, this.c);
            }
            ah.f("Missing required properties:".concat(strConcat));
            return null;
        }

        public final a b(String str) {
            if (str != null) {
                this.a = str;
                return this;
            }
            o2.d("Null backendName");
            return null;
        }
    }

    public hz(String str, byte[] bArr, ig6 ig6Var) {
        this.a = str;
        this.b = bArr;
        this.c = ig6Var;
    }

    @Override // defpackage.s29
    public final String b() {
        return this.a;
    }

    @Override // defpackage.s29
    public final byte[] c() {
        return this.b;
    }

    @Override // defpackage.s29
    public final ig6 d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s29)) {
            return false;
        }
        s29 s29Var = (s29) obj;
        if (this.a.equals(s29Var.b())) {
            return Arrays.equals(this.b, s29Var instanceof hz ? ((hz) s29Var).b : s29Var.c()) && this.c.equals(s29Var.d());
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b)) * 1000003);
    }
}
