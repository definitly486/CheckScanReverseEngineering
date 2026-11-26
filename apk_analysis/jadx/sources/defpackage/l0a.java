package defpackage;

import com.my.target.b2;
import com.my.target.d1;
import com.my.target.z2;
import java.util.ArrayList;
import yads.k14;
import yads.l14;
import yads.r04;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l0a implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ l0a(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                ((k14) obj3).a((l14) obj2, (r04) obj);
                break;
            default:
                z2 z2Var = (z2) obj3;
                gga ggaVar = (gga) obj2;
                d1.a aVar = (d1.a) obj;
                b2 b2Var = z2Var.b;
                ArrayList arrayList = z2Var.f;
                long j = ggaVar.a;
                i7a i7aVar = ggaVar.d;
                arrayList.remove(Long.valueOf(j));
                boolean zA = aVar.a();
                int i2 = aVar.a;
                if (zA) {
                    b2Var.b(j);
                } else if (i2 != 4) {
                    b2Var.b(j);
                    String str = "resolve resultCode=" + i2 + ", responseCode=" + aVar.c + ", error=" + aVar.d + ", " + i7aVar.d;
                    int i3 = i7aVar.c;
                    pp9 pp9Var = i7aVar.b;
                    if (pp9Var != null) {
                        pp9Var.b(str, i3, 0, 9000, null);
                    } else {
                        i7aVar.a.a(str, i3, 0, 9000, null);
                    }
                }
                z2Var.c();
                z2Var.b();
                break;
        }
    }
}
