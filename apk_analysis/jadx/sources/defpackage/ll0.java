package defpackage;

import com.my.tracker.obfuscated.i0;
import com.my.tracker.obfuscated.r0;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ll0 implements xl3, i0.c {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ll0(ts5 ts5Var, ms5 ms5Var) {
        this.b = 3;
        this.c = ms5Var;
    }

    @Override // com.my.tracker.obfuscated.i0.c
    public void a(List list) {
        ((r0) this.c).b(list);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (qq1) ((yl0) obj2).invoke(obj);
            case 1:
                return (qq1) ((x51) obj2).invoke(obj);
            case 2:
                return (Map) ((nl3) obj2).invoke(obj);
            default:
                Throwable th = (Throwable) obj;
                th.getClass();
                return ts5.e((ms5) obj2, a57.a(418, ts5.d(th.getMessage())));
        }
    }

    public /* synthetic */ ll0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }
}
