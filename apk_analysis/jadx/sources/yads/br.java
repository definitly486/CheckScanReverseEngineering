package yads;

/* JADX INFO: loaded from: classes6.dex */
public class br {
    public final ls4 a;

    public br(ls4 ls4Var) {
        this.a = ls4Var;
        ls4Var.setId(2);
    }

    public void a(String str) {
        ls4 ls4Var = this.a;
        ls4Var.loadDataWithBaseURL("https://yandex.ru", ls4Var.a(str), "text/html", "UTF-8", null);
    }

    public void a(ha3 ha3Var) {
        this.a.setHtmlWebViewListener(ha3Var);
    }
}
