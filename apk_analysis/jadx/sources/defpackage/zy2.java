package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zy2 extends qm3 implements nl3<Integer, Boolean> {
    public static final zy2 c = new zy2(1, jz2.class, "isEventsRetriableStatusCode", "isEventsRetriableStatusCode(I)Z", 1);

    @Override // defpackage.nl3
    public final Boolean invoke(Integer num) {
        return Boolean.valueOf(jz2.a.contains(Integer.valueOf(num.intValue())));
    }
}
