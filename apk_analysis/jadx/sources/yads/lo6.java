package yads;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class lo6 implements defpackage.mm3 {
    public final /* synthetic */ mo6 a;

    public lo6(mo6 mo6Var) {
        this.a = mo6Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof lo6) {
            return defpackage.aa4.e(getFunctionDelegate(), ((defpackage.mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final defpackage.cm3 getFunctionDelegate() {
        return new defpackage.qm3(1, this.a, mo6.class, "trackVerificationNotExecuted", "trackVerificationNotExecuted(Lcom/yandex/mobile/ads/video/playback/tracker/verification/omsdk/error/VerificationNotExecutedException;)V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }
}
