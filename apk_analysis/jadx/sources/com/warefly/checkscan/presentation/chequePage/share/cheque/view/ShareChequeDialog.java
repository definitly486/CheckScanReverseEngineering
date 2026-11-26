package com.warefly.checkscan.presentation.chequePage.share.cheque.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogShareBinding;
import com.warefly.checkscan.databinding.ShareListItemBinding;
import com.warefly.checkscan.presentation.chequePage.share.cheque.presenter.ShareChequePresenter;
import com.warefly.checkscan.presentation.chequePage.share.cheque.presenter.ShareChequeView;
import com.warefly.checkscan.presentation.chequePage.share.cheque.view.ShareChequeDialog;
import defpackage.aa4;
import defpackage.bg2;
import defpackage.bs6;
import defpackage.cl0;
import defpackage.dm3;
import defpackage.fu1;
import defpackage.gh4;
import defpackage.h6;
import defpackage.hd1;
import defpackage.j59;
import defpackage.jz7;
import defpackage.me0;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.oz7;
import defpackage.ps7;
import defpackage.qx1;
import defpackage.ra8;
import defpackage.rj;
import defpackage.ss7;
import defpackage.ud9;
import defpackage.uz7;
import defpackage.v8;
import defpackage.w34;
import defpackage.x07;
import defpackage.yr;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ShareChequeDialog extends BaseBottomSheetDialog<DialogShareBinding> implements ShareChequeView {
    public static final /* synthetic */ ze4<Object>[] g;
    public final hd1 d;
    public final ud9 e;
    public final fu1 f;
    public ShareChequePresenter presenter;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ShareChequeView.a.values().length];
            try {
                iArr[ShareChequeView.a.Message.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShareChequeView.a.Excel.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShareChequeView.a.Json.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements nl3<ShareChequeView.a, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(ShareChequeView.a aVar) {
            ShareChequeView.a aVar2 = aVar;
            aVar2.getClass();
            ShareChequePresenter shareChequePresenter = ShareChequeDialog.this.presenter;
            if (shareChequePresenter != null) {
                shareChequePresenter.onShareOptionClicked(aVar2);
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class c extends gh4 implements nl3<View, ShareListItemBinding> {
        public static final c f = new c(1);

        @Override // defpackage.nl3
        public final ShareListItemBinding invoke(View view) {
            View view2 = view;
            view2.getClass();
            return ShareListItemBinding.bind(view2);
        }
    }

    public static final class d extends gh4 implements dm3<ShareListItemBinding, ShareChequeView.a, Integer, j59> {
        public final /* synthetic */ RecyclerView f;

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[ShareChequeView.a.values().length];
                try {
                    iArr[ShareChequeView.a.Message.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ShareChequeView.a.Excel.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ShareChequeView.a.Json.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(RecyclerView recyclerView) {
            super(3);
            this.f = recyclerView;
        }

        @Override // defpackage.dm3
        public final j59 invoke(ShareListItemBinding shareListItemBinding, ShareChequeView.a aVar, Integer num) {
            int i;
            ShareListItemBinding shareListItemBinding2 = shareListItemBinding;
            ShareChequeView.a aVar2 = aVar;
            num.intValue();
            shareListItemBinding2.getClass();
            aVar2.getClass();
            TextView textView = shareListItemBinding2.tvShareOption;
            Context context = this.f.getContext();
            int i2 = a.a[aVar2.ordinal()];
            if (i2 == 1) {
                i = R.string.send_as_qrcode;
            } else if (i2 == 2) {
                i = R.string.send_as_excel_format;
            } else {
                if (i2 != 3) {
                    me0.e();
                    return null;
                }
                i = R.string.send_as_json_format;
            }
            textView.setText(context.getString(i));
            View view = shareListItemBinding2.divider;
            view.getClass();
            view.setVisibility(aVar2 != ShareChequeView.a.Json ? 0 : 8);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(ShareChequeDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogShareBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareChequeDialog(Context context, hd1 hd1Var) {
        super(context, R.style.BottomSheetDialogTheme);
        hd1Var.getClass();
        this.d = hd1Var;
        this.e = new ud9(DialogShareBinding.class, this);
        this.f = new fu1();
    }

    public static String g(String str) {
        return me0.c("\"", ra8.y(str, "\"", "\"\""), "\"");
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f.d();
        super.dismiss();
    }

    public final DialogShareBinding e() {
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        return (DialogShareBinding) ud9Var.d;
    }

    public final void f(oz7 oz7Var) {
        e().pbLoading.setVisibility(0);
        uz7 uz7Var = new uz7(oz7Var.i(ne7.b).f(rj.a()), new h6() { // from class: qs7
            @Override // defpackage.h6
            public final void run() {
                ze4<Object>[] ze4VarArr = ShareChequeDialog.g;
                this.a.e().pbLoading.setVisibility(4);
            }
        });
        final v8 v8Var = new v8(this, 2);
        this.f.b(uz7Var.g(new qx1() { // from class: rs7
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                ze4<Object>[] ze4VarArr = ShareChequeDialog.g;
                v8Var.invoke(obj);
            }
        }, new cl0(ss7.f, 2)));
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DialogShareBinding dialogShareBindingE = e();
        dialogShareBindingE.tvTitle.setText(getContext().getString(R.string.share_check_title));
        ShareChequePresenter shareChequePresenter = this.presenter;
        if (shareChequePresenter == null) {
            aa4.j("presenter");
            throw null;
        }
        shareChequePresenter.onChequeReceived(this.d);
        RecyclerView recyclerView = dialogShareBindingE.rvOptions;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(new jz7(R.layout.share_list_item, yr.h0(ShareChequeView.a.values()), new b(), c.f, new d(recyclerView)));
    }

    public final ShareChequePresenter providePresenter() {
        return new ShareChequePresenter();
    }

    @Override // com.warefly.checkscan.presentation.chequePage.share.cheque.presenter.ShareChequeView
    public final void shareAs(ShareChequeView.a aVar, hd1 hd1Var) {
        aVar.getClass();
        hd1Var.getClass();
        int i = a.a[aVar.ordinal()];
        if (i == 1) {
            f(new oz7(new bg2(this, hd1Var)));
            return;
        }
        if (i == 2) {
            f(new oz7(new ps7(this, hd1Var)));
        } else if (i != 3) {
            dismiss();
        } else {
            f(new oz7(new w34(this, hd1Var)));
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.share.cheque.presenter.ShareChequeView
    public final void showLoading(boolean z) {
        ProgressBar progressBar = e().pbLoading;
        progressBar.getClass();
        progressBar.setVisibility(!z ? 4 : 0);
    }
}
