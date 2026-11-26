package androidx.compose.ui.viewinterop;

import android.os.Handler;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidViewHolder$Companion$OnCommitAffectingUpdate$1 extends gh4 implements nl3<AndroidViewHolder, j59> {
    public static final AndroidViewHolder$Companion$OnCommitAffectingUpdate$1 INSTANCE = new AndroidViewHolder$Companion$OnCommitAffectingUpdate$1();

    public AndroidViewHolder$Companion$OnCommitAffectingUpdate$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(AndroidViewHolder androidViewHolder) {
        Handler handler = androidViewHolder.getHandler();
        final ll3 ll3Var = androidViewHolder.runUpdate;
        handler.post(new Runnable() { // from class: androidx.compose.ui.viewinterop.a
            @Override // java.lang.Runnable
            public final void run() {
                ll3Var.invoke();
            }
        });
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(AndroidViewHolder androidViewHolder) {
        invoke2(androidViewHolder);
        return j59.a;
    }
}
