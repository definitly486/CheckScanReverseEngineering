package com.warefly.checkscan.presentation.webview;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.webkit.internal.AssetHelper;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogShareBinding;
import com.warefly.checkscan.databinding.SimpleListItemBinding;
import defpackage.bs6;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jz7;
import defpackage.me0;
import defpackage.nl3;
import defpackage.oz1;
import defpackage.ud9;
import defpackage.x07;
import defpackage.yr;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ShareWebPageDialog extends BaseBottomSheetDialog<DialogShareBinding> {
    public static final /* synthetic */ ze4<Object>[] f;
    public final String d;
    public final ud9 e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a CopyLink;
        public static final a ShareLink;

        static {
            a aVar = new a("CopyLink", 0);
            CopyLink = aVar;
            a aVar2 = new a("ShareLink", 1);
            ShareLink = aVar2;
            $VALUES = new a[]{aVar, aVar2};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[a.values().length];
            try {
                iArr[a.CopyLink.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[a.ShareLink.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class c extends gh4 implements nl3<a, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(a aVar) {
            View decorView;
            View decorView2;
            a aVar2 = aVar;
            aVar2.getClass();
            ze4<Object>[] ze4VarArr = ShareWebPageDialog.f;
            ShareWebPageDialog shareWebPageDialog = ShareWebPageDialog.this;
            String str = shareWebPageDialog.d;
            int i = b.a[aVar2.ordinal()];
            if (i == 1) {
                Object systemService = shareWebPageDialog.getContext().getSystemService("clipboard");
                systemService.getClass();
                ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(shareWebPageDialog.getContext().getString(R.string.webview_url_clipboard_label), str));
                Window window = shareWebPageDialog.getWindow();
                if (window != null && (decorView = window.getDecorView()) != null) {
                    oz1.g(R.string.webview_url_copied_to_clipboard, decorView);
                }
            } else if (i == 2) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.TEXT", shareWebPageDialog.getContext().getString(R.string.webpage_copy_share_placeholder, str));
                intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
                try {
                    shareWebPageDialog.getContext().startActivity(intent);
                    j59 j59Var = j59.a;
                } catch (Exception unused) {
                    Window window2 = shareWebPageDialog.getWindow();
                    if (window2 != null && (decorView2 = window2.getDecorView()) != null) {
                        oz1.g(R.string.webpage_copy_share_exception, decorView2);
                        j59 j59Var2 = j59.a;
                    }
                }
            }
            shareWebPageDialog.dismiss();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, SimpleListItemBinding> {
        public static final d f = new d(1);

        @Override // defpackage.nl3
        public final SimpleListItemBinding invoke(View view) {
            View view2 = view;
            view2.getClass();
            return SimpleListItemBinding.bind(view2);
        }
    }

    public static final class e extends gh4 implements dm3<SimpleListItemBinding, a, Integer, j59> {
        public final /* synthetic */ RecyclerView f;

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[a.values().length];
                try {
                    iArr[a.CopyLink.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[a.ShareLink.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(RecyclerView recyclerView) {
            super(3);
            this.f = recyclerView;
        }

        @Override // defpackage.dm3
        public final j59 invoke(SimpleListItemBinding simpleListItemBinding, a aVar, Integer num) {
            int i;
            SimpleListItemBinding simpleListItemBinding2 = simpleListItemBinding;
            a aVar2 = aVar;
            num.intValue();
            simpleListItemBinding2.getClass();
            aVar2.getClass();
            TextView textView = simpleListItemBinding2.text1;
            Context context = this.f.getContext();
            int i2 = a.a[aVar2.ordinal()];
            if (i2 == 1) {
                i = R.string.webpage_copy_link;
            } else {
                if (i2 != 2) {
                    me0.e();
                    return null;
                }
                i = R.string.webpage_copy_share;
            }
            textView.setText(context.getString(i));
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(ShareWebPageDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogShareBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareWebPageDialog(Context context, String str) {
        super(context, R.style.BottomSheetDialogTheme);
        str.getClass();
        this.d = str;
        this.e = new ud9(DialogShareBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = f[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogShareBinding dialogShareBinding = (DialogShareBinding) ud9Var.d;
        dialogShareBinding.tvTitle.setText(getContext().getString(R.string.share_title));
        RecyclerView recyclerView = dialogShareBinding.rvOptions;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(new jz7(R.layout.simple_list_item, yr.h0(a.values()), new c(), d.f, new e(recyclerView)));
    }
}
