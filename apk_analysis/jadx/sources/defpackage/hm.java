package defpackage;

import androidx.activity.result.ActivityResultCallback;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.util.ListUtilsKt;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;
import kotlin.KotlinNothingValueException;
import yads.e92;
import yads.gl1;
import yads.l66;
import yads.ry1;
import yads.th1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hm implements ActivityResultCallback, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ hm(int i) {
        this.b = i;
    }

    public static bm3 b(ComposeUiNode.Companion companion, Composer composer, Integer num, Composer composer2) {
        Updater.m5363setimpl(composer, num, companion.getSetCompositeKeyHash());
        Updater.m5361reconcileimpl(composer2, companion.getApplyOnDeactivatedNodeAssertion());
        return companion.getSetModifier();
    }

    public static StringBuilder c(bm3 bm3Var, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        charSequence4.getClass();
        bm3Var.getClass();
        return new StringBuilder();
    }

    public static KotlinNothingValueException d(String str) {
        ListUtilsKt.throwNoSuchElementException(str);
        return new KotlinNothingValueException();
    }

    public static /* synthetic */ void e(int i, int i2) {
        throw new IllegalArgumentException("Length too large: " + i + i2);
    }

    public static /* synthetic */ void f(Object obj, StringBuilder sb) {
        sb.append(obj);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 6:
                return e92.b(l.longValue());
            case 7:
                return gl1.a(l.longValue());
            case 8:
                return ry1.a(l.longValue());
            default:
                return th1.b(l.longValue());
        }
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ((Boolean) obj).getClass();
        ze4<Object>[] ze4VarArr = DesktopFlowFragment.s;
    }
}
