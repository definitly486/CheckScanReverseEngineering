package defpackage;

import androidx.constraintlayout.helper.widget.Carousel;
import io.appmetrica.analytics.impl.C1370x1;
import yads.s25;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class s41 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ s41(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((Carousel) obj).lambda$updateItems$0();
                break;
            case 1:
                s25.a((s25) obj);
                break;
            default:
                C1370x1.a((Object[]) obj);
                break;
        }
    }
}
