package defpackage;

import android.adservices.topics.TopicsManager;
import com.google.android.gms.internal.measurement.zzada;
import yads.cj0;
import yads.fr1;
import yads.l66;
import yads.v13;
import yads.x00;
import yads.yq3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class dq implements l66, v13 {
    public final /* synthetic */ int b;

    public /* synthetic */ dq(int i) {
        this.b = i;
    }

    public static int b(int i, int i2, int i3) {
        return zzada.zzE(i) + i2 + i3;
    }

    public static /* synthetic */ void c(String str, float f, Object obj) {
        throw new IllegalArgumentException(str + f + obj);
    }

    public static void d(StringBuilder sb, String str, long j, String str2) {
        sb.append(str);
        sb.append(j);
        sb.append(str2);
    }

    public static /* bridge */ /* synthetic */ Class e() {
        return TopicsManager.class;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 5:
                return fr1.a(((Double) obj).doubleValue());
            default:
                return yq3.a((String) obj);
        }
    }

    @Override // yads.v13
    public Object apply(Object obj) {
        return new cj0((x00) obj);
    }
}
