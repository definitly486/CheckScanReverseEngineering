package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes3.dex */
public final class pib implements oh9, rxa {
    public static final lib c = new lib();
    public static final /* synthetic */ pib d = new pib(5);
    public static final /* synthetic */ pib e = new pib(6);
    public static final /* synthetic */ pib f = new pib(7);
    public final /* synthetic */ int b;

    public /* synthetic */ pib(int i) {
        this.b = i;
    }

    public static final CancellationException a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    public static final void b(zl5 zl5Var, lk3... lk3VarArr) {
        zl5Var.getClass();
        so1[] so1VarArr = {new c00(null), new l27((df7) yr.I(lk3VarArr))};
        List listF = yr.F(1, lk3VarArr);
        ArrayList arrayList = new ArrayList(kn1.q(listF, 10));
        Iterator it = listF.iterator();
        while (it.hasNext()) {
            arrayList.add(new xi3((lk3) it.next()));
        }
        zl5Var.a((so1[]) aq5.z(arrayList, so1VarArr));
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 5:
                List list = zzfy.a;
                return Integer.valueOf((int) zzags.zzaq());
            case 6:
                List list2 = zzfy.a;
                return Long.valueOf(zzags.zzar());
            default:
                List list3 = zzfy.a;
                return Integer.valueOf((int) zzags.zzZ());
        }
    }
}
