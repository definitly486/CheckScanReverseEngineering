package defpackage;

import android.app.Activity;
import androidx.lifecycle.DispatchQueue;
import com.my.tracker.obfuscated.a;
import com.my.tracker.obfuscated.i0;
import yads.kh;
import yads.n25;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class do2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ do2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((DispatchQueue) obj2).enqueue((Runnable) obj);
                break;
            case 1:
                ((a) obj2).a((Activity) obj);
                break;
            case 2:
                ((i0) obj2).b((i0.c) obj);
                break;
            default:
                n25.a((n25) obj2, (kh) obj);
                break;
        }
    }
}
