package defpackage;

import androidx.compose.ui.text.TextStyle;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import java.io.IOException;
import java.util.concurrent.RejectedExecutionException;
import yads.eg1;
import yads.l66;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class jn implements xl3, l66 {
    public static int b(float f, int i, int i2) {
        return (Float.hashCode(f) + i) * i2;
    }

    public static int c(TextStyle textStyle, int i, int i2) {
        return (textStyle.hashCode() + i) * i2;
    }

    public static /* synthetic */ void d(int i, String str) throws IOException {
        throw new IOException(str + i);
    }

    public static /* synthetic */ void e(Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append((Object) " is shutting down");
        throw new RejectedExecutionException(sb.toString());
    }

    public static /* synthetic */ void f(int i, String str) {
        throw new IllegalArgumentException(str + i);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return eg1.a((String) obj);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return InAppMessageStreamManager.lambda$createFirebaseInAppMessageStream$5((Throwable) obj);
    }
}
