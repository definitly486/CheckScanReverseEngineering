package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.mlkit_vision_barcode.zzxa;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes4.dex */
public final class tc0 implements Continuation, rxa {
    public static final /* synthetic */ tc0 b = new tc0();
    public static final /* synthetic */ tc0 c = new tc0();

    public static h14 a(ArrayList arrayList, int i, int i2) {
        int i3;
        h14 h14Var = null;
        if (arrayList.isEmpty()) {
            return null;
        }
        if (i2 == 0 || i == 0) {
            y14.r(null, "InterstitialAdResultProcessor: Display size is zero");
            return null;
        }
        float f = i;
        float f2 = i2;
        float f3 = f / f2;
        Iterator it = arrayList.iterator();
        float f4 = 0.0f;
        while (it.hasNext()) {
            h14 h14Var2 = (h14) it.next();
            int i4 = h14Var2.b;
            if (i4 > 0 && (i3 = h14Var2.c) > 0) {
                float f5 = i4;
                float f6 = i3;
                float f7 = f5 / f6;
                if (f3 < f7) {
                    if (f5 > f) {
                        f5 = f;
                    }
                    f6 = f5 / f7;
                } else {
                    if (f6 > f2) {
                        f6 = f2;
                    }
                    f5 = f6 * f7;
                }
                float f8 = f5 * f6;
                if (f8 <= f4) {
                    break;
                }
                h14Var = h14Var2;
                f4 = f8;
            }
        }
        return h14Var;
    }

    public static sna b(List list) {
        sna snaVar = (sna) list.get(0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            sna snaVar2 = (sna) it.next();
            if (snaVar2.h < snaVar.h) {
                snaVar = snaVar2;
            }
        }
        return snaVar;
    }

    /* JADX WARN: Code duplicated, block: B:109:0x01b5 A[RETURN] */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01e1, code lost:
    
        if (r4.d == null) goto L120;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(java.util.ArrayList r9) {
        /*
            Method dump skipped, instruction units count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tc0.c(java.util.ArrayList):boolean");
    }

    public static boolean d(n4a n4aVar) {
        List list = n4aVar.a(1).b;
        if (!list.isEmpty()) {
            b(list).d = true;
            return true;
        }
        List list2 = n4aVar.a(2).b;
        if (!list2.isEmpty()) {
            b(list2).d = true;
            return true;
        }
        List list3 = n4aVar.f("show").b;
        if (!list3.isEmpty()) {
            ((m2a) list3.get(0)).d = true;
            return true;
        }
        List list4 = n4aVar.f("playbackStarted").b;
        if (list4.isEmpty()) {
            return false;
        }
        ((m2a) list4.get(0)).d = true;
        return true;
    }

    public static final kc4 e(ud2 ud2Var) {
        ud2Var.getClass();
        kc4 kc4Var = ud2Var instanceof kc4 ? (kc4) ud2Var : null;
        if (kc4Var != null) {
            return kc4Var;
        }
        qz0.g(x07.a(ud2Var.getClass()), "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got ");
        return null;
    }

    public static final void f(ux2 ux2Var) {
        ux2Var.getClass();
        if ((ux2Var instanceof wc4 ? (wc4) ux2Var : null) != null) {
            return;
        }
        qz0.g(x07.a(ux2Var.getClass()), "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got ");
    }

    public static final void g(ar4 ar4Var, ti3 ti3Var) {
        if (ti3Var instanceof te0) {
            ar4Var.add(((te0) ti3Var).a);
            return;
        }
        if (ti3Var instanceof wu1) {
            Iterator it = ((wu1) ti3Var).a.iterator();
            while (it.hasNext()) {
                g(ar4Var, (fo5) it.next());
            }
            return;
        }
        if (ti3Var instanceof hx1) {
            return;
        }
        if (ti3Var instanceof ox7) {
            g(ar4Var, ((ox7) ti3Var).a);
            return;
        }
        if (!(ti3Var instanceof wc)) {
            if (ti3Var instanceof uz5) {
                g(ar4Var, ((uz5) ti3Var).b);
            }
        } else {
            wc wcVar = (wc) ti3Var;
            g(ar4Var, wcVar.a);
            Iterator it2 = wcVar.b.iterator();
            while (it2.hasNext()) {
                g(ar4Var, (ti3) it2.next());
            }
        }
    }

    public static ylb h(sc0 sc0Var) {
        Preconditions.checkNotNull(sc0Var, "You must provide a valid BarcodeScannerOptions.");
        jhb jhbVar = (jhb) jb5.c().a(jhb.class);
        return new ylb(sc0Var, (m1c) jhbVar.a.e(sc0Var), (Executor) jhbVar.b.a.get(), zzxa.zzb(true != xva.c() ? "play-services-mlkit-barcode-scanning" : "barcode-scanning"));
    }

    public static final void i(int i) {
        throw new SerializationException(jh.b(i, "An unknown field for index "));
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* synthetic */ Object then(Task task) {
        Api.ClientKey clientKey = zzcg.a;
        return null;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Long.valueOf(zzags.zzK());
    }
}
