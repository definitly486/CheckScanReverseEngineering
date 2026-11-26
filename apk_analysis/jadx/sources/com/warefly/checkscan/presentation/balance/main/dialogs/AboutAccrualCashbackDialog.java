package com.warefly.checkscan.presentation.balance.main.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogChequeCashbackAccrualBinding;
import defpackage.bj;
import defpackage.bs6;
import defpackage.cl4;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jg4;
import defpackage.k57;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.og4;
import defpackage.pl2;
import defpackage.po4;
import defpackage.qn1;
import defpackage.ra8;
import defpackage.ta8;
import defpackage.u96;
import defpackage.ud9;
import defpackage.v05;
import defpackage.x07;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class AboutAccrualCashbackDialog extends BaseBottomSheetDialog<DialogChequeCashbackAccrualBinding> {
    public static final /* synthetic */ ze4<Object>[] h;
    public final String d;
    public final String e;
    public final cl4 f;
    public final ud9 g;

    public static final class a extends gh4 implements nl3<String, CharSequence> {
        public final /* synthetic */ float f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(float f) {
            super(1);
            this.f = f;
        }

        @Override // defpackage.nl3
        public final CharSequence invoke(String str) {
            String str2 = str;
            str2.getClass();
            Pattern patternCompile = Pattern.compile("\\d\\. ");
            patternCompile.getClass();
            return patternCompile.matcher(str2).find() ? bj.c(str2, ra8.x(((int) this.f) - 1, "⠀")) : str2;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AboutAccrualCashbackDialog.this.dismiss();
            return j59.a;
        }
    }

    public static final class c implements ll3<v05> {
        public c() {
        }

        /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, v05] */
        /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, v05] */
        @Override // defpackage.ll3
        public final v05 invoke() {
            jg4 jg4Var = AboutAccrualCashbackDialog.this;
            return jg4Var instanceof og4 ? m2.c(v05.class, ((og4) jg4Var).getScope(), null, null) : jg4Var.b().c.d.e(x07.a(v05.class), null, null);
        }
    }

    static {
        bs6 bs6Var = new bs6(AboutAccrualCashbackDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AboutAccrualCashbackDialog(Context context, String str, String str2) {
        super(context, R.style.BottomSheetDialogTheme);
        str.getClass();
        str2.getClass();
        this.d = str;
        this.e = str2;
        this.f = nm4.a(po4.SYNCHRONIZED, new c());
        this.g = new ud9(DialogChequeCashbackAccrualBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        Object aVar;
        List listH;
        cl4 cl4Var = this.f;
        String str = this.d;
        super.onCreate(bundle);
        int iEnd = 0;
        ze4<Object> ze4Var = h[0];
        ud9 ud9Var = this.g;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogChequeCashbackAccrualBinding dialogChequeCashbackAccrualBinding = (DialogChequeCashbackAccrualBinding) ud9Var.d;
        String str2 = this.e;
        if (!ta8.M(str2)) {
            dialogChequeCashbackAccrualBinding.tvTitle.setText(str2);
        }
        try {
            float fE = ((getContext().getResources().getDisplayMetrics().widthPixels - pl2.e(32)) - dialogChequeCashbackAccrualBinding.tvAboutAccrual.getPaint().measureText("1. ")) / dialogChequeCashbackAccrualBinding.tvAboutAccrual.getPaint().measureText("⠀");
            Pattern patternCompile = Pattern.compile("\\d-\\d~");
            patternCompile.getClass();
            str.getClass();
            Matcher matcher = patternCompile.matcher(str);
            if (matcher.find()) {
                ArrayList arrayList = new ArrayList(10);
                do {
                    arrayList.add(str.subSequence(iEnd, matcher.start()).toString());
                    iEnd = matcher.end();
                } while (matcher.find());
                arrayList.add(str.subSequence(iEnd, str.length()).toString());
                listH = arrayList;
            } else {
                listH = u96.h(str.toString());
            }
            ((v05) cl4Var.getValue()).a(dialogChequeCashbackAccrualBinding.tvAboutAccrual, qn1.a0(listH, "\n", null, null, 0, new a(fE), 30));
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            ((v05) cl4Var.getValue()).a(dialogChequeCashbackAccrualBinding.tvAboutAccrual, str);
        }
        ImageView imageView = dialogChequeCashbackAccrualBinding.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
    }
}
