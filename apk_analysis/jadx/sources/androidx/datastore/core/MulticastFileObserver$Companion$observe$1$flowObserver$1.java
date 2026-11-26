package androidx.datastore.core;

import defpackage.aa4;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.t91;
import defpackage.ug6;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class MulticastFileObserver$Companion$observe$1$flowObserver$1 extends gh4 implements nl3<String, j59> {
    final /* synthetic */ ug6<j59> $$this$channelFlow;
    final /* synthetic */ File $file;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MulticastFileObserver$Companion$observe$1$flowObserver$1(File file, ug6<? super j59> ug6Var) {
        super(1);
        this.$file = file;
        this.$$this$channelFlow = ug6Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(String str) {
        if (aa4.e(str, this.$file.getName())) {
            t91.a(this.$$this$channelFlow, j59.a);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(String str) {
        invoke2(str);
        return j59.a;
    }
}
