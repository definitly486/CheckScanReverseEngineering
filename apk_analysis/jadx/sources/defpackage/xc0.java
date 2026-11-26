package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public class xc0 {
    public static final a d;
    public final boolean a;
    public final boolean b;
    public final b c;

    public static final class a extends xc0 {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ g03 $ENTRIES;
        private static final /* synthetic */ b[] $VALUES;
        public static final b ABSENT;
        public static final b ABSENT_OPTIONAL;
        public static final b PRESENT;
        public static final b PRESENT_OPTIONAL;

        static {
            b bVar = new b("PRESENT", 0);
            PRESENT = bVar;
            b bVar2 = new b("ABSENT", 1);
            ABSENT = bVar2;
            b bVar3 = new b("PRESENT_OPTIONAL", 2);
            PRESENT_OPTIONAL = bVar3;
            b bVar4 = new b("ABSENT_OPTIONAL", 3);
            ABSENT_OPTIONAL = bVar4;
            b[] bVarArr = {bVar, bVar2, bVar3, bVar4};
            $VALUES = bVarArr;
            $ENTRIES = new i03(bVarArr);
        }

        public b() {
            throw null;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    static {
        b bVar = b.PRESENT;
        d = new a(false, false, -1, bVar);
        new xc0(true, false, -1, bVar);
        new xc0(false, true, 76, bVar);
        new xc0(false, true, 64, bVar);
    }

    public xc0(boolean z, boolean z2, int i, b bVar) {
        this.a = z;
        this.b = z2;
        this.c = bVar;
        if (z && z2) {
            fg.c("Failed requirement.");
            throw null;
        }
    }
}
