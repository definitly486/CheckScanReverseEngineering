package defpackage;

import io.appmetrica.analytics.impl.Go;
import io.appmetrica.analytics.impl.Io;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import yads.ee2;
import yads.l66;
import yads.me1;
import yads.st3;
import yads.z51;
import yads.zg1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class k implements Io, st3, l66 {
    public final /* synthetic */ int b;

    public static int b(int i, int i2, int i3, int i4) {
        return ((i - i2) / i3) + i4;
    }

    public static int c(Map map, int i, int i2) {
        return (map.hashCode() + i) * i2;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 5:
                return me1.a(l.longValue());
            case 6:
                return z51.a(l.longValue());
            default:
                return zg1.f(l.longValue());
        }
    }

    @Override // io.appmetrica.analytics.impl.Io
    public JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        return Go.a(jSONObject, jSONObject2);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return ee2.a(list);
    }
}
