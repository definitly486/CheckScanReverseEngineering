package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class zm {
    public final an2 a;
    public boolean b;
    public ml2 c = ll2.b;
    public sr4 d;

    public zm(an2 an2Var) {
        this.a = an2Var;
    }

    public static final boolean a(zm zmVar) {
        if (!zmVar.b) {
            return true;
        }
        an2 an2Var = zmVar.a;
        int height = (an2Var.getHeight() - an2Var.getCompoundPaddingTop()) - an2Var.getCompoundPaddingBottom();
        int lineForVertical = an2Var.getLayout() == null ? 0 : an2Var.getLayout().getLineForVertical(height);
        int i = lineForVertical + 1;
        if (height >= ow5.a(an2Var, i)) {
            lineForVertical = i;
        }
        if (lineForVertical <= 0 || lineForVertical >= zmVar.a.getLineCount()) {
            if (zmVar.d != null) {
                zmVar.a.getViewTreeObserver().removeOnPreDrawListener(zmVar.d);
                zmVar.d = null;
            }
            return true;
        }
        int i2 = cr3.a;
        vj5[] vj5VarArr = vj5.b;
        cr3.a();
        zmVar.a.setMaxLines(lineForVertical);
        return false;
    }

    public final void a() {
        if (this.d != null) {
            return;
        }
        this.d = pq4.a(this.c, new defpackage.ff(this, 7));
        this.a.getViewTreeObserver().addOnPreDrawListener(this.d);
    }
}
