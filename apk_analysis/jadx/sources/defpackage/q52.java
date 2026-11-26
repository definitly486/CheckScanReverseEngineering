package defpackage;

import java.io.File;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q52 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((File) obj).exists();
    }
}
