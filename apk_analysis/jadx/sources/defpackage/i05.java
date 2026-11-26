package defpackage;

import com.google.common.collect.p;
import com.google.common.collect.q;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i05 implements lm3 {
    public final /* synthetic */ q.b b;

    public /* synthetic */ i05(q.b bVar) {
        this.b = bVar;
    }

    @Override // defpackage.lm3
    public final Object apply(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        return new p(entry, this.b);
    }
}
