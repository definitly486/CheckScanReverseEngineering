package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class jt8 implements bm3 {
    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        o22.a aVar = (o22.a) obj2;
        if (!(aVar instanceof it8)) {
            return obj;
        }
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 1;
        return iIntValue == 0 ? aVar : Integer.valueOf(iIntValue + 1);
    }
}
