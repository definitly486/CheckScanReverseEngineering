package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class i92 extends k1<lc2.b> {
    public static final i92 a = new i92();
    public static final cl4 b = nm4.a(po4.PUBLICATION, a.f);

    public static final class a extends gh4 implements ll3<aj7<lc2.b>> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final aj7<lc2.b> invoke() {
            return new aj7<>("kotlinx.datetime.DateTimeUnit.DateBased", x07.a(lc2.b.class), new ne4[]{x07.a(lc2.c.class), x07.a(lc2.d.class)}, new df4[]{rc2.a, hd5.a});
        }
    }

    @Override // defpackage.k1
    public final xl2<lc2.b> a(du1 du1Var, String str) {
        return ((aj7) b.getValue()).a(du1Var, str);
    }

    @Override // defpackage.k1
    public final xp7<lc2.b> b(ux2 ux2Var, lc2.b bVar) {
        lc2.b bVar2 = bVar;
        bVar2.getClass();
        return ((aj7) b.getValue()).b(ux2Var, bVar2);
    }

    @Override // defpackage.k1
    public final ne4<lc2.b> c() {
        return x07.a(lc2.b.class);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return ((aj7) b.getValue()).getDescriptor();
    }
}
