package defpackage;

import android.view.View;
import com.wdullaer.materialdatetimepicker.time.TimePickerDialog;
import yads.yt5;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ku8 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ku8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((TimePickerDialog) obj).lambda$onCreateView$0(view);
                break;
            default:
                yt5.a((yt5) obj, view);
                break;
        }
    }
}
