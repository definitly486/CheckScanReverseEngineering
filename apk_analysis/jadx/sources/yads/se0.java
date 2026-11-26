package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class se0 {
    public final String a;
    public final String b;
    public final re0 c;

    public se0(String str, String str2, re0 re0Var) {
        this.a = str;
        this.b = str2;
        this.c = re0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof se0)) {
            return false;
        }
        se0 se0Var = (se0) obj;
        return defpackage.aa4.e(this.a, se0Var.a) && defpackage.aa4.e(this.b, se0Var.b) && this.c == se0Var.c;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return this.c.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        re0 re0Var = this.c;
        StringBuilder sbD = defpackage.ad2.d("DebugPanelAlertData(title=", str, ", message=", str2, ", type=");
        sbD.append(re0Var);
        sbD.append(")");
        return sbD.toString();
    }
}
