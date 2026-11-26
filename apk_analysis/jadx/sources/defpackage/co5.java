package defpackage;

import com.google.android.gms.internal.measurement.zzail;
import com.google.android.gms.internal.measurement.zzmt;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.nodes.h;
import org.jsoup.nodes.m;
import org.jsoup.nodes.n;
import org.jsoup.nodes.p;
import org.jsoup.nodes.r;

/* JADX INFO: loaded from: classes5.dex */
public final class co5 implements rxa, zzmt {
    public static final /* synthetic */ co5 b = new co5();
    public static final /* synthetic */ co5 c = new co5();

    public static void a(p pVar, n nVar) {
        n nVarU = nVar.u();
        char c2 = 0;
        int i = 0;
        while (true) {
            if (c2 == 0) {
                h hVar = nVar.b;
                n nVarU2 = nVar.u();
                int iD = hVar != null ? nVar.D() : 0;
                if (nVar.getClass() == r.class) {
                    pVar.d((r) nVar, 0, i);
                } else if (nVar instanceof h) {
                    pVar.a((h) nVar, i);
                } else {
                    pVar.b((m) nVar, i);
                }
                if (hVar != null && nVar.b != hVar) {
                    nVar = iD < hVar.f.size() ? (n) ((ArrayList) hVar.p()).get(iD) : null;
                    n nVar2 = i == 0 ? nVarU : nVarU2;
                    if (nVar == null || nVar == nVar2) {
                        if (i == 0) {
                            return;
                        }
                        if (nVarU2 == null || nVarU2.b != hVar) {
                            i--;
                            c2 = 2;
                            nVar = hVar;
                        } else {
                            nVar = nVarU2;
                        }
                    }
                }
                c2 = 1;
            } else {
                if (c2 != 1 || nVar.j() <= 0) {
                    if (nVar instanceof h) {
                        pVar.c((h) nVar, i);
                    }
                    n nVarU3 = nVar.u();
                    if (i == 0) {
                        if (nVarU3 == null || nVarU3 == nVarU) {
                            return;
                        }
                    } else if (nVarU3 == null) {
                        nVar = nVar.b;
                        i--;
                        c2 = 2;
                    }
                    nVar = nVarU3;
                } else {
                    nVar = nVar.p().get(0);
                    i++;
                }
                c2 = 0;
            }
        }
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzail.zzb());
    }
}
