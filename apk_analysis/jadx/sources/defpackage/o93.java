package defpackage;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class o93<Data> implements nc5<File, Data> {
    public final d<Data> a;

    public static class a<Data> implements oc5<File, Data> {
        public final d<Data> a;

        public a(d<Data> dVar) {
            this.a = dVar;
        }

        @Override // defpackage.oc5
        public final nc5<File, Data> d(if5 if5Var) {
            return new o93(this.a);
        }
    }

    public static class b extends a<ParcelFileDescriptor> {
    }

    public static final class c<Data> implements s82<Data> {
        public final File b;
        public final d<Data> c;
        public Data d;

        public c(File file, d<Data> dVar) {
            this.b = file;
            this.c = dVar;
        }

        @Override // defpackage.s82
        public final Class<Data> a() {
            return this.c.a();
        }

        @Override // defpackage.s82
        public final void b() {
            Data data = this.d;
            if (data != null) {
                try {
                    this.c.b(data);
                } catch (IOException unused) {
                }
            }
        }

        @Override // defpackage.s82
        public final y82 c() {
            return y82.LOCAL;
        }

        @Override // defpackage.s82
        public final void cancel() {
        }

        /* JADX WARN: Type inference failed for: r2v5, types: [Data, java.lang.Object] */
        @Override // defpackage.s82
        public final void f(jg6 jg6Var, s82.a<? super Data> aVar) {
            try {
                Data dataC = this.c.c(this.b);
                this.d = dataC;
                aVar.d(dataC);
            } catch (FileNotFoundException e) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e);
                }
                aVar.e(e);
            }
        }
    }

    public interface d<Data> {
        Class<Data> a();

        void b(Data data);

        Data c(File file);
    }

    public static class e extends a<InputStream> {
    }

    public o93(d<Data> dVar) {
        this.a = dVar;
    }

    @Override // defpackage.nc5
    public final nc5.a a(File file, int i, int i2, xz5 xz5Var) {
        File file2 = file;
        return new nc5.a(new oq5(file2), new c(file2, this.a));
    }

    @Override // defpackage.nc5
    public final boolean b(File file) {
        return true;
    }
}
