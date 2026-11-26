package defpackage;

import java.io.Closeable;
import java.net.SocketAddress;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes5.dex */
public interface fm1 extends Closeable {

    public static final class a {
        public String a;
        public io.grpc.a b;
        public xy3 c;

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b) && Objects.equals(this.c, aVar.c);
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.b, null, this.c);
        }
    }

    ScheduledExecutorService A();

    mw1 d0(SocketAddress socketAddress, a aVar, p94.g gVar);
}
