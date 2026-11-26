package com.warefly.checkscan.presentation.chequePage.share.cheque.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.hd1;

/* JADX INFO: loaded from: classes5.dex */
public interface ShareChequeView extends BaseView {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a Excel;
        public static final a Json;
        public static final a Message;

        static {
            a aVar = new a("Message", 0);
            Message = aVar;
            a aVar2 = new a("Excel", 1);
            Excel = aVar2;
            a aVar3 = new a("Json", 2);
            Json = aVar3;
            $VALUES = new a[]{aVar, aVar2, aVar3};
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

    void shareAs(a aVar, hd1 hd1Var);

    void showLoading(boolean z);
}
