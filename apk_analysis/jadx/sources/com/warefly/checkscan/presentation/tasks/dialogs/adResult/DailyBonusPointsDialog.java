package com.warefly.checkscan.presentation.tasks.dialogs.adResult;

import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogFragment;
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;
import com.warefly.checkscan.databinding.DialogDailyBonusPointsBinding;
import com.warefly.checkscan.tasks.presentation.adResult.DailyBonusPoints;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.kv1;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class DailyBonusPointsDialog extends BaseDialogFragment<DialogDailyBonusPointsBinding> {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public final ol4 c;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            DailyBonusPointsDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(DailyBonusPointsDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogDailyBonusPointsBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
    }

    public DailyBonusPointsDialog() {
        super(R.layout.dialog_daily_bonus_points);
        this.c = new ol4(DialogDailyBonusPointsBinding.class);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.DialogFragmentTransparent);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(-1, -1);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        Parcelable parcelable;
        view.getClass();
        super.onViewCreated(view, bundle);
        Bundle bundleRequireArguments = requireArguments();
        bundleRequireArguments.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) bundleRequireArguments.getParcelable("DAILY_BONUS_KEY", DailyBonusPoints.class);
        } else {
            Parcelable parcelable2 = bundleRequireArguments.getParcelable("DAILY_BONUS_KEY");
            if (!(parcelable2 instanceof DailyBonusPoints)) {
                parcelable2 = null;
            }
            parcelable = (DailyBonusPoints) parcelable2;
        }
        DailyBonusPoints dailyBonusPoints = (DailyBonusPoints) parcelable;
        if (dailyBonusPoints != null) {
            DialogDailyBonusPointsBinding dialogDailyBonusPointsBinding = (DialogDailyBonusPointsBinding) this.c.getValue(this, e[0]);
            dialogDailyBonusPointsBinding.tvTitle.setText(dailyBonusPoints.c);
            dialogDailyBonusPointsBinding.tvDescription.setText(dailyBonusPoints.d);
            com.bumptech.glide.a.d(requireContext()).h(dailyBonusPoints.b).L(dialogDailyBonusPointsBinding.ivPrize);
            com.bumptech.glide.a.d(requireContext()).h(dailyBonusPoints.e).L(dialogDailyBonusPointsBinding.ivBadge);
            dialogDailyBonusPointsBinding.btnPositive.setText(dailyBonusPoints.f);
            TextView textView = dialogDailyBonusPointsBinding.btnPositive;
            textView.getClass();
            textView.setOnClickListener(new lb7(new b()));
            dialogDailyBonusPointsBinding.incldConfetti.lottieConfetti.setAnimation(R.raw.lottie_confetti2);
            ConfettiLayoutBinding confettiLayoutBinding = dialogDailyBonusPointsBinding.incldConfetti;
            confettiLayoutBinding.getClass();
            kv1.a(confettiLayoutBinding);
        }
    }
}
