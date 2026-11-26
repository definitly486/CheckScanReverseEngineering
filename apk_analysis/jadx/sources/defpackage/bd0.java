package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialogFragment;

/* JADX INFO: loaded from: classes.dex */
public final class bd0 extends gh4 implements ll3<gh5<BaseBottomSheetDialogFragment<?>>> {
    public final /* synthetic */ BaseBottomSheetDialogFragment<ViewBinding> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bd0(BaseBottomSheetDialogFragment<ViewBinding> baseBottomSheetDialogFragment) {
        super(0);
        this.f = baseBottomSheetDialogFragment;
    }

    @Override // defpackage.ll3
    public final gh5<BaseBottomSheetDialogFragment<?>> invoke() {
        return new gh5<>(this.f);
    }
}
