package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public final class iic extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final /* synthetic */ Object initialValue() {
        return new Random();
    }
}
