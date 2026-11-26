package defpackage;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class h94 {
    public final String a;
    public final a b;
    public final long c;
    public final l94 d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a CT_ERROR;
        public static final a CT_INFO;
        public static final a CT_UNKNOWN;
        public static final a CT_WARNING;

        static {
            a aVar = new a("CT_UNKNOWN", 0);
            CT_UNKNOWN = aVar;
            a aVar2 = new a("CT_INFO", 1);
            CT_INFO = aVar2;
            a aVar3 = new a("CT_WARNING", 2);
            CT_WARNING = aVar3;
            a aVar4 = new a("CT_ERROR", 3);
            CT_ERROR = aVar4;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public h94(String str, a aVar, long j, p94 p94Var) {
        this.a = str;
        o8.l(aVar, "severity");
        this.b = aVar;
        this.c = j;
        this.d = p94Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof h94)) {
            return false;
        }
        h94 h94Var = (h94) obj;
        return Objects.equals(this.a, h94Var.a) && Objects.equals(this.b, h94Var.b) && this.c == h94Var.c && Objects.equals(this.d, h94Var.d);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, Long.valueOf(this.c), null, this.d);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(this.a, "description");
        aVarB.d(this.b, "severity");
        aVarB.b(this.c, "timestampNanos");
        aVarB.d(null, "channelRef");
        aVarB.d(this.d, "subchannelRef");
        return aVarB.toString();
    }
}
