package defpackage;

import android.view.inputmethod.InsertGesture;
import yads.a92;
import yads.cd1;
import yads.l66;
import yads.xe1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mg implements l66 {
    public final /* synthetic */ int b;

    public static /* synthetic */ void c(int i, Object obj) {
        throw new IllegalStateException("Source subfield " + i + ((Object) " is present but null: ") + obj);
    }

    public static /* synthetic */ void d(Object obj, Object obj2, Object obj3, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        throw new IllegalStateException(sb.toString(), th);
    }

    public static /* synthetic */ void e(String str, Throwable th) {
        throw new RuntimeException(str, th);
    }

    public static /* bridge */ /* synthetic */ boolean f(Object obj) {
        return obj instanceof InsertGesture;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 6:
                return a92.a(((Long) obj).longValue());
            case 7:
                return cd1.f(((Long) obj).longValue());
            default:
                return xe1.b((String) obj);
        }
    }
}
