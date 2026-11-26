package defpackage;

import android.view.inputmethod.InsertGesture;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import kotlin.KotlinNothingValueException;
import yads.l66;
import yads.lp1;
import yads.uq3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ng implements Id3Decoder.FramePredicate, d29, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ ng(oa6 oa6Var) {
        this.b = 6;
    }

    public static /* bridge */ /* synthetic */ InsertGesture c(Object obj) {
        return (InsertGesture) obj;
    }

    public static String d(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    public static StringBuilder e(int i, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb;
    }

    public static KotlinNothingValueException f(String str) {
        InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck(str);
        return new KotlinNothingValueException();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 9:
                return lp1.a(((Long) obj).longValue());
            default:
                return uq3.a(obj);
        }
    }

    @Override // defpackage.d29
    public Object apply(Object obj) {
        return ((MessagingClientEventExtension) obj).toByteArray();
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Decoder.FramePredicate
    public boolean evaluate(int i, int i2, int i3, int i4, int i5) {
        return Id3Decoder.lambda$static$0(i, i2, i3, i4, i5);
    }

    public /* synthetic */ ng(int i) {
        this.b = i;
    }
}
