package defpackage;

import android.adservices.topics.Topic;
import com.google.firebase.perf.v1.PerfMetric;
import yads.bt2;
import yads.fr1;
import yads.l66;
import yads.oj6;
import yads.ws2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class lt0 implements d29, l66, bt2 {
    public static /* bridge */ /* synthetic */ Topic c(Object obj) {
        return (Topic) obj;
    }

    public static String d(char c, String str, String str2) {
        return str + str2 + c;
    }

    public static /* synthetic */ void f(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void g(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException(str + obj + obj2 + obj3 + obj4);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return fr1.d(((Double) obj).doubleValue());
    }

    @Override // defpackage.d29
    public Object apply(Object obj) {
        return ((PerfMetric) obj).toByteArray();
    }

    @Override // yads.bt2
    public ws2[] b() {
        return oj6.a();
    }
}
