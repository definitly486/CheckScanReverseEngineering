package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public enum eua {
    UNSET('0'),
    REMOTE_DEFAULT('1'),
    REMOTE_DELEGATION('2'),
    MANIFEST('3'),
    INITIALIZATION('4'),
    API('5'),
    CHILD_ACCOUNT('6'),
    TCF('7'),
    REMOTE_ENFORCED_DEFAULT('8'),
    FAILSAFE('9');

    private final char zzk;

    eua(char c) {
        this.zzk = c;
    }

    public static eua a(char c) {
        for (eua euaVar : values()) {
            if (euaVar.zzk == c) {
                return euaVar;
            }
        }
        return UNSET;
    }

    public final /* synthetic */ char d() {
        return this.zzk;
    }
}
