package yads;

import android.net.Uri;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class kc0 {
    public final long a;
    public final long b;
    public final long c;
    public final boolean d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final t56 i;
    public final bj5 j;
    public final Uri k;
    public final w05 l;
    public final List m;

    public kc0(long j, long j2, long j3, boolean z, long j4, long j5, long j6, long j7, w05 w05Var, t56 t56Var, bj5 bj5Var, Uri uri, ArrayList arrayList) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = z;
        this.e = j4;
        this.f = j5;
        this.g = j6;
        this.h = j7;
        this.l = w05Var;
        this.i = t56Var;
        this.k = uri;
        this.j = bj5Var;
        this.m = arrayList;
    }

    public final kc0 a(List list) {
        long j;
        long j2;
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new bs5(-1, -1, -1));
        ArrayList arrayList = new ArrayList();
        long j3 = 0;
        int i = 0;
        while (true) {
            int size = this.m.size();
            j = C.TIME_UNSET;
            if (i >= size) {
                break;
            }
            if (((bs5) linkedList.peek()).b != i) {
                long jA = a(i);
                if (jA != C.TIME_UNSET) {
                    j3 += jA;
                } else {
                    j2 = j3;
                }
                i++;
            } else {
                au4 au4Var = (au4) this.m.get(i);
                List list2 = au4Var.c;
                bs5 bs5Var = (bs5) linkedList.poll();
                int i2 = bs5Var.b;
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    int i3 = bs5Var.c;
                    eb ebVar = (eb) list2.get(i3);
                    List list3 = ebVar.c;
                    ArrayList arrayList3 = new ArrayList();
                    do {
                        arrayList3.add((o75) list3.get(bs5Var.d));
                        bs5Var = (bs5) linkedList.poll();
                        if (bs5Var.b != i2) {
                            break;
                        }
                    } while (bs5Var.c == i3);
                    j2 = j3;
                    arrayList2.add(new eb(ebVar.a, ebVar.b, arrayList3, ebVar.d, ebVar.e, ebVar.f));
                    if (bs5Var.b != i2) {
                        break;
                    }
                    j3 = j2;
                }
                linkedList.addFirst(bs5Var);
                arrayList.add(new au4(au4Var.a, au4Var.b - j2, arrayList2, au4Var.d));
            }
            j3 = j2;
            i++;
        }
        long j4 = j3;
        long j5 = this.b;
        if (j5 != C.TIME_UNSET) {
            j = j5 - j4;
        }
        return new kc0(this.a, j, this.c, this.d, this.e, this.f, this.g, this.h, this.l, this.i, this.j, this.k, arrayList);
    }

    public final long a(int i) {
        long j;
        long j2;
        if (i == this.m.size() - 1) {
            j = this.b;
            if (j == C.TIME_UNSET) {
                return C.TIME_UNSET;
            }
            j2 = ((au4) this.m.get(i)).b;
        } else {
            j = ((au4) this.m.get(i + 1)).b;
            j2 = ((au4) this.m.get(i)).b;
        }
        return j - j2;
    }
}
