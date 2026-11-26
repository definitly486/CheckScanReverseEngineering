package defpackage;

import android.view.View;
import com.wdullaer.materialdatetimepicker.time.TimePickerDialog;
import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class g84 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ g84(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                IntegrationInspectorActivity.a((IntegrationInspectorActivity) obj, view);
                break;
            default:
                ((TimePickerDialog) obj).lambda$onCreateView$2(view);
                break;
        }
    }
}
