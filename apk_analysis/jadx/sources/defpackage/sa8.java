package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class sa8 implements zo7<String> {
    public final /* synthetic */ CharSequence a;

    public sa8(CharSequence charSequence) {
        this.a = charSequence;
    }

    @Override // defpackage.zo7
    public final Iterator<String> iterator() {
        return new gq4(this.a);
    }
}
