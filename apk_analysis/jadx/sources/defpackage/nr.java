package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class nr implements Callable<List<Object>>, xl3<Object, List<Object>> {
    private static final /* synthetic */ nr[] $VALUES;
    public static final nr INSTANCE;

    static {
        nr nrVar = new nr("INSTANCE", 0);
        INSTANCE = nrVar;
        $VALUES = new nr[]{nrVar};
    }

    public nr() {
        throw null;
    }

    public static nr valueOf(String str) {
        return (nr) Enum.valueOf(nr.class, str);
    }

    public static nr[] values() {
        return (nr[]) $VALUES.clone();
    }

    @Override // defpackage.xl3
    public final List<Object> apply(Object obj) {
        return new ArrayList();
    }

    @Override // java.util.concurrent.Callable
    public final List<Object> call() {
        return new ArrayList();
    }
}
