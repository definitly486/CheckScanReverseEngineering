package defpackage;

import java.io.Serializable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class mg5 extends y14 implements Serializable {
    public static final /* synthetic */ int p = 0;
    public final int o;

    /* JADX INFO: loaded from: classes3.dex */
    public static final class a extends u1 {
        public long c;
        public long d;
        public int e;

        @Override // defpackage.u1
        public final void m(ByteBuffer byteBuffer) {
            long j = byteBuffer.getLong();
            long j2 = byteBuffer.getLong();
            long jRotateLeft = (Long.rotateLeft(j * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.c;
            this.c = jRotateLeft;
            long jRotateLeft2 = Long.rotateLeft(jRotateLeft, 27);
            long j3 = this.d;
            this.c = ((jRotateLeft2 + j3) * 5) + 1390208809;
            long jRotateLeft3 = (Long.rotateLeft(j2 * 5545529020109919103L, 33) * (-8663945395140668459L)) ^ j3;
            this.d = jRotateLeft3;
            this.d = ((Long.rotateLeft(jRotateLeft3, 31) + this.c) * 5) + 944331445;
            this.e += 16;
        }
    }

    static {
        int i = yu3.a;
    }

    public mg5(int i) {
        this.o = i;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof mg5) && this.o == ((mg5) obj).o;
    }

    public final int hashCode() {
        return this.o ^ mg5.class.hashCode();
    }

    public final String toString() {
        return l2.e(new StringBuilder("Hashing.murmur3_128("), ")", this.o);
    }
}
