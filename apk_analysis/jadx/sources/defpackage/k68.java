package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class k68 {
    public final y91 a;
    public final boolean b;
    public final b c;
    public final int d;

    public static abstract class a extends p0<String> {
        public final CharSequence d;
        public final y91 e;
        public final boolean f;
        public int g;
        public int h;

        public a(k68 k68Var, CharSequence charSequence) {
            this.b = p0.a.NOT_READY;
            this.g = 0;
            this.e = k68Var.a;
            this.f = k68Var.b;
            this.h = k68Var.d;
            this.d = charSequence;
        }

        public abstract int a(int i);

        public abstract int b(int i);
    }

    public interface b {
        Iterator<String> a(k68 k68Var, CharSequence charSequence);
    }

    public k68(b bVar, boolean z, y91 y91Var, int i) {
        this.c = bVar;
        this.b = z;
        this.a = y91Var;
        this.d = i;
    }

    public static k68 a(char c) {
        return new k68(new j7(new y91.f(c), 5), false, y91.m.c, Integer.MAX_VALUE);
    }

    public final List<String> b(CharSequence charSequence) {
        charSequence.getClass();
        Iterator<String> itA = this.c.a(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (true) {
            p0 p0Var = (p0) itA;
            if (!p0Var.hasNext()) {
                return Collections.unmodifiableList(arrayList);
            }
            arrayList.add((String) p0Var.next());
        }
    }
}
