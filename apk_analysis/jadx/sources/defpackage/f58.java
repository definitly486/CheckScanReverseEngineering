package defpackage;

import android.text.SpannableStringBuilder;
import android.text.Spanned;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class f58 implements Appendable, CharSequence {
    public final ArrayDeque c = new ArrayDeque(8);
    public final StringBuilder b = new StringBuilder((CharSequence) "");

    public static class a {
        public final Object a;
        public final int b;
        public final int c;
        public final int d;

        public a(Object obj, int i, int i2, int i3) {
            this.a = obj;
            this.b = i;
            this.c = i2;
            this.d = i3;
        }
    }

    public static class b extends SpannableStringBuilder {
    }

    public f58() {
        b(0, "");
    }

    public static void c(f58 f58Var, Object obj, int i, int i2) {
        if (obj != null) {
            if (!obj.getClass().isArray()) {
                f58Var.c.push(new a(obj, i, i2, 33));
                return;
            }
            for (Object obj2 : (Object[]) obj) {
                c(f58Var, obj2, i, i2);
            }
        }
    }

    public final void a(char c) {
        this.b.append(c);
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i, int i2) {
        CharSequence charSequenceSubSequence = charSequence.subSequence(i, i2);
        StringBuilder sb = this.b;
        b(sb.length(), charSequenceSubSequence);
        sb.append(charSequenceSubSequence);
        return this;
    }

    public final void b(int i, CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            boolean z = spanned instanceof b;
            Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
            int length = spans != null ? spans.length : 0;
            if (length > 0) {
                ArrayDeque arrayDeque = this.c;
                if (!z) {
                    for (int i2 = 0; i2 < length; i2++) {
                        Object obj = spans[i2];
                        arrayDeque.push(new a(obj, spanned.getSpanStart(obj) + i, spanned.getSpanEnd(obj) + i, spanned.getSpanFlags(obj)));
                    }
                    return;
                }
                for (int i3 = length - 1; i3 >= 0; i3--) {
                    Object obj2 = spans[i3];
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) spanned;
                    arrayDeque.push(new a(obj2, spannableStringBuilder.getSpanStart(obj2) + i, spannableStringBuilder.getSpanEnd(obj2) + i, spannableStringBuilder.getSpanFlags(obj2)));
                }
            }
        }
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.b.charAt(i);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.b.length();
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        List<a> listUnmodifiableList;
        int i3;
        StringBuilder sb = this.b;
        int length = sb.length();
        if (i2 <= i || i < 0 || i2 > length) {
            listUnmodifiableList = Collections.EMPTY_LIST;
        } else {
            ArrayDeque arrayDeque = this.c;
            if (i == 0 && length == i2) {
                ArrayList arrayList = new ArrayList(arrayDeque);
                Collections.reverse(arrayList);
                listUnmodifiableList = Collections.unmodifiableList(arrayList);
            } else {
                ArrayList arrayList2 = new ArrayList(0);
                Iterator itDescendingIterator = arrayDeque.descendingIterator();
                while (itDescendingIterator.hasNext()) {
                    a aVar = (a) itDescendingIterator.next();
                    int i4 = aVar.b;
                    if ((i4 >= i && i4 < i2) || (((i3 = aVar.c) <= i2 && i3 > i) || (i4 < i && i3 > i2))) {
                        arrayList2.add(aVar);
                    }
                }
                listUnmodifiableList = Collections.unmodifiableList(arrayList2);
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            return sb.subSequence(i, i2);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(sb.subSequence(i, i2));
        int length2 = spannableStringBuilder.length();
        for (a aVar2 : listUnmodifiableList) {
            int iMax = Math.max(0, aVar2.b - i);
            spannableStringBuilder.setSpan(aVar2.a, iMax, Math.min(length2, (aVar2.c - aVar2.b) + iMax), aVar2.d);
        }
        return spannableStringBuilder;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.b.toString();
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c) {
        this.b.append(c);
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        StringBuilder sb = this.b;
        b(sb.length(), charSequence);
        sb.append(charSequence);
        return this;
    }
}
