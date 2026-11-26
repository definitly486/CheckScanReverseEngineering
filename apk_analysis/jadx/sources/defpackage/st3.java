package defpackage;

import java.io.Closeable;

/* JADX INFO: loaded from: classes5.dex */
public final class st3 implements Closeable {
    public int b;
    public int c;
    public boolean d;

    public class a {
        public final int a() {
            throw null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b HEADER;
        public static final b HEADER_COMMENT;
        public static final b HEADER_CRC;
        public static final b HEADER_EXTRA;
        public static final b HEADER_EXTRA_LEN;
        public static final b HEADER_NAME;
        public static final b INFLATER_NEEDS_INPUT;
        public static final b INFLATING;
        public static final b INITIALIZE_INFLATER;
        public static final b TRAILER;

        static {
            b bVar = new b("HEADER", 0);
            HEADER = bVar;
            b bVar2 = new b("HEADER_EXTRA_LEN", 1);
            HEADER_EXTRA_LEN = bVar2;
            b bVar3 = new b("HEADER_EXTRA", 2);
            HEADER_EXTRA = bVar3;
            b bVar4 = new b("HEADER_NAME", 3);
            HEADER_NAME = bVar4;
            b bVar5 = new b("HEADER_COMMENT", 4);
            HEADER_COMMENT = bVar5;
            b bVar6 = new b("HEADER_CRC", 5);
            HEADER_CRC = bVar6;
            b bVar7 = new b("INITIALIZE_INFLATER", 6);
            INITIALIZE_INFLATER = bVar7;
            b bVar8 = new b("INFLATING", 7);
            INFLATING = bVar8;
            b bVar9 = new b("INFLATER_NEEDS_INPUT", 8);
            INFLATER_NEEDS_INPUT = bVar9;
            b bVar10 = new b("TRAILER", 9);
            TRAILER = bVar10;
            $VALUES = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, bVar9, bVar10};
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

    public final int a(byte[] bArr, int i, int i2) {
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }
}
