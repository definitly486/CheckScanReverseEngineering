package defpackage;

import com.warefly.checkscan.R;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class wv2 implements vv2 {
    public final s47 a;

    public wv2(s47 s47Var) {
        this.a = s47Var;
    }

    @Override // defpackage.vv2
    public final List<rv6> a() {
        s47 s47Var = this.a;
        return u96.i(new rv6(new pv6(s47Var.getString(R.string.elecro_cheque_question_first_title), "Актуальный список магазинов, где можно получить электронные чеки, можно посмотреть <a href='https://mco.nalog.ru/partners/markets'>по ссылке</a>")), new rv6(new pv6(s47Var.getString(R.string.elecro_cheque_question_second_title), s47Var.getString(R.string.elecro_cheque_question_second_description))), new rv6(new pv6(s47Var.getString(R.string.elecro_cheque_question_third_title), s47Var.getString(R.string.elecro_cheque_question_third_description))), new rv6(new pv6(s47Var.getString(R.string.elecro_cheque_question_fourth_title), s47Var.getString(R.string.elecro_cheque_question_fourth_description))), new rv6(new pv6(s47Var.getString(R.string.elecro_cheque_question_fifth_title), s47Var.getString(R.string.elecro_cheque_question_fifth_description))));
    }

    @Override // defpackage.vv2
    public final List<t64> b() {
        s47 s47Var = this.a;
        return u96.i(new t64(new s64(s47Var.getString(R.string.electro_cheque_instructions_first_title), R.drawable.ic_yellow_scan, s47Var.getString(R.string.electro_cheque_instructions_first_description))), new t64(new s64(s47Var.getString(R.string.electro_cheque_instructions_second_title), R.drawable.ic_red_cart, s47Var.getString(R.string.electro_cheque_instructions_second_description))), new t64(new s64(s47Var.getString(R.string.electro_cheque_instructions_third_title), R.drawable.ic_receipt, s47Var.getString(R.string.electro_cheque_instructions_third_description)), true));
    }
}
