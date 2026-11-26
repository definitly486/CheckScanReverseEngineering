package androidx.compose.material3;

import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.DateInputKt$DateInputTextField$5$1", f = "DateInput.kt", l = {}, m = "invokeSuspend")
public final class DateInputKt$DateInputTextField$5$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ CalendarModel $calendarModel;
    final /* synthetic */ DateInputFormat $dateInputFormat;
    final /* synthetic */ Long $initialDateMillis;
    final /* synthetic */ Locale $locale;
    final /* synthetic */ MutableState<TextFieldValue> $text$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DateInputKt$DateInputTextField$5$1(Long l, CalendarModel calendarModel, DateInputFormat dateInputFormat, Locale locale, MutableState<TextFieldValue> mutableState, e02<? super DateInputKt$DateInputTextField$5$1> e02Var) {
        super(2, e02Var);
        this.$initialDateMillis = l;
        this.$calendarModel = calendarModel;
        this.$dateInputFormat = dateInputFormat;
        this.$locale = locale;
        this.$text$delegate = mutableState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DateInputKt$DateInputTextField$5$1(this.$initialDateMillis, this.$calendarModel, this.$dateInputFormat, this.$locale, this.$text$delegate, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((DateInputKt$DateInputTextField$5$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        Long l = this.$initialDateMillis;
        if (l != null) {
            CalendarModel calendarModel = this.$calendarModel;
            DateInputFormat dateInputFormat = this.$dateInputFormat;
            Locale locale = this.$locale;
            MutableState<TextFieldValue> mutableState = this.$text$delegate;
            String withPattern = calendarModel.formatWithPattern(l.longValue(), dateInputFormat.getPatternWithoutDelimiters(), locale);
            mutableState.setValue(new TextFieldValue(withPattern, withPattern.length() == 0 ? TextRange.Companion.m8496getZerod9O1mEE() : TextRangeKt.TextRange(withPattern.length(), withPattern.length()), (TextRange) null, 4, (jh2) null));
        }
        return j59.a;
    }
}
