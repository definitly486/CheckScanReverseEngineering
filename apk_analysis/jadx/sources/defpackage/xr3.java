package defpackage;

import androidx.constraintlayout.core.utils.GridCore;
import java.util.Comparator;
import yads.ln5;
import yads.mn5;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class xr3 implements Comparator {
    public final /* synthetic */ int b;

    public /* synthetic */ xr3(int i) {
        this.b = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return GridCore.lambda$parseSpans$0((String) obj, (String) obj2);
            default:
                return mn5.a((ln5) obj, (ln5) obj2);
        }
    }
}
