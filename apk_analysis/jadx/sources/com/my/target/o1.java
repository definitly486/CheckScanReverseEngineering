package com.my.target;

import android.content.Context;
import android.view.View;
import androidx.media3.container.MdtaMetadataEntry;
import defpackage.ht9;
import defpackage.l3a;
import defpackage.n4a;
import defpackage.s5a;
import defpackage.sna;
import defpackage.y14;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class o1 {
    public final s5a a;
    public final s5a b;
    public final m1.b c;
    public WeakReference d;

    public o1(s5a s5aVar, s5a s5aVar2, m1.b bVar) {
        this.b = s5aVar2;
        this.a = s5aVar;
        this.c = bVar;
    }

    public static o1 a(n4a n4aVar, m1.b bVar) {
        return new o1(n4aVar.e(2), n4aVar.a(2), bVar);
    }

    public final void b() {
        WeakReference weakReference = this.d;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.b.b.clear();
        this.a.b.clear();
        this.d = null;
    }

    public final void c(float f, float f2) {
        Context context;
        double dA;
        float f3;
        byte b;
        View view;
        WeakReference weakReference = this.d;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            context = null;
            dA = 0.0d;
        } else {
            dA = l3a.a(view);
            context = view.getContext();
        }
        List list = this.b.b;
        s5a s5aVar = this.a;
        List list2 = s5aVar.b;
        if (list2.isEmpty() && list.isEmpty()) {
            return;
        }
        if (context == null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((sna) it.next()).j = -1.0f;
            }
            return;
        }
        s5a s5aVarA = s5aVar.a();
        List list3 = s5aVarA.b;
        Iterator it2 = list2.iterator();
        while (true) {
            f3 = 0.0f;
            if (!it2.hasNext()) {
                break;
            }
            ht9 ht9Var = (ht9) it2.next();
            float f4 = ht9Var.i;
            if (f4 == -1.0f) {
                float f5 = ht9Var.j;
                if (f5 >= 0.0f) {
                    f4 = (f5 * f2) / 100.0f;
                    ht9Var.i = f4;
                    ht9Var.j = -1.0f;
                }
            }
            if (y14.a(f4, f) != 1) {
                it2.remove();
                int i = ht9Var.f;
                boolean z = ht9Var.h;
                boolean z2 = ((double) i) <= dA;
                if ((z2 && z) || (!z2 && !z)) {
                    list3.add(ht9Var);
                }
            }
        }
        float f6 = f2 - f;
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            sna snaVar = (sna) it3.next();
            int i2 = snaVar.f;
            boolean z3 = snaVar.i;
            float f7 = snaVar.h;
            f3 = f3;
            float f8 = snaVar.j;
            boolean z4 = dA < ((double) i2);
            boolean z5 = f8 < f3;
            if (y14.a(f6, f7) == -1 && (z4 || z5)) {
                if (!z3) {
                    list3.add(snaVar);
                }
                it3.remove();
            } else if (z4) {
                b = MdtaMetadataEntry.AUXILIARY_TRACKS_SAMPLES_NOT_INTERLEAVED;
                snaVar.j = -1.0f;
            } else {
                b = MdtaMetadataEntry.AUXILIARY_TRACKS_SAMPLES_NOT_INTERLEAVED;
                if (z5) {
                    snaVar.j = f;
                } else if (y14.a(f - f8, f7) != -1) {
                    if (z3) {
                        list3.add(snaVar);
                    }
                    it3.remove();
                }
            }
        }
        m1.g(s5aVarA, this.c);
    }

    public final void d(View view) {
        WeakReference weakReference;
        if (view != null || (weakReference = this.d) == null) {
            this.d = new WeakReference(view);
        } else {
            weakReference.clear();
        }
    }
}
