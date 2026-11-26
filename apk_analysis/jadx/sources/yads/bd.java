package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class bd {
    public final String a;
    public final Runnable b;

    public bd(String str, Runnable runnable) {
        this.a = str;
        this.b = runnable;
    }

    public final boolean a(String str, String str2) {
        return "mobileads".equals(str) && defpackage.aa4.e(this.a, str2);
    }

    public final void a() {
        this.b.run();
    }
}
