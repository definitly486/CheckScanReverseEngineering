package defpackage;

import com.google.android.material.textfield.TextInputLayout;
import com.my.tracker.obfuscated.i0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class es8 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ es8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((TextInputLayout) obj).lambda$onGlobalLayout$1();
                break;
            default:
                ((i0) obj).f();
                break;
        }
    }
}
