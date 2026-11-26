package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class z36 extends gh4 implements ll3<String> {
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ xh5.a h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z36(Object obj, String str, xh5.a aVar) {
        super(0);
        this.f = obj;
        this.g = str;
        this.h = aVar;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        StringBuilder sb = new StringBuilder("Attempting to assign conflicting values '");
        sb.append(this.f);
        sb.append("' and '");
        sb.append(this.g);
        sb.append("' to field '");
        return xp.e(sb, xh5.this.c, '\'');
    }
}
