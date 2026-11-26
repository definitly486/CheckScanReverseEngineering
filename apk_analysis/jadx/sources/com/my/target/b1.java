package com.my.target;

import android.os.Looper;
import defpackage.f52;
import defpackage.fq9;
import defpackage.g5a;
import defpackage.ik0;
import defpackage.j1a;
import defpackage.j8a;
import defpackage.jia;
import defpackage.kha;
import defpackage.kia;
import defpackage.l6a;
import defpackage.lia;
import defpackage.n4a;
import defpackage.tc0;
import defpackage.vda;
import defpackage.vha;
import defpackage.w4a;
import defpackage.xda;
import defpackage.y8a;
import defpackage.yn9;
import defpackage.z2a;
import io.appmetrica.analytics.coreutils.internal.limitation.MapTrimmers;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b1 {
    public final z2a a;
    public final t0.a b;
    public a c;

    public interface a {
        void a(vha vhaVar, j8a j8aVar);
    }

    public b1(u.a aVar, z2a z2aVar, t0.a aVar2) {
        this.a = z2aVar;
        this.b = aVar2;
    }

    public static void b(t0 t0Var, int i, long j) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        Long l = (Long) t0Var.b.get(Integer.valueOf(i));
        if (l != null) {
            jCurrentTimeMillis += l.longValue();
        }
        t0Var.a(i, jCurrentTimeMillis);
    }

    public final vha a(ArrayList arrayList, kia kiaVar, v2 v2Var, t0 t0Var, j8a j8aVar) {
        z2a z2aVar;
        lia liaVar;
        yn9 yn9Var;
        if (arrayList.size() <= 0) {
            return kiaVar;
        }
        Iterator it = arrayList.iterator();
        vha vhaVarA = kiaVar;
        while (it.hasNext()) {
            lia liaVar2 = (lia) it.next();
            long jCurrentTimeMillis = System.currentTimeMillis();
            z2a z2aVar2 = this.a;
            ik0 ik0Var = z2aVar2.h;
            vda vdaVarU = new g5a(z2aVar2.g).U(liaVar2.a, null, null);
            b(t0Var, 1, jCurrentTimeMillis);
            if (vdaVarU.a) {
                m1.b(liaVar2.a("serviceRequested"), z2aVar2.g, ik0Var);
                int iA = vhaVarA != null ? vhaVarA.a() : 0;
                String str = (String) vdaVarU.c;
                if (str != null) {
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    kia kiaVarD = v2Var.d(str, liaVar2, vhaVarA, z2aVar2, this.b, t0Var, null, j8aVar);
                    liaVar = liaVar2;
                    z2aVar = z2aVar2;
                    b(t0Var, 2, jCurrentTimeMillis2);
                    vhaVarA = a(liaVar.b, kiaVarD, v2Var, t0Var, j8aVar);
                } else {
                    z2aVar = z2aVar2;
                    liaVar = liaVar2;
                }
                if (iA == (vhaVarA != null ? vhaVarA.a() : 0)) {
                    m1.b(liaVar.a("serviceAnswerEmpty"), z2aVar.g, ik0Var);
                }
                yn9Var = new yn9(vdaVarU, vhaVarA);
            } else {
                yn9Var = new yn9(vdaVarU, vhaVarA);
            }
            vhaVarA = (vha) yn9Var.b;
        }
        return vhaVarA;
    }

    public final void c(vha vhaVar, j8a j8aVar, t0 t0Var) {
        t0Var.b();
        if (this.c == null) {
            return;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            w4a.c(new f52(this, vhaVar, j8aVar, 1));
        } else {
            this.c.a(vhaVar, j8aVar);
            this.c = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0065  */
    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0034 A[SYNTHETIC] */
    public final vha d(vha vhaVar, j8a j8aVar) {
        y8a y8aVar;
        n4a n4aVar;
        n4a n4aVar2;
        n4a n4aVar3;
        kha khaVar;
        this.a.g.b(MapTrimmers.DEFAULT_VALUE_MAX_LENGTH);
        if (vhaVar == null) {
            return vhaVar;
        }
        kia kiaVar = (kia) vhaVar;
        ArrayList<jia> arrayList = kiaVar.b;
        if (arrayList.isEmpty()) {
            fq9 fq9Var = kiaVar.a;
            if (fq9Var == null || fq9Var.a.isEmpty()) {
                j8aVar.a(l6a.r);
                return null;
            }
        } else {
            if (!tc0.c(arrayList)) {
                j8aVar.a(l6a.s);
                return null;
            }
            for (jia jiaVar : arrayList) {
                n4a n4aVar4 = jiaVar.a;
                if (!n4aVar4.i && tc0.d(n4aVar4)) {
                    break;
                }
                if ((jiaVar instanceof xda) && (khaVar = ((xda) jiaVar).Z) != null) {
                    n4a n4aVar5 = khaVar.a;
                    if (!n4aVar5.i && tc0.d(n4aVar5)) {
                        break;
                    }
                    if (!(jiaVar instanceof j1a)) {
                        j1a j1aVar = (j1a) jiaVar;
                        y8aVar = j1aVar.a0;
                        if (y8aVar != null) {
                            n4aVar3 = (n4a) y8aVar.b;
                            if (n4aVar3.i) {
                            }
                        }
                        n4aVar = (n4a) j1aVar.X.b;
                        if (!n4aVar.i) {
                        }
                        n4aVar2 = (n4a) j1aVar.Y.b;
                        if (!n4aVar2.i) {
                            continue;
                        }
                    }
                } else if (!(jiaVar instanceof j1a)) {
                    j1a j1aVar2 = (j1a) jiaVar;
                    y8aVar = j1aVar2.a0;
                    if (y8aVar != null) {
                        n4aVar3 = (n4a) y8aVar.b;
                        if (n4aVar3.i && tc0.d(n4aVar3)) {
                            break;
                        }
                    }
                    n4aVar = (n4a) j1aVar2.X.b;
                    if (!n4aVar.i || !tc0.d(n4aVar)) {
                        n4aVar2 = (n4a) j1aVar2.Y.b;
                        if (!n4aVar2.i && tc0.d(n4aVar2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
        }
        return kiaVar;
    }
}
