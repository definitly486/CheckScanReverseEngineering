package yads;

import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class a96 extends RuntimeException {
    public final y86 b;
    public final z86 c;

    /* JADX WARN: Illegal instructions before constructor call */
    public a96(y86 y86Var, z86 z86Var) {
        String lowerCase = z86Var.name().toLowerCase(Locale.US);
        lowerCase.getClass();
        super("Verification not executed with reason = ".concat(lowerCase));
        this.b = y86Var;
        this.c = z86Var;
    }
}
