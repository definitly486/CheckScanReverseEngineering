package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.ServiceConfigurationError;

/* JADX INFO: loaded from: classes5.dex */
public final class t22 {
    public static final Collection<s22> a;

    static {
        try {
            a = jp7.q(dp7.f(Arrays.asList(new ii()).iterator()));
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
