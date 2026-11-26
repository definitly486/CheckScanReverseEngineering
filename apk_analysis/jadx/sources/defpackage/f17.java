package defpackage;

import android.content.Context;
import java.util.regex.Matcher;
import yads.gf0;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class f17 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ f17(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                g17 g17Var = (g17) obj2;
                CharSequence charSequence = (CharSequence) obj;
                g17Var.getClass();
                Matcher matcher = g17Var.b.matcher(charSequence);
                matcher.getClass();
                return eg9.b(matcher, 0, charSequence);
            default:
                return gf0.a((Context) obj2, (gf0) obj);
        }
    }
}
