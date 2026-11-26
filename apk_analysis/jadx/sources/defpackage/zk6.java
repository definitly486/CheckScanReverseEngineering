package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class zk6 {

    @bq7(FirebaseAnalytics.Param.SUCCESS)
    private final boolean a;

    @bq7("allFieldsCompleted")
    private final boolean b;

    @bq7("successPopup")
    private final yc8 c;

    @bq7("snackbarText")
    private final String d;

    public zk6(boolean z, boolean z2, yc8 yc8Var, String str) {
        this.a = z;
        this.b = z2;
        this.c = yc8Var;
        this.d = str;
    }

    public final boolean a() {
        return this.b;
    }

    public final String b() {
        return this.d;
    }

    public final boolean c() {
        return this.a;
    }

    public final yc8 d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zk6)) {
            return false;
        }
        zk6 zk6Var = (zk6) obj;
        return this.a == zk6Var.a && this.b == zk6Var.b && aa4.e(this.c, zk6Var.c) && aa4.e(this.d, zk6Var.d);
    }

    public final int hashCode() {
        int iC = tg.c(Boolean.hashCode(this.a) * 31, 31, this.b);
        yc8 yc8Var = this.c;
        int iHashCode = (iC + (yc8Var == null ? 0 : yc8Var.hashCode())) * 31;
        String str = this.d;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "ProfileDataFormResult(success=" + this.a + ", allFieldsCompleted=" + this.b + ", successPopup=" + this.c + ", snackbarText=" + this.d + ")";
    }
}
