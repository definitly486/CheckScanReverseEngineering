package defpackage;

import androidx.camera.core.Preview;
import com.google.android.material.search.SearchView;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pk implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ pk(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((ll3) obj).invoke();
                break;
            case 1:
                ((Preview) obj).notifyReset();
                break;
            default:
                ((SearchView) obj).lambda$requestFocusAndShowKeyboardIfNeeded$9();
                break;
        }
    }
}
