package yads;

import defpackage.nl3;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes6.dex */
public final class mx2 extends ur {
    public final nl3 e;

    public mx2(sr srVar, nl3 nl3Var) {
        super(srVar);
        this.e = nl3Var;
    }

    @Override // yads.ur
    public final void a(PatternSyntaxException patternSyntaxException) {
        this.e.invoke(patternSyntaxException);
    }
}
