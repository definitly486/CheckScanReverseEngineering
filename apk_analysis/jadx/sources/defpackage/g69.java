package defpackage;

import androidx.media3.container.MdtaMetadataEntry;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController", f = "UnityOfferwallController.kt", l = {63, 67, MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT}, m = "showOnMain")
public final class g69 extends f02 {
    public Object l;
    public /* synthetic */ Object m;
    public final /* synthetic */ s59 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g69(s59 s59Var, f02 f02Var) {
        super(f02Var);
        this.n = s59Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.g(null, null, null, this);
    }
}
