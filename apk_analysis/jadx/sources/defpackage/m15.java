package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class m15 {
    public final ArrayList a;
    public final ArrayList b;
    public final List<i15> c;

    public m15(List<i15> list) {
        this.c = list;
        this.a = new ArrayList(list.size());
        this.b = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            this.a.add(new yr7((List) list.get(i).b.b));
            this.b.add(list.get(i).c.a());
        }
    }
}
