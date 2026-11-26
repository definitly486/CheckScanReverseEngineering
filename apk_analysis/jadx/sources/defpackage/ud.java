package defpackage;

import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.my.target.m1;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ud implements ze6, m1.b {
    public static int b(int i, int i2, int i3) {
        int i4 = i / i2;
        return i4 + i4 + i3;
    }

    public static Map c(int i, String str) {
        Map mapSingletonMap = Collections.singletonMap(str, Integer.valueOf(i));
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }

    public static /* synthetic */ void d() {
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void e(int i, String str) {
        throw new IllegalStateException((str + i).toString());
    }

    public static void f(StringBuilder sb, String str, String str2, boolean z, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(z);
        sb.append(str3);
    }

    public static /* synthetic */ void g() {
        throw new IllegalStateException();
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return InAppMessageStreamManager.lambda$getContentIfNotRateLimited$23((Boolean) obj);
    }
}
