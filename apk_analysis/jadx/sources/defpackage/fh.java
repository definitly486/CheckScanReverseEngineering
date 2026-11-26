package defpackage;

import android.window.OnBackInvokedDispatcher;
import com.my.target.m1;
import yads.e91;
import yads.l66;
import yads.t91;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fh implements l66, m1.b {
    public final /* synthetic */ int b;

    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher c(Object obj) {
        return (OnBackInvokedDispatcher) obj;
    }

    public static StringBuilder d(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        return sb;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 3:
                return e91.d(l.longValue());
            default:
                return t91.a(l.longValue());
        }
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }
}
