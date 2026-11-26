package yads;

import com.yandex.mobile.ads.common.ImpressionData;

/* JADX INFO: loaded from: classes6.dex */
public final class tm6 implements ImpressionData {
    public final j5 a;

    public tm6(j5 j5Var) {
        this.a = j5Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof tm6) && defpackage.aa4.e(((tm6) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.b.hashCode();
    }
}
