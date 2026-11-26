package defpackage;

import com.posthog.PostHogEvent;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sa6 implements gm3 {
    @Override // defpackage.gm3
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        iz2 iz2Var;
        ExecutorService executorService;
        final nb6 nb6Var = (nb6) obj;
        db6 db6Var = (db6) obj2;
        ib6 ib6Var = (ib6) obj3;
        String str = (String) obj4;
        ExecutorService executorService2 = (ExecutorService) obj5;
        nb6Var.getClass();
        db6Var.getClass();
        ib6Var.getClass();
        executorService2.getClass();
        int i = ta6.a.a[ib6Var.ordinal()];
        int i2 = 3;
        int i3 = 2;
        int i4 = 0;
        int i5 = 1;
        if (i == 1) {
            executorService = executorService2;
            iz2Var = new iz2("events", str, new zc2(i5), new yq2(i5), new v71(i2), new oy2(0), new bm3() { // from class: py2
                @Override // defpackage.bm3
                public final Object invoke(Object obj6, Object obj7) throws IOException {
                    PostHogEvent postHogEvent = (PostHogEvent) obj6;
                    OutputStream outputStream = (OutputStream) obj7;
                    postHogEvent.getClass();
                    outputStream.getClass();
                    wd6 wd6VarB = nb6Var.b();
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, ha1.b), 8192);
                    wd6VarB.a.m(postHogEvent, new az2().b, bufferedWriter);
                    bufferedWriter.flush();
                    return j59.a;
                }
            }, new v82(nb6Var, i5), new qy2(0), new ry2(db6Var, i4), zy2.c, new w82(2), new sy2(i4));
        } else {
            if (i != 2) {
                me0.e();
                return null;
            }
            executorService = executorService2;
            iz2Var = new iz2("snapshots", str, new k31(i3), new dh0(i5), new si1(1), new ly2(i4), new bm3() { // from class: my2
                @Override // defpackage.bm3
                public final Object invoke(Object obj6, Object obj7) throws IOException {
                    PostHogEvent postHogEvent = (PostHogEvent) obj6;
                    OutputStream outputStream = (OutputStream) obj7;
                    postHogEvent.getClass();
                    outputStream.getClass();
                    wd6 wd6VarB = nb6Var.b();
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, ha1.b), 8192);
                    wd6VarB.a.m(postHogEvent, new gz2().b, bufferedWriter);
                    bufferedWriter.flush();
                    return j59.a;
                }
            }, new vy1(nb6Var, i5), new wu2(1), new ny2(db6Var, i4), fz2.c, new ws0(3), new yc2(2));
        }
        wc6 wc6Var = new wc6(nb6Var, iz2Var, executorService);
        if (ib6Var != ib6.SNAPSHOT) {
            return wc6Var;
        }
        qd6 qd6Var = new qd6(nb6Var, wc6Var, str, executorService);
        ta6 ta6Var = nb6Var instanceof ta6 ? (ta6) nb6Var : null;
        if (ta6Var != null) {
            ta6Var.O = qd6Var;
        }
        return qd6Var;
    }
}
