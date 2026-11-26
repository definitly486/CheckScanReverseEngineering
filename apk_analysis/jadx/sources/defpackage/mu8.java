package defpackage;

import android.view.View;
import com.my.target.g2;
import com.my.target.l;
import com.my.target.w2;
import com.wdullaer.materialdatetimepicker.time.TimePickerDialog;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mu8 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mu8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((TimePickerDialog) obj).lambda$onCreateView$5(view);
                break;
            default:
                int i2 = g2.s;
                l.a aVar = ((g2) obj).r;
                if (aVar != null) {
                    ((w2.b) aVar).b(1, new gia());
                }
                break;
        }
    }
}
