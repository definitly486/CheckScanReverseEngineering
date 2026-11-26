package defpackage;

import android.app.Activity;

/* JADX INFO: loaded from: classes.dex */
public final class e69 extends gh4 implements ll3<j59> {
    public final /* synthetic */ s59 f;
    public final /* synthetic */ s59.c.C0329c g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e69(s59 s59Var, s59.c.C0329c c0329c) {
        super(0);
        this.f = s59Var;
        this.g = c0329c;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        s59.c.C0329c c0329c = this.g;
        c0329c.h = false;
        s59 s59Var = this.f;
        if (s59Var.f == c0329c && !c0329c.g) {
            c0329c.h = true;
            cy8 cy8Var = s59Var.c;
            cy8Var.b = new cy8.a(new e69(s59Var, c0329c), new f69(s59Var, c0329c));
            Activity activity = cy8Var.a;
            if (activity != null) {
                cy8Var.a(activity);
            }
        }
        return j59.a;
    }
}
