package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public interface qn2 {

    public static final class a {
        public final ke4 a = w93.b;
        public final double b = 0.02d;
        public final long c = 10485760;
        public final long d = 262144000;
        public final gx2 e = gx2.b;
    }

    public interface b {
        qy6.b a();

        void abort();
    }

    public interface c extends AutoCloseable {
        j46 getData();

        j46 getMetadata();

        qy6.a l0();
    }

    qy6.a a(String str);

    qy6.b b(String str);

    w93 getFileSystem();
}
