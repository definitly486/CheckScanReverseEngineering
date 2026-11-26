package com.warefly.checkscan.presentation.addScreenshots.bottomSheet;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogHelpUploadScreenshotBinding;
import defpackage.bs6;
import defpackage.cl4;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jg4;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.og4;
import defpackage.p51;
import defpackage.po4;
import defpackage.ud9;
import defpackage.v05;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class HelpLoadScreenshotBottomSheet extends BaseBottomSheetDialog<DialogHelpUploadScreenshotBinding> implements HelpLoadScreenshotsView {
    public static final /* synthetic */ ze4<Object>[] g;
    public final long d;
    public final ud9 e;
    public final cl4 f;
    public HelpLoadScreenshotsPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            HelpLoadScreenshotBottomSheet.this.dismiss();
            return j59.a;
        }
    }

    public static final class b implements ll3<v05> {
        public b() {
        }

        /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, v05] */
        /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, v05] */
        @Override // defpackage.ll3
        public final v05 invoke() {
            jg4 jg4Var = HelpLoadScreenshotBottomSheet.this;
            return jg4Var instanceof og4 ? m2.c(v05.class, ((og4) jg4Var).getScope(), null, null) : jg4Var.b().c.d.e(x07.a(v05.class), null, null);
        }
    }

    static {
        bs6 bs6Var = new bs6(HelpLoadScreenshotBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogHelpUploadScreenshotBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    public HelpLoadScreenshotBottomSheet(Context context, long j) {
        super(context, R.style.BottomSheetDialogTheme);
        this.d = j;
        this.e = new ud9(DialogHelpUploadScreenshotBinding.class, this);
        this.f = nm4.a(po4.SYNCHRONIZED, new b());
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        ImageView imageView = ((DialogHelpUploadScreenshotBinding) ud9Var.d).btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final HelpLoadScreenshotsPresenter providePresenter() {
        return new HelpLoadScreenshotsPresenter((p51) (this instanceof og4 ? m2.c(p51.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(p51.class), null, null)), this.d);
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.bottomSheet.HelpLoadScreenshotsView
    public final void showData(String str) {
        str.getClass();
        v05 v05Var = (v05) this.f.getValue();
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        v05Var.a(((DialogHelpUploadScreenshotBinding) ud9Var.d).tvHelpScreenshots, str);
    }
}
