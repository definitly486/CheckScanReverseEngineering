package com.warefly.checkscan.presentation.commonDialogs;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.BottomsheetWelcomeFullBannerBinding;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;
import defpackage.b06;
import defpackage.bs6;
import defpackage.ds2;
import defpackage.fw0;
import defpackage.gh4;
import defpackage.hc0;
import defpackage.j59;
import defpackage.kd;
import defpackage.lb7;
import defpackage.le9;
import defpackage.nl3;
import defpackage.pl2;
import defpackage.ud9;
import defpackage.x07;
import defpackage.zd3;
import defpackage.ze4;
import eightbitlab.com.blurview.BlurView;

/* JADX INFO: loaded from: classes5.dex */
public final class WelcomeFullBannerBottomSheet extends BaseBottomSheetDialog<BottomsheetWelcomeFullBannerBinding> {
    public static final /* synthetic */ ze4<Object>[] h;
    public final hc0.a d;
    public final DesktopFlowFragment.c e;
    public final DesktopFlowFragment.d f;
    public final ud9 g;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            String str;
            view.getClass();
            WelcomeFullBannerBottomSheet welcomeFullBannerBottomSheet = WelcomeFullBannerBottomSheet.this;
            hc0.a aVar = welcomeFullBannerBottomSheet.d;
            b06 b06Var = aVar.q;
            if (b06Var != null && (str = b06Var.c) != null) {
                new kd.e0.j(str).a();
            }
            new kd.g0.a.C0258a.C0259a(aVar.g).c();
            welcomeFullBannerBottomSheet.openUrl(aVar.r);
            welcomeFullBannerBottomSheet.dismiss();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            String str;
            view.getClass();
            WelcomeFullBannerBottomSheet welcomeFullBannerBottomSheet = WelcomeFullBannerBottomSheet.this;
            hc0.a aVar = welcomeFullBannerBottomSheet.d;
            b06 b06Var = aVar.q;
            if (b06Var != null && (str = b06Var.c) != null) {
                new kd.e0.k(str).a();
            }
            new kd.g0.a.C0258a.c(aVar.g).c();
            welcomeFullBannerBottomSheet.dismiss();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ b06 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(b06 b06Var) {
            super(1);
            this.g = b06Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            WelcomeFullBannerBottomSheet.this.e.a(this.g);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(WelcomeFullBannerBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WelcomeFullBannerBottomSheet(Context context, hc0.a aVar, DesktopFlowFragment.c cVar, DesktopFlowFragment.d dVar) {
        super(context, R.style.BottomSheetDialogTheme24);
        context.getClass();
        aVar.getClass();
        this.d = aVar;
        this.e = cVar;
        this.f = dVar;
        this.g = new ud9(BottomsheetWelcomeFullBannerBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        hc0.a aVar = this.d;
        int i = aVar.g;
        fw0 fw0Var = aVar.k;
        fw0 fw0Var2 = aVar.e;
        new kd.g0.a.C0258a.b(i).c();
        this.f.a(aVar.g);
        ze4<Object> ze4Var = h[0];
        ud9 ud9Var = this.g;
        ud9Var.getClass();
        ze4Var.getClass();
        BottomsheetWelcomeFullBannerBinding bottomsheetWelcomeFullBannerBinding = (BottomsheetWelcomeFullBannerBinding) ud9Var.d;
        Integer num = aVar.a;
        if (num != null) {
            ds2.a(bottomsheetWelcomeFullBannerBinding.getRoot().getBackground(), num.intValue());
        }
        ImageView imageView = bottomsheetWelcomeFullBannerBinding.ivCover;
        imageView.getClass();
        le9.d(24, imageView);
        com.bumptech.glide.a.d(getContext()).h(aVar.i).L(bottomsheetWelcomeFullBannerBinding.ivCover);
        b06 b06Var = aVar.q;
        if (b06Var != null) {
            BlurView root = bottomsheetWelcomeFullBannerBinding.incldAdsBadge.getRoot();
            root.getClass();
            root.setVisibility(b06Var.b ? 0 : 8);
            BlurView root2 = bottomsheetWelcomeFullBannerBinding.incldAdsBadge.getRoot();
            root2.getClass();
            root2.setOnClickListener(new lb7(new c(b06Var)));
            BlurView blurView = bottomsheetWelcomeFullBannerBinding.incldAdsBadge.blurView;
            blurView.getClass();
            ConstraintLayout root3 = bottomsheetWelcomeFullBannerBinding.getRoot();
            root3.getClass();
            zd3.h(blurView, root3);
        }
        TextView textView = bottomsheetWelcomeFullBannerBinding.btnAction;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
        bottomsheetWelcomeFullBannerBinding.btnAction.setText(fw0Var2 != null ? fw0Var2.b : null);
        if (fw0Var2 != null) {
            bottomsheetWelcomeFullBannerBinding.btnAction.setTextColor(fw0Var2.a.intValue());
        }
        if (fw0Var2 != null && fw0Var2.c != null) {
            TextView textView2 = bottomsheetWelcomeFullBannerBinding.btnAction;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(pl2.d(8.0f));
            gradientDrawable.setColor(fw0Var2.c.intValue());
            textView2.setBackground(gradientDrawable);
        }
        bottomsheetWelcomeFullBannerBinding.btnSecondAction.setText(fw0Var != null ? fw0Var.b : null);
        TextView textView3 = bottomsheetWelcomeFullBannerBinding.btnSecondAction;
        textView3.getClass();
        textView3.setOnClickListener(new lb7(new b()));
        if (fw0Var != null) {
            bottomsheetWelcomeFullBannerBinding.btnSecondAction.setTextColor(fw0Var.a.intValue());
        }
        TextView textView4 = bottomsheetWelcomeFullBannerBinding.btnSecondAction;
        textView4.getClass();
        textView4.setVisibility(fw0Var == null ? 8 : 0);
    }
}
