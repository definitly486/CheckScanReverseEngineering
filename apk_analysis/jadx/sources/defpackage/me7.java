package defpackage;

import androidx.work.Configuration;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkGenerationalId;
import com.my.tracker.obfuscated.f3;
import com.my.tracker.obfuscated.p2;
import com.my.tracker.obfuscated.u2;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class me7 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ me7(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.f;
        Object obj2 = this.e;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                Schedulers.lambda$registerRescheduling$0((List) obj4, (WorkGenerationalId) obj3, (Configuration) obj2, (WorkDatabase) obj);
                break;
            default:
                ((p2) obj4).a((u2) obj3, (Boolean) obj2, (f3) obj);
                break;
        }
    }
}
