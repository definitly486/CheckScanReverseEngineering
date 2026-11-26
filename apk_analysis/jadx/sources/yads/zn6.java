package yads;

import com.yandex.mobile.ads.rewarded.Reward;

/* JADX INFO: loaded from: classes6.dex */
public final class zn6 implements Reward {
    public final s95 a;

    public zn6(s95 s95Var) {
        this.a = s95Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zn6) && defpackage.aa4.e(((zn6) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
