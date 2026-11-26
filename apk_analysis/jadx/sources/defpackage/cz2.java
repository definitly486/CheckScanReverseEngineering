package defpackage;

import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cz2 extends qm3 implements nl3<Integer, Boolean> {
    public static final cz2 c = new cz2(1, jz2.class, "isLogsRetriableStatusCode", "isLogsRetriableStatusCode(I)Z", 1);

    @Override // defpackage.nl3
    public final Boolean invoke(Integer num) {
        int iIntValue = num.intValue();
        Set<Integer> set = jz2.a;
        return Boolean.valueOf(iIntValue == 408 || iIntValue == 429 || (500 <= iIntValue && iIntValue < 600));
    }
}
