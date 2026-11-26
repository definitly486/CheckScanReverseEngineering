package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class yt3 extends gh4 implements ll3<String> {
    public final /* synthetic */ List<ab4> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yt3(List list) {
        super(0);
        this.f = list;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        List<ab4> list = this.f;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new wda(((ab4) it.next()).a));
        }
        return "Getting first 10 from storage: " + arrayList;
    }
}
