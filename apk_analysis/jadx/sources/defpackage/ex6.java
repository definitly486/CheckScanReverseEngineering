package defpackage;

import io.grpc.d;
import io.grpc.h;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public final class ex6 extends h {
    public final ir3 f;
    public final mg5 g;

    public static final class a {
        public final d a;
        public final long b;

        public a(d dVar, long j) {
            this.a = dVar;
            this.b = j;
        }
    }

    public static final class b implements Comparator<a> {
        @Override // java.util.Comparator
        public final int compare(a aVar, a aVar2) {
            return Long.compare(aVar.b, aVar2.b);
        }
    }

    public static final class c {
        public final int a;
        public final Object b;

        public c(int i, Object obj) {
            this.a = i;
            this.b = obj;
        }
    }

    public ex6(h.e eVar) {
        int iNextInt = new Random().nextInt();
        o8.l(eVar, "helper");
        this.f = new ir3(eVar);
        int i = yu3.a;
        this.g = new mg5(iNextInt);
    }

    @Override // io.grpc.h
    public final h88 a(h.i iVar) {
        int i;
        h.i iVarA = iVar;
        c cVar = (c) iVarA.c;
        int i2 = cVar.a;
        List<d> list = iVarA.a;
        if (i2 < list.size()) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<d> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                d next = it.next();
                String string = next.a.get(0).toString();
                Charset charset = StandardCharsets.UTF_8;
                int i3 = this.g.o;
                mg5.a aVar = new mg5.a(0, (byte) 0);
                long j = i3;
                aVar.c = j;
                aVar.d = j;
                aVar.e = 0;
                aVar.n(string.toString().getBytes(charset));
                byte[] bArr = aVar.j().c;
                int i4 = 1;
                o8.p(bArr.length, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", bArr.length >= 8);
                long j2 = bArr[0] & 255;
                for (int i5 = 8; i4 < Math.min(bArr.length, i5); i5 = 8) {
                    j2 |= (((long) bArr[i4]) & 255) << (i4 * 8);
                    i4++;
                }
                arrayList.add(new a(next, j2));
            }
            Collections.sort(arrayList, new b());
            ArrayList arrayList2 = new ArrayList(i2);
            for (i = 0; i < i2; i++) {
                arrayList2.add(((a) arrayList.get(i)).a);
            }
            h.i.a aVarA = iVarA.a();
            aVarA.a = arrayList2;
            iVarA = aVarA.a();
        }
        h.i.a aVarA2 = iVarA.a();
        aVarA2.c = cVar.b;
        return this.f.a(aVarA2.a());
    }

    @Override // io.grpc.h
    public final void b(h88 h88Var) {
        this.f.b(h88Var);
    }

    @Override // io.grpc.h
    public final void d() {
        this.f.d();
    }
}
