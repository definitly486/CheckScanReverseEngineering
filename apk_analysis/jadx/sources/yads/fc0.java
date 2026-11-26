package yads;

import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class fc0 implements wz3 {
    public final CheckBox a;
    public final ProgressBar b;
    public final TextView c;

    public fc0(CheckBox checkBox, ProgressBar progressBar, TextView textView) {
        this.a = checkBox;
        this.b = progressBar;
        this.c = textView;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fc0)) {
            return false;
        }
        fc0 fc0Var = (fc0) obj;
        return defpackage.aa4.e(this.a, fc0Var.a) && defpackage.aa4.e(this.b, fc0Var.b) && defpackage.aa4.e(this.c, fc0Var.c);
    }

    @Override // yads.wz3
    public final TextView getCountDownProgress() {
        return this.c;
    }

    @Override // yads.wz3
    public final CheckBox getMuteControl() {
        return this.a;
    }

    @Override // yads.wz3
    public final ProgressBar getVideoProgress() {
        return this.b;
    }

    public final int hashCode() {
        CheckBox checkBox = this.a;
        int iHashCode = (checkBox == null ? 0 : checkBox.hashCode()) * 31;
        ProgressBar progressBar = this.b;
        int iHashCode2 = (iHashCode + (progressBar == null ? 0 : progressBar.hashCode())) * 31;
        TextView textView = this.c;
        return iHashCode2 + (textView != null ? textView.hashCode() : 0);
    }

    public final String toString() {
        return "CustomControlsContainer(muteControl=" + this.a + ", videoProgress=" + this.b + ", countDownProgress=" + this.c + ")";
    }
}
