package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class z30 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public z30(String str, String str2, String str3, String str4) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    @Override // defpackage.pz3
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final String id() {
        return this.b.concat(this.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.c;
    }
}
