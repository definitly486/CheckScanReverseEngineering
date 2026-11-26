package defpackage;

import androidx.core.app.NotificationCompat;

/* JADX INFO: loaded from: classes5.dex */
public final class sq6 implements pz3 {
    public final String a;

    public sq6(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sq6) && aa4.e(this.a, ((sq6) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return bj.c(NotificationCompat.CATEGORY_PROMO, this.a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return bj.c(NotificationCompat.CATEGORY_PROMO, this.a);
    }

    public final String toString() {
        return me0.c("PromocodeTaskCodeViewModel(code=", this.a, ")");
    }

    public sq6() {
        this(null);
    }
}
