package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class bp5 implements pz3 {
    public final String a;

    public bp5(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof bp5) && this.a.equals(((bp5) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return me0.c("NotificationTitleViewModel(title=", this.a, ")");
    }
}
