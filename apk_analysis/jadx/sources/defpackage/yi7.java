package defpackage;

import androidx.compose.foundation.gestures.Scrollable2DNode;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yi7 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ yi7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(Scrollable2DNode.setScrollSemanticsActions$lambda$0((Scrollable2DNode) obj3, ((Float) obj).floatValue(), ((Float) obj2).floatValue()));
            default:
                CharSequence charSequence = (CharSequence) obj;
                int iIntValue = ((Integer) obj2).intValue();
                charSequence.getClass();
                int iL = ta8.L(charSequence, (char[]) obj3, iIntValue, false);
                if (iL < 0) {
                    return null;
                }
                return new b36(Integer.valueOf(iL), 1);
        }
    }
}
