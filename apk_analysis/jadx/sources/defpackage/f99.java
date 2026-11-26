package defpackage;

import io.grpc.l;
import io.grpc.m;
import java.net.URI;

/* JADX INFO: loaded from: classes5.dex */
public interface f99 {

    public static final class a implements f99 {
        public final a99 a;

        public a(a99 a99Var) {
            a99Var.getClass();
            this.a = a99Var;
        }

        @Override // defpackage.f99
        public final l a(m mVar, l.a aVar) {
            return mVar.a(this.a, aVar);
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            return this.a.equals(((a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return this.a.toString();
        }
    }

    public static final class b implements f99 {
        public final URI a;

        public b(URI uri) {
            uri.getClass();
            this.a = uri;
        }

        @Override // defpackage.f99
        public final l a(m mVar, l.a aVar) {
            return mVar.b(this.a, aVar);
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            return this.a.equals(((b) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return this.a.toString();
        }
    }

    l a(m mVar, l.a aVar);
}
