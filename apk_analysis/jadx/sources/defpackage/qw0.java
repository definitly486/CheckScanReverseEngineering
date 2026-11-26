package defpackage;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class qw0<Data> implements nc5<byte[], Data> {
    public final b<Data> a;

    public static class a implements oc5<byte[], ByteBuffer> {

        /* JADX INFO: renamed from: qw0$a$a, reason: collision with other inner class name */
        public class C0321a implements b<ByteBuffer> {
            @Override // qw0.b
            public final Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            @Override // qw0.b
            public final ByteBuffer b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // defpackage.oc5
        public final nc5<byte[], ByteBuffer> d(if5 if5Var) {
            return new qw0(new C0321a());
        }
    }

    public interface b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    public static class c<Data> implements s82<Data> {
        public final byte[] b;
        public final b<Data> c;

        public c(byte[] bArr, b<Data> bVar) {
            this.b = bArr;
            this.c = bVar;
        }

        @Override // defpackage.s82
        public final Class<Data> a() {
            return this.c.a();
        }

        @Override // defpackage.s82
        public final void b() {
        }

        @Override // defpackage.s82
        public final y82 c() {
            return y82.LOCAL;
        }

        @Override // defpackage.s82
        public final void cancel() {
        }

        @Override // defpackage.s82
        public final void f(jg6 jg6Var, s82.a<? super Data> aVar) {
            aVar.d(this.c.b(this.b));
        }
    }

    public static class d implements oc5<byte[], InputStream> {

        public class a implements b<InputStream> {
            @Override // qw0.b
            public final Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // qw0.b
            public final InputStream b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // defpackage.oc5
        public final nc5<byte[], InputStream> d(if5 if5Var) {
            return new qw0(new a());
        }
    }

    public qw0(b<Data> bVar) {
        this.a = bVar;
    }

    @Override // defpackage.nc5
    public final nc5.a a(byte[] bArr, int i, int i2, xz5 xz5Var) {
        byte[] bArr2 = bArr;
        return new nc5.a(new oq5(bArr2), new c(bArr2, this.a));
    }

    @Override // defpackage.nc5
    public final boolean b(byte[] bArr) {
        return true;
    }
}
