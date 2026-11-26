package yads;

import android.text.Layout;

/* JADX INFO: loaded from: classes6.dex */
public final class d36 {
    public String a;
    public int b;
    public boolean c;
    public int d;
    public boolean e;
    public float k;
    public String l;
    public Layout.Alignment o;
    public Layout.Alignment p;
    public dw5 r;
    public int f = -1;
    public int g = -1;
    public int h = -1;
    public int i = -1;
    public int j = -1;
    public int m = -1;
    public int n = -1;
    public int q = -1;
    public float s = Float.MAX_VALUE;

    public final d36 a(d36 d36Var) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (d36Var != null) {
            if (!this.c && d36Var.c) {
                this.b = d36Var.b;
                this.c = true;
            }
            if (this.h == -1) {
                this.h = d36Var.h;
            }
            if (this.i == -1) {
                this.i = d36Var.i;
            }
            if (this.a == null && (str = d36Var.a) != null) {
                this.a = str;
            }
            if (this.f == -1) {
                this.f = d36Var.f;
            }
            if (this.g == -1) {
                this.g = d36Var.g;
            }
            if (this.n == -1) {
                this.n = d36Var.n;
            }
            if (this.o == null && (alignment2 = d36Var.o) != null) {
                this.o = alignment2;
            }
            if (this.p == null && (alignment = d36Var.p) != null) {
                this.p = alignment;
            }
            if (this.q == -1) {
                this.q = d36Var.q;
            }
            if (this.j == -1) {
                this.j = d36Var.j;
                this.k = d36Var.k;
            }
            if (this.r == null) {
                this.r = d36Var.r;
            }
            if (this.s == Float.MAX_VALUE) {
                this.s = d36Var.s;
            }
            if (!this.e && d36Var.e) {
                this.d = d36Var.d;
                this.e = true;
            }
            if (this.m == -1 && (i = d36Var.m) != -1) {
                this.m = i;
            }
        }
        return this;
    }
}
