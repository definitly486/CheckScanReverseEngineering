package defpackage;

import com.google.android.material.search.SearchView;
import yads.nf4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sk7 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sk7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((SearchView) obj).requestFocusAndShowKeyboardIfNeeded();
                break;
            default:
                nf4.b((nf4) obj);
                break;
        }
    }
}
