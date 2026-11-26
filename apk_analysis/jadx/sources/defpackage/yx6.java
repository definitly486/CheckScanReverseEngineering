package defpackage;

import java.util.Arrays;
import java.util.ServiceConfigurationError;

/* JADX INFO: loaded from: classes5.dex */
public final class yx6 {
    public static final py1[] a;

    static {
        try {
            a = (py1[]) jp7.q(dp7.f(Arrays.asList(new py1[0]).iterator())).toArray(new py1[0]);
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
