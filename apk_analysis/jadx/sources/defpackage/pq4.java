package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class pq4 {
    public StringBuilder d;
    public String e;
    public String f;
    public char g;
    public StringBuilder h;
    public b a = b.START_DEFINITION;
    public final StringBuilder b = new StringBuilder();
    public final ArrayList c = new ArrayList();
    public boolean i = false;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.PARAGRAPH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.START_DEFINITION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.LABEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[b.DESTINATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[b.START_TITLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[b.TITLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b DESTINATION;
        public static final b LABEL;
        public static final b PARAGRAPH;
        public static final b START_DEFINITION;
        public static final b START_TITLE;
        public static final b TITLE;

        static {
            b bVar = new b("START_DEFINITION", 0);
            START_DEFINITION = bVar;
            b bVar2 = new b("LABEL", 1);
            LABEL = bVar2;
            b bVar3 = new b("DESTINATION", 2);
            DESTINATION = bVar3;
            b bVar4 = new b("START_TITLE", 3);
            START_TITLE = bVar4;
            b bVar5 = new b("TITLE", 4);
            TITLE = bVar5;
            b bVar6 = new b("PARAGRAPH", 5);
            PARAGRAPH = bVar6;
            $VALUES = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6};
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

    public final void a() {
        if (this.i) {
            String strA = w03.a(this.f);
            StringBuilder sb = this.h;
            String strA2 = sb != null ? w03.a(sb.toString()) : null;
            String str = this.e;
            oq4 oq4Var = new oq4();
            oq4Var.f = str;
            oq4Var.g = strA;
            oq4Var.h = strA2;
            this.c.add(oq4Var);
            this.d = null;
            this.i = false;
            this.e = null;
            this.f = null;
            this.h = null;
        }
    }
}
