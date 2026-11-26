package defpackage;

import androidx.core.util.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class k84 implements Predicate {
    public final /* synthetic */ String a;

    public /* synthetic */ k84(String str) {
        this.a = str;
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        return this.a.equals((String) obj);
    }
}
