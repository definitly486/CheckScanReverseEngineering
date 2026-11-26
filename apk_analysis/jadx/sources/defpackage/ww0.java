package defpackage;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class ww0 implements nc5<File, ByteBuffer> {

    public static final class a implements s82<ByteBuffer> {
        public final File b;

        public a(File file) {
            this.b = file;
        }

        @Override // defpackage.s82
        public final Class<ByteBuffer> a() {
            return ByteBuffer.class;
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
        public final void f(jg6 jg6Var, s82.a<? super ByteBuffer> aVar) {
            try {
                aVar.d(ax0.a(this.b));
            } catch (IOException e) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e);
                }
                aVar.e(e);
            }
        }
    }

    public static class b implements oc5<File, ByteBuffer> {
        @Override // defpackage.oc5
        public final nc5<File, ByteBuffer> d(if5 if5Var) {
            return new ww0();
        }
    }

    @Override // defpackage.nc5
    public final nc5.a<ByteBuffer> a(File file, int i, int i2, xz5 xz5Var) {
        File file2 = file;
        return new nc5.a<>(new oq5(file2), new a(file2));
    }

    @Override // defpackage.nc5
    public final boolean b(File file) {
        return true;
    }
}
