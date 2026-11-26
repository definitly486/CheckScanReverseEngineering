package defpackage;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public interface bn1 extends qu1, xd2 {

    public static final class a implements bn1 {
        @Override // defpackage.qu1
        public final OutputStream a(ea5.a aVar) {
            return new GZIPOutputStream(aVar);
        }

        @Override // defpackage.xd2
        public final InputStream b(ey6.a aVar) {
            return new GZIPInputStream(aVar);
        }

        @Override // defpackage.qu1, defpackage.xd2
        public final String getMessageEncoding() {
            return "gzip";
        }
    }

    public static final class b implements bn1 {
        public static final b a = new b();

        @Override // defpackage.qu1
        public final OutputStream a(ea5.a aVar) {
            return aVar;
        }

        @Override // defpackage.xd2
        public final InputStream b(ey6.a aVar) {
            return aVar;
        }

        @Override // defpackage.qu1, defpackage.xd2
        public final String getMessageEncoding() {
            return "identity";
        }
    }
}
