package com.warefly.checkscan.presentation.commonDialogs;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogBannerGeneralBinding;
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
import defpackage.nl3;
import defpackage.ta8;
import defpackage.ud9;
import defpackage.x07;
import defpackage.zd3;
import defpackage.ze4;
import eightbitlab.com.blurview.BlurView;

/* JADX INFO: loaded from: classes5.dex */
public final class BannerBottomSheetDialog extends BaseBottomSheetDialog<DialogBannerGeneralBinding> {
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
            BannerBottomSheetDialog bannerBottomSheetDialog = BannerBottomSheetDialog.this;
            hc0.a aVar = bannerBottomSheetDialog.d;
            b06 b06Var = aVar.q;
            if (b06Var != null && (str = b06Var.c) != null) {
                new kd.e0.j(str).a();
            }
            new kd.g0.a.C0258a.C0259a(aVar.g).c();
            bannerBottomSheetDialog.openUrl(aVar.r);
            bannerBottomSheetDialog.dismiss();
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
            BannerBottomSheetDialog bannerBottomSheetDialog = BannerBottomSheetDialog.this;
            hc0.a aVar = bannerBottomSheetDialog.d;
            b06 b06Var = aVar.q;
            if (b06Var != null && (str = b06Var.c) != null) {
                new kd.e0.k(str).a();
            }
            new kd.g0.a.C0258a.c(aVar.g).c();
            bannerBottomSheetDialog.dismiss();
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
            BannerBottomSheetDialog.this.e.a(this.g);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(BannerBottomSheetDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerBottomSheetDialog(Context context, hc0.a aVar, DesktopFlowFragment.c cVar, DesktopFlowFragment.d dVar) {
        super(context, R.style.BottomSheetDialogTheme);
        context.getClass();
        aVar.getClass();
        this.d = aVar;
        this.e = cVar;
        this.f = dVar;
        this.g = new ud9(DialogBannerGeneralBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        hc0.a aVar = this.d;
        int i = aVar.g;
        String str = aVar.m;
        new kd.g0.a.C0258a.b(i).c();
        this.f.a(aVar.g);
        ze4<Object> ze4Var = h[0];
        ud9 ud9Var = this.g;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogBannerGeneralBinding dialogBannerGeneralBinding = (DialogBannerGeneralBinding) ud9Var.d;
        try {
            Integer num = aVar.a;
            if (num != null) {
                ds2.a(dialogBannerGeneralBinding.layoutRoot.getBackground(), num.intValue());
                j59 j59Var = j59.a;
            }
        } catch (Throwable unused) {
        }
        if ((str == null || ta8.M(str)) && (str = aVar.o) == null) {
            str = "";
        }
        dialogBannerGeneralBinding.tvTitle.setText(str);
        try {
            Integer num2 = aVar.n;
            if (num2 != null) {
                dialogBannerGeneralBinding.tvTitle.setTextColor(num2.intValue());
            }
            j59 j59Var2 = j59.a;
        } catch (Throwable unused2) {
        }
        dialogBannerGeneralBinding.tvSubtitle.setText(aVar.l);
        try {
            Integer num3 = aVar.j;
            if (num3 != null) {
                dialogBannerGeneralBinding.tvSubtitle.setTextColor(num3.intValue());
            }
            j59 j59Var3 = j59.a;
        } catch (Throwable unused3) {
        }
        fw0 fw0Var = aVar.e;
        if (fw0Var != null) {
            dialogBannerGeneralBinding.btnMain.setText(fw0Var.b);
            try {
                dialogBannerGeneralBinding.btnMain.setTextColor(fw0Var.a.intValue());
                j59 j59Var4 = j59.a;
            } catch (Throwable unused4) {
            }
            try {
                Integer num4 = fw0Var.c;
                if (num4 != null) {
                    dialogBannerGeneralBinding.btnMain.setBackgroundTintList(ColorStateList.valueOf(num4.intValue()));
                    j59 j59Var5 = j59.a;
                }
            } catch (Throwable unused5) {
            }
        }
        fw0 fw0Var2 = aVar.k;
        if (fw0Var2 != null) {
            dialogBannerGeneralBinding.btnSub.setText(fw0Var2.b);
            try {
                dialogBannerGeneralBinding.btnSub.setTextColor(fw0Var2.a.intValue());
                j59 j59Var6 = j59.a;
            } catch (Throwable unused6) {
            }
            try {
                Integer num5 = fw0Var2.c;
                if (num5 != null) {
                    ds2.a(dialogBannerGeneralBinding.btnSub.getBackground(), num5.intValue());
                    j59 j59Var7 = j59.a;
                }
            } catch (Throwable unused7) {
            }
        }
        com.bumptech.glide.a.d(getContext()).h(aVar.i).L(dialogBannerGeneralBinding.image);
        b06 b06Var = aVar.q;
        if (b06Var != null) {
            BlurView root = dialogBannerGeneralBinding.incldAdsBadge.getRoot();
            root.getClass();
            root.setVisibility(b06Var.b ? 0 : 8);
            BlurView root2 = dialogBannerGeneralBinding.incldAdsBadge.getRoot();
            root2.getClass();
            root2.setOnClickListener(new lb7(new c(b06Var)));
            BlurView blurView = dialogBannerGeneralBinding.incldAdsBadge.blurView;
            blurView.getClass();
            LinearLayout root3 = dialogBannerGeneralBinding.getRoot();
            root3.getClass();
            zd3.h(blurView, root3);
        }
        Button button = dialogBannerGeneralBinding.btnMain;
        button.getClass();
        button.setOnClickListener(new lb7(new a()));
        TextView textView = dialogBannerGeneralBinding.btnSub;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
    }
}
