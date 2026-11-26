package yads;

import com.yandex.mobile.ads.common.AdError;

/* JADX INFO: loaded from: classes6.dex */
public final class fm6 implements AdError {
    public final String a;

    public fm6(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!fm6.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        return defpackage.aa4.e(this.a, ((fm6) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("YandexAdError(description='", this.a, "')");
    }
}
