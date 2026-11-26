package defpackage;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class uw0 implements u83 {
    public final ByteBuffer a;
    public final zz5 b;

    public static final class a implements u83.a<ByteBuffer> {
        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            return new uw0((ByteBuffer) obj, zz5Var);
        }
    }

    public uw0(ByteBuffer byteBuffer, zz5 zz5Var) {
        this.a = byteBuffer;
        this.b = zz5Var;
    }

    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) {
        ByteBuffer byteBuffer = this.a;
        return new x48(new a58(new iy6(new vw0(byteBuffer)), this.b.f, new yw0(byteBuffer)), null, z82.MEMORY);
    }
}
