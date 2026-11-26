package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.presentation.commonDialogs.BannerBottomSheetDialog;
import com.warefly.checkscan.presentation.commonDialogs.WelcomeFullBannerBottomSheet;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class bc0 implements zb0 {
    public BaseBottomSheetDialog<?> a;

    @Override // defpackage.zb0
    public final void a(hc0.a aVar, DesktopFlowFragment.c cVar, DesktopFlowFragment.d dVar, LifecycleOwner lifecycleOwner, Context context) {
        BaseBottomSheetDialog<?> bannerBottomSheetDialog;
        aVar.getClass();
        BaseBottomSheetDialog<?> baseBottomSheetDialog = this.a;
        if ((baseBottomSheetDialog == null || !baseBottomSheetDialog.isShowing()) && context != null && lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.RESUMED) {
            if (aVar.s) {
                bannerBottomSheetDialog = new WelcomeFullBannerBottomSheet(context, aVar, cVar, dVar);
                bannerBottomSheetDialog.show();
            } else {
                bannerBottomSheetDialog = new BannerBottomSheetDialog(context, aVar, cVar, dVar);
                bannerBottomSheetDialog.show();
            }
            this.a = bannerBottomSheetDialog;
            bannerBottomSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: ac0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.b.a = null;
                }
            });
        }
    }
}
