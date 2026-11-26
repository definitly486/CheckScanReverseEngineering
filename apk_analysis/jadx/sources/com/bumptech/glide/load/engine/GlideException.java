package com.bumptech.glide.load.engine;

import android.util.Log;
import defpackage.kf4;
import defpackage.ti0;
import defpackage.y82;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class GlideException extends Exception {
    public static final StackTraceElement[] g = new StackTraceElement[0];
    public final List<Throwable> b;
    public kf4 c;
    public y82 d;
    public Class<?> e;
    public final String f;

    public GlideException(String str, List<Throwable> list) {
        this.f = str;
        setStackTrace(g);
        this.b = list;
    }

    public static void a(Throwable th, ArrayList arrayList) {
        if (th instanceof GlideException) {
            Iterator<Throwable> it = ((GlideException) th).b.iterator();
            while (it.hasNext()) {
                a(it.next(), arrayList);
            }
        } else if (th != null) {
            arrayList.add(th);
        }
    }

    public static void b(List list, a aVar) throws IOException {
        int size = list.size();
        int i = 0;
        while (i < size) {
            aVar.append("Cause (");
            int i2 = i + 1;
            aVar.append(String.valueOf(i2));
            aVar.append(" of ");
            aVar.append(String.valueOf(size));
            aVar.append("): ");
            Throwable th = (Throwable) list.get(i);
            if (th instanceof GlideException) {
                ((GlideException) th).f(aVar);
            } else {
                d(th, aVar);
            }
            i = i2;
        }
    }

    public static void d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            ti0.f(th);
        }
    }

    public final void e() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i2 = i + 1;
            sb.append(i2);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i("Glide", sb.toString(), (Throwable) arrayList.get(i));
            i = i2;
        }
    }

    public final void f(Appendable appendable) {
        d(this, appendable);
        try {
            b(this.b, new a(appendable));
        } catch (IOException e) {
            ti0.f(e);
        }
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f);
        sb.append(this.e != null ? ", " + this.e : "");
        sb.append(this.d != null ? ", " + this.d : "");
        sb.append(this.c != null ? ", " + this.c : "");
        ArrayList<Throwable> arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" root causes:");
        }
        for (Throwable th : arrayList) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        f(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        f(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        f(printWriter);
    }

    public GlideException(String str) {
        this(str, Collections.EMPTY_LIST);
    }

    public static final class a implements Appendable {
        public final Appendable b;
        public boolean c = true;

        public a(Appendable appendable) {
            this.b = appendable;
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence, int i, int i2) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            boolean z = this.c;
            Appendable appendable = this.b;
            boolean z2 = false;
            if (z) {
                this.c = false;
                appendable.append("  ");
            }
            if (charSequence.length() > 0 && charSequence.charAt(i2 - 1) == '\n') {
                z2 = true;
            }
            this.c = z2;
            appendable.append(charSequence, i, i2);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            append(charSequence, 0, charSequence.length());
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c) throws IOException {
            boolean z = this.c;
            Appendable appendable = this.b;
            if (z) {
                this.c = false;
                appendable.append("  ");
            }
            this.c = c == '\n';
            appendable.append(c);
            return this;
        }
    }
}
