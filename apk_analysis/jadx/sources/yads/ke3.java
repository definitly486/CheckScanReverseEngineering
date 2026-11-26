package yads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ke3 extends ge3 {
    /* JADX WARN: Multi-variable type inference failed */
    public final ke3 a(List list) {
        if (list instanceof Collection) {
            a(list.size() + this.b);
            if (list instanceof ie3) {
                this.b = ((ie3) list).a(this.b, this.a);
                return this;
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this;
    }

    public final k55 a() {
        this.c = true;
        return oe3.b(this.b, this.a);
    }

    public final ke3 a(Object obj) {
        obj.getClass();
        a(this.b + 1);
        Object[] objArr = this.a;
        int i = this.b;
        this.b = i + 1;
        objArr[i] = obj;
        return this;
    }
}
