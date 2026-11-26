package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class y46 implements d76 {
    public final p61 a;
    public final bx5 b;
    public final tq5<du4> c;

    public y46(p61 p61Var, bx5 bx5Var) {
        this.a = p61Var;
        this.b = bx5Var;
        this.c = (tq5) p61Var.h.getValue();
    }

    @Override // defpackage.d76
    public final p08 a() {
        return new p08(this.a.a(null), new q3(x46.g, 3));
    }

    @Override // defpackage.d76
    public final void b() {
        Object value;
        bx5 bx5Var = this.b;
        z68 z68Var = bx5Var.c;
        int iIntValue = ((Number) z68Var.getValue()).intValue() + 1;
        if (iIntValue == ((List) bx5Var.b.getValue()).size()) {
            return;
        }
        do {
            value = z68Var.getValue();
            ((Number) value).intValue();
        } while (!z68Var.a(value, Integer.valueOf(iIntValue)));
    }

    @Override // defpackage.d76
    public final tq5<du4> c() {
        return this.c;
    }
}
