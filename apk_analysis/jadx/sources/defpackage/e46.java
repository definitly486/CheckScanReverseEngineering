package defpackage;

import com.google.common.collect.j;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e46 implements sa5 {
    public final int a;
    public final String b;
    public final j c;
    public final j d;

    public e46(int i, String str, ArrayList arrayList, ArrayList arrayList2) {
        this.a = i;
        this.b = str;
        this.c = j.o(arrayList);
        this.d = j.o(arrayList2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(getClass().getName());
        sb.append("(");
        return me0.d(sb, this.b, ")");
    }
}
