package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class rz8 implements Serializable {
    public static final rz8 INSTANCE = new rz8();
    public static final /* synthetic */ cl4<df4<Object>> b = nm4.a(po4.PUBLICATION, a.f);

    public static final class a extends gh4 implements ll3<df4<Object>> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final df4<Object> invoke() {
            return new rq5("com.warefly.checkscan.presentation.balance.transferCashback.phone.view.TransferPhoneDialogListener.TransferSuccess", rz8.INSTANCE, new Annotation[0]);
        }
    }

    public final df4<rz8> serializer() {
        return (df4) b.getValue();
    }
}
