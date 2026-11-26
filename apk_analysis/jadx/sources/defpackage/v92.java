package defpackage;

import android.view.View;
import com.wdullaer.materialdatetimepicker.date.DatePickerDialog;
import yads.vn0;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class v92 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ v92(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((DatePickerDialog) obj).lambda$onCreateView$0(view);
                break;
            default:
                vn0.a((vn0) obj, view);
                break;
        }
    }
}
