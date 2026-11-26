package defpackage;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class f92<Model, Data> implements nc5<Model, Data> {
    public final b.a a;

    public static final class a<Data> implements s82<Data> {
        public final String b;
        public final b.a c;
        public ByteArrayInputStream d;

        public a(String str, b.a aVar) {
            this.b = str;
            this.c = aVar;
        }

        @Override // defpackage.s82
        public final Class<Data> a() {
            return InputStream.class;
        }

        @Override // defpackage.s82
        public final void b() {
            try {
                this.d.close();
            } catch (IOException unused) {
            }
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
            try {
                ByteArrayInputStream byteArrayInputStreamA = this.c.a(this.b);
                this.d = byteArrayInputStreamA;
                aVar.d(byteArrayInputStreamA);
            } catch (IllegalArgumentException e) {
                aVar.e(e);
            }
        }
    }

    public static final class b<Model> implements oc5<Model, InputStream> {
        public final a a = new a();

        public class a {
            public final ByteArrayInputStream a(String str) {
                if (!str.startsWith("data:image")) {
                    fg.c("Not a valid image data URL.");
                    return null;
                }
                int iIndexOf = str.indexOf(44);
                if (iIndexOf == -1) {
                    fg.c("Missing comma in data URL.");
                    return null;
                }
                if (str.substring(0, iIndexOf).endsWith(";base64")) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
                }
                fg.c("Not a base64 image data URL.");
                return null;
            }
        }

        @Override // defpackage.oc5
        public final nc5<Model, InputStream> d(if5 if5Var) {
            return new f92(this.a);
        }
    }

    public f92(b.a aVar) {
        this.a = aVar;
    }

    @Override // defpackage.nc5
    public final nc5.a<Data> a(Model model, int i, int i2, xz5 xz5Var) {
        return new nc5.a<>(new oq5(model), new a(model.toString(), this.a));
    }

    @Override // defpackage.nc5
    public final boolean b(Model model) {
        return model.toString().startsWith("data:image");
    }
}
