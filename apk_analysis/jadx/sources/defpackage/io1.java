package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class io1 extends y03 {
    public final ArrayList<y03> a;
    public final ArrayList b;
    public int c;
    public int d;
    public boolean e;

    public static final class a extends io1 {
        public final String toString() {
            return ja8.i("", this.a);
        }
    }

    public static final class b extends io1 {
        public b(y03... y03VarArr) {
            List listAsList = Arrays.asList(y03VarArr);
            int i = this.c;
            ArrayList<y03> arrayList = this.a;
            if (i > 1) {
                arrayList.add(new a(listAsList));
            } else {
                arrayList.addAll(listAsList);
            }
            c();
        }

        public final String toString() {
            return ja8.i(", ", this.a);
        }
    }

    public io1() {
        this.c = 0;
        this.d = 0;
        this.a = new ArrayList<>();
        this.b = new ArrayList();
    }

    @Override // defpackage.y03
    public final int a() {
        return this.d;
    }

    @Override // defpackage.y03
    public final boolean b() {
        return this.e;
    }

    public final void c() {
        ArrayList<y03> arrayList = this.a;
        this.c = arrayList.size();
        this.d = 0;
        for (y03 y03Var : arrayList) {
            this.d = y03Var.a() + this.d;
        }
        ArrayList arrayList2 = this.b;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        arrayList2.sort(Comparator.comparingInt(new ho1()));
        Iterator<y03> it = arrayList.iterator();
        while (it.hasNext()) {
            if (it.next().b()) {
                this.e = true;
                return;
            }
        }
    }

    public io1(List list) {
        this();
        this.a.addAll(list);
        c();
    }
}
