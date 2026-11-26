package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class px3 {
    public final zu3 a;
    public final Object b = new Object();
    public String c;

    public px3(zu3 zu3Var) {
        this.a = zu3Var;
    }

    public final String a() {
        String strC;
        synchronized (this.b) {
            strC = this.c;
            if (strC == null) {
                strC = ((av3) this.a).c("YmadMauid");
                this.c = strC;
            }
        }
        return strC;
    }

    public final void a(String str) {
        synchronized (this.b) {
            this.c = str;
            ((av3) this.a).a("YmadMauid", str);
            j59 j59Var = j59.a;
        }
    }
}
