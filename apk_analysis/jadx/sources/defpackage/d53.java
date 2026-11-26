package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class d53 extends gh4 implements ll3<String> {
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d53(String str) {
        super(0);
        this.f = str;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        return "Delete id's from storage ".concat(this.f);
    }
}
