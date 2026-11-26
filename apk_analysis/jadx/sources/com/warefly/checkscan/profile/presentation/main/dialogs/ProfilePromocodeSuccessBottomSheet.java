package com.warefly.checkscan.profile.presentation.main.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.profile.databinding.DialogProfilePromocodeSuccessBinding;
import defpackage.bs6;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.j59;
import defpackage.kd;
import defpackage.kn1;
import defpackage.lb7;
import defpackage.nk6;
import defpackage.nl3;
import defpackage.nm6;
import defpackage.ok6;
import defpackage.q6;
import defpackage.ud9;
import defpackage.wk6;
import defpackage.x07;
import defpackage.xp6;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ProfilePromocodeSuccessBottomSheet extends BaseBottomSheetDialog<DialogProfilePromocodeSuccessBinding> {
    public static final /* synthetic */ ze4<Object>[] h;
    public final boolean d;
    public final q6 e;
    public final ud9 f;
    public eu1 g;

    public static final class a extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ q6.a f;
        public final /* synthetic */ ProfilePromocodeSuccessBottomSheet g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(q6.a aVar, ProfilePromocodeSuccessBottomSheet profilePromocodeSuccessBottomSheet) {
            super(1);
            this.f = aVar;
            this.g = profilePromocodeSuccessBottomSheet;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            String str = this.f.b;
            ProfilePromocodeSuccessBottomSheet profilePromocodeSuccessBottomSheet = this.g;
            if (str != null) {
                profilePromocodeSuccessBottomSheet.openUrl(str);
            }
            if (profilePromocodeSuccessBottomSheet.d) {
                kd.a.j.b.e.a();
            } else {
                kd.a.f.b.e.a();
            }
            profilePromocodeSuccessBottomSheet.dismiss();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ProfilePromocodeSuccessBottomSheet profilePromocodeSuccessBottomSheet = ProfilePromocodeSuccessBottomSheet.this;
            if (profilePromocodeSuccessBottomSheet.d) {
                kd.a.j.d.e.a();
            } else {
                kd.a.f.d.e.a();
            }
            profilePromocodeSuccessBottomSheet.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(ProfilePromocodeSuccessBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfilePromocodeSuccessBottomSheet(Context context, boolean z, q6 q6Var) {
        super(context, R.style.BottomSheetDialogTheme);
        q6Var.getClass();
        this.d = z;
        this.e = q6Var;
        this.f = new ud9(DialogProfilePromocodeSuccessBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.d) {
            kd.a.j.h.e.a();
        } else {
            kd.a.f.g.e.a();
        }
        ze4<Object>[] ze4VarArr = h;
        ze4<Object> ze4Var = ze4VarArr[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogProfilePromocodeSuccessBinding dialogProfilePromocodeSuccessBinding = (DialogProfilePromocodeSuccessBinding) ud9Var.d;
        TextView textView = dialogProfilePromocodeSuccessBinding.tvTitle;
        q6 q6Var = this.e;
        textView.setText(q6Var.c);
        dialogProfilePromocodeSuccessBinding.tvSubtitle.setText(q6Var.d);
        dialogProfilePromocodeSuccessBinding.tvDescription.setText(q6Var.e);
        com.bumptech.glide.a.d(getContext()).h(q6Var.a).L(dialogProfilePromocodeSuccessBinding.ivLogo);
        ze4<Object> ze4Var2 = ze4VarArr[0];
        ud9Var.getClass();
        ze4Var2.getClass();
        DialogProfilePromocodeSuccessBinding dialogProfilePromocodeSuccessBinding2 = (DialogProfilePromocodeSuccessBinding) ud9Var.d;
        RecyclerView recyclerView = dialogProfilePromocodeSuccessBinding2.rvBadges;
        eu1 eu1Var = new eu1(new ok6(nk6.c));
        this.g = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setLayoutManager(new ProfilePromocodeSuccessBottomSheet$setUpBadges$1$1$2(dialogProfilePromocodeSuccessBinding2.getRoot().getContext(), 1, false));
        recyclerView.addItemDecoration(new nm6());
        TextView textView2 = null;
        recyclerView.setItemAnimator(null);
        eu1 eu1Var2 = this.g;
        if (eu1Var2 != null) {
            List<xp6> list = q6Var.b;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new wk6((xp6) it.next()));
            }
            eu1Var2.submitList(arrayList);
        }
        q6.a aVar = q6Var.g;
        if (aVar != null) {
            textView2 = dialogProfilePromocodeSuccessBinding.btnAbout;
            textView2.setText(aVar.a);
            textView2.setOnClickListener(new lb7(new a(aVar, this)));
        }
        if (textView2 == null) {
            TextView textView3 = dialogProfilePromocodeSuccessBinding.btnAbout;
            textView3.getClass();
            textView3.setVisibility(8);
        }
        TextView textView4 = dialogProfilePromocodeSuccessBinding.btnOk;
        textView4.setText(q6Var.f.a);
        textView4.setOnClickListener(new lb7(new b()));
    }
}
