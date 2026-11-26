package defpackage;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class rb8 {
    public static final vv4 b;
    public static final vv4 c;
    public static final vv4 d;
    public static final hw4 e;
    public final ua5 a;

    static {
        hw4 hw4Var;
        ta5 ta5VarA = ta5.a();
        b = ta5VarA.c("grpc.subchannel.disconnections", "EXPERIMENTAL. Number of times the selected subchannel becomes disconnected", "{disconnection}", yr4.a("grpc.target"), yr4.a("grpc.lb.backend_service", "grpc.lb.locality", "grpc.disconnect_error"));
        c = ta5VarA.c("grpc.subchannel.connection_attempts_succeeded", "EXPERIMENTAL. Number of successful connection attempts", "{attempt}", yr4.a("grpc.target"), yr4.a("grpc.lb.backend_service", "grpc.lb.locality"));
        d = ta5VarA.c("grpc.subchannel.connection_attempts_failed", "EXPERIMENTAL. Number of failed connection attempts", "{attempt}", yr4.a("grpc.target"), yr4.a("grpc.lb.backend_service", "grpc.lb.locality"));
        ArrayList arrayListA = yr4.a("grpc.target");
        ArrayList arrayListA2 = yr4.a("grpc.security_level", "grpc.lb.backend_service", "grpc.lb.locality");
        o8.f(!i13.b("grpc.subchannel.open_connections"), "missing metric name");
        synchronized (ta5VarA.a) {
            if (ta5VarA.b.contains("grpc.subchannel.open_connections")) {
                throw new IllegalStateException("Metric with name grpc.subchannel.open_connections already exists");
            }
            int i = ta5VarA.d;
            int i2 = i + 1;
            sa5[] sa5VarArr = ta5VarA.c;
            if (i2 == sa5VarArr.length) {
                ta5VarA.c = (sa5[]) Arrays.copyOf(sa5VarArr, sa5VarArr.length + 5);
            }
            hw4Var = new hw4(i, "grpc.subchannel.open_connections", arrayListA, arrayListA2);
            ta5VarA.c[i] = hw4Var;
            ta5VarA.b.add("grpc.subchannel.open_connections");
            ta5VarA.d++;
        }
        e = hw4Var;
    }

    public rb8(ua5 ua5Var) {
        this.a = ua5Var;
    }
}
