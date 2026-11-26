package androidx.compose.ui.text;

import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.aa4;
import defpackage.b36;
import defpackage.ej0;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.pp1;
import defpackage.qn1;
import defpackage.u96;
import defpackage.ul2;
import defpackage.xp;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AnnotatedString implements CharSequence {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final Saver<AnnotatedString, ?> Saver = SaversKt.getAnnotatedStringSaver();
    private final List<Range<? extends Annotation>> annotations;
    private final List<Range<ParagraphStyle>> paragraphStylesOrNull;
    private final List<Range<SpanStyle>> spanStylesOrNull;
    private final String text;

    public interface Annotation {
    }

    public static final class Builder implements Appendable {
        public static final int $stable = 8;
        private final List<MutableRange<? extends Annotation>> annotations;
        private final BulletScope bulletScope;
        private final List<MutableRange<? extends Object>> styleStack;
        private final StringBuilder text;

        public static final class BulletScope {
            public static final int $stable = 8;
            private final Builder builder;
            private final List<b36<TextUnit, Bullet>> bulletListSettingStack = new ArrayList();

            public BulletScope(Builder builder) {
                this.builder = builder;
            }

            public final Builder getBuilder$ui_text() {
                return this.builder;
            }

            public final List<b36<TextUnit, Bullet>> getBulletListSettingStack$ui_text() {
                return this.bulletListSettingStack;
            }
        }

        public Builder(int i) {
            this.text = new StringBuilder(i);
            this.styleStack = new ArrayList();
            this.annotations = new ArrayList();
            this.bulletScope = new BulletScope(this);
        }

        /* JADX INFO: renamed from: withBulletList-o2QH7mI$default, reason: not valid java name */
        public static /* synthetic */ Object m8327withBulletListo2QH7mI$default(Builder builder, long j, Bullet bullet, nl3 nl3Var, int i, Object obj) {
            if ((i & 1) != 0) {
                j = Bullet.Companion.m8335getDefaultIndentationXSAIIZE();
            }
            if ((i & 2) != 0) {
                bullet = Bullet.Companion.getDefault();
            }
            return builder.m8329withBulletListo2QH7mI(j, bullet, nl3Var);
        }

        public static /* synthetic */ Object withBulletListItem$default(Builder builder, BulletScope bulletScope, Bullet bullet, nl3 nl3Var, int i, Object obj) {
            if ((i & 1) != 0) {
                bullet = null;
            }
            return builder.withBulletListItem(bulletScope, bullet, nl3Var);
        }

        public final void addBullet(Bullet bullet, int i, int i2) {
            this.annotations.add(new MutableRange<>(bullet, i, i2, null, 8, null));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: addBullet-r9BaKPg, reason: not valid java name */
        public final void m8328addBulletr9BaKPg(Bullet bullet, long j, int i, int i2) {
            Object[] objArr = 0 == true ? 1 : 0;
            this.annotations.add(new MutableRange<>(new ParagraphStyle(0, 0, 0L, new TextIndent(j, j, null), (PlatformParagraphStyle) objArr, (LineHeightStyle) null, 0, 0, (TextMotion) null, TypedValues.PositionType.TYPE_PERCENT_WIDTH, (jh2) null), i, i2, null, 8, 0 == true ? 1 : 0));
            this.annotations.add(new MutableRange<>(bullet, i, i2, 0 == true ? 1 : 0, 8, null));
        }

        public final void addLink(LinkAnnotation.Url url, int i, int i2) {
            this.annotations.add(new MutableRange<>(url, i, i2, null, 8, null));
        }

        public final void addStringAnnotation(String str, String str2, int i, int i2) {
            this.annotations.add(new MutableRange<>(StringAnnotation.m8439boximpl(StringAnnotation.m8440constructorimpl(str2)), i, i2, str));
        }

        public final void addStyle(SpanStyle spanStyle, int i, int i2) {
            this.annotations.add(new MutableRange<>(spanStyle, i, i2, null, 8, null));
        }

        public final void addTtsAnnotation(TtsAnnotation ttsAnnotation, int i, int i2) {
            this.annotations.add(new MutableRange<>(ttsAnnotation, i, i2, null, 8, null));
        }

        @ul2
        public final void addUrlAnnotation(UrlAnnotation urlAnnotation, int i, int i2) {
            this.annotations.add(new MutableRange<>(urlAnnotation, i, i2, null, 8, null));
        }

        public final void append(AnnotatedString annotatedString, int i, int i2) {
            int length = this.text.length();
            this.text.append((CharSequence) annotatedString.getText(), i, i2);
            List localAnnotations$default = AnnotatedStringKt.getLocalAnnotations$default(annotatedString, i, i2, null, 4, null);
            if (localAnnotations$default != null) {
                int size = localAnnotations$default.size();
                for (int i3 = 0; i3 < size; i3++) {
                    Range range = (Range) localAnnotations$default.get(i3);
                    this.annotations.add(new MutableRange<>(range.getItem(), range.getStart() + length, range.getEnd() + length, range.getTag()));
                }
            }
        }

        public final void flatMapAnnotations$ui_text(nl3<? super Range<? extends Annotation>, ? extends List<? extends Range<? extends Annotation>>> nl3Var) {
            List<MutableRange<? extends Annotation>> list = this.annotations;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                List<? extends Range<? extends Annotation>> listInvoke = nl3Var.invoke(MutableRange.toRange$default(list.get(i), 0, 1, null));
                ArrayList arrayList2 = new ArrayList(listInvoke.size());
                int size2 = listInvoke.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    arrayList2.add(MutableRange.Companion.fromRange(listInvoke.get(i2)));
                }
                nn1.s(arrayList2, arrayList);
            }
            this.annotations.clear();
            this.annotations.addAll(arrayList);
        }

        public final int getLength() {
            return this.text.length();
        }

        public final void mapAnnotations$ui_text(nl3<? super Range<? extends Annotation>, ? extends Range<? extends Annotation>> nl3Var) {
            int size = this.annotations.size();
            for (int i = 0; i < size; i++) {
                this.annotations.set(i, MutableRange.Companion.fromRange(nl3Var.invoke(MutableRange.toRange$default(this.annotations.get(i), 0, 1, null))));
            }
        }

        public final void pop(int i) {
            if (!(i < this.styleStack.size())) {
                InlineClassHelperKt.throwIllegalStateException(i + " should be less than " + this.styleStack.size());
            }
            while (this.styleStack.size() - 1 >= i) {
                pop();
            }
        }

        public final int pushBullet(Bullet bullet) {
            MutableRange<? extends Annotation> mutableRange = new MutableRange<>(bullet, this.text.length(), 0, null, 12, null);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final int pushLink(LinkAnnotation linkAnnotation) {
            MutableRange<? extends Annotation> mutableRange = new MutableRange<>(linkAnnotation, this.text.length(), 0, null, 12, null);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final int pushStringAnnotation(String str, String str2) {
            MutableRange<? extends Annotation> mutableRange = new MutableRange<>(StringAnnotation.m8439boximpl(StringAnnotation.m8440constructorimpl(str2)), this.text.length(), 0, str, 4, null);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final int pushStyle(SpanStyle spanStyle) {
            MutableRange<? extends Annotation> mutableRange = new MutableRange<>(spanStyle, this.text.length(), 0, null, 12, null);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final int pushTtsAnnotation(TtsAnnotation ttsAnnotation) {
            MutableRange<? extends Annotation> mutableRange = new MutableRange<>(ttsAnnotation, this.text.length(), 0, null, 12, null);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        @ul2
        public final int pushUrlAnnotation(UrlAnnotation urlAnnotation) {
            MutableRange<? extends Annotation> mutableRange = new MutableRange<>(urlAnnotation, this.text.length(), 0, null, 12, null);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final AnnotatedString toAnnotatedString() {
            String string = this.text.toString();
            List<MutableRange<? extends Annotation>> list = this.annotations;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(list.get(i).toRange(this.text.length()));
            }
            return new AnnotatedString(string, arrayList);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: withBulletList-o2QH7mI, reason: not valid java name */
        public final <R> R m8329withBulletListo2QH7mI(long j, Bullet bullet, nl3<? super BulletScope, ? extends R> nl3Var) {
            long j2;
            long em;
            b36 b36Var = (b36) qn1.c0(this.bulletScope.getBulletListSettingStack$ui_text());
            if (b36Var != null) {
                long jM9245unboximpl = ((TextUnit) b36Var.b).m9245unboximpl();
                if (!TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(jM9245unboximpl), TextUnit.m9235getTypeUIouoOA(j))) {
                    InlineClassHelperKt.throwIllegalStateException("Indentation unit types of nested bullet lists must match. Current " + ((Object) TextUnit.m9243toStringimpl(jM9245unboximpl)) + " and previous is " + ((Object) TextUnit.m9243toStringimpl(j)));
                }
                long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(j);
                TextUnitType.Companion companion = TextUnitType.Companion;
                if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
                    em = TextUnitKt.getSp(TextUnit.m9236getValueimpl(jM9245unboximpl) + TextUnit.m9236getValueimpl(j));
                } else if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA())) {
                    em = TextUnitKt.getEm(TextUnit.m9236getValueimpl(jM9245unboximpl) + TextUnit.m9236getValueimpl(j));
                } else {
                    em = j;
                }
                j2 = em;
            } else {
                j2 = j;
            }
            int iPushStyle = pushStyle(new ParagraphStyle(0, 0, 0L, new TextIndent(j2, j2, null), null, null, 0, 0, null, TypedValues.PositionType.TYPE_PERCENT_WIDTH, (jh2) null));
            this.bulletScope.getBulletListSettingStack$ui_text().add(new b36<>(TextUnit.m9226boximpl(j2), bullet));
            try {
                return nl3Var.invoke(this.bulletScope);
            } finally {
                if (!this.bulletScope.getBulletListSettingStack$ui_text().isEmpty()) {
                    this.bulletScope.getBulletListSettingStack$ui_text().remove(u96.g(this.bulletScope.getBulletListSettingStack$ui_text()));
                }
                pop(iPushStyle);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <R> R withBulletListItem(BulletScope bulletScope, Bullet bullet, nl3<? super Builder, ? extends R> nl3Var) {
            Bullet bullet2;
            b36 b36Var = (b36) qn1.c0(bulletScope.getBulletListSettingStack$ui_text());
            long jM9245unboximpl = b36Var != null ? ((TextUnit) b36Var.b).m9245unboximpl() : Bullet.Companion.m8335getDefaultIndentationXSAIIZE();
            if (bullet != null) {
                bullet2 = bullet;
            } else if (b36Var == null || (bullet2 = (Bullet) b36Var.c) == null) {
                bullet2 = Bullet.Companion.getDefault();
            }
            int iPushStyle = bulletScope.getBuilder$ui_text().pushStyle(new ParagraphStyle(0, 0, 0L, new TextIndent(jM9245unboximpl, jM9245unboximpl, null), (PlatformParagraphStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, TypedValues.PositionType.TYPE_PERCENT_WIDTH, (jh2) null));
            int iPushBullet = bulletScope.getBuilder$ui_text().pushBullet(bullet2);
            try {
                return nl3Var.invoke(bulletScope.getBuilder$ui_text());
            } finally {
                bulletScope.getBuilder$ui_text().pop(iPushBullet);
                bulletScope.getBuilder$ui_text().pop(iPushStyle);
            }
        }

        public static final class MutableRange<T> {
            public static final Companion Companion = new Companion(null);
            private int end;
            private final T item;
            private final int start;
            private final String tag;

            public /* synthetic */ MutableRange(Object obj, int i, int i2, String str, int i3, jh2 jh2Var) {
                this(obj, i, (i3 & 4) != 0 ? Integer.MIN_VALUE : i2, (i3 & 8) != 0 ? "" : str);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ MutableRange copy$default(MutableRange mutableRange, Object obj, int i, int i2, String str, int i3, Object obj2) {
                if ((i3 & 1) != 0) {
                    obj = mutableRange.item;
                }
                if ((i3 & 2) != 0) {
                    i = mutableRange.start;
                }
                if ((i3 & 4) != 0) {
                    i2 = mutableRange.end;
                }
                if ((i3 & 8) != 0) {
                    str = mutableRange.tag;
                }
                return mutableRange.copy(obj, i, i2, str);
            }

            public static /* synthetic */ Range toRange$default(MutableRange mutableRange, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = Integer.MIN_VALUE;
                }
                return mutableRange.toRange(i);
            }

            public final T component1() {
                return this.item;
            }

            public final int component2() {
                return this.start;
            }

            public final int component3() {
                return this.end;
            }

            public final String component4() {
                return this.tag;
            }

            public final MutableRange<T> copy(T t, int i, int i2, String str) {
                return new MutableRange<>(t, i, i2, str);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof MutableRange)) {
                    return false;
                }
                MutableRange mutableRange = (MutableRange) obj;
                return aa4.e(this.item, mutableRange.item) && this.start == mutableRange.start && this.end == mutableRange.end && aa4.e(this.tag, mutableRange.tag);
            }

            public final int getEnd() {
                return this.end;
            }

            public final T getItem() {
                return this.item;
            }

            public final int getStart() {
                return this.start;
            }

            public final String getTag() {
                return this.tag;
            }

            public int hashCode() {
                T t = this.item;
                return this.tag.hashCode() + ej0.b(this.end, ej0.b(this.start, (t == null ? 0 : t.hashCode()) * 31, 31), 31);
            }

            public final void setEnd(int i) {
                this.end = i;
            }

            public final <R> Range<R> toRange(nl3<? super T, ? extends R> nl3Var, int i) {
                int i2 = this.end;
                if (i2 != Integer.MIN_VALUE) {
                    i = i2;
                }
                if (!(i != Integer.MIN_VALUE)) {
                    InlineClassHelperKt.throwIllegalStateException("Item.end should be set first");
                }
                return new Range<>(nl3Var.invoke(this.item), this.start, i, this.tag);
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("MutableRange(item=");
                sb.append(this.item);
                sb.append(", start=");
                sb.append(this.start);
                sb.append(", end=");
                sb.append(this.end);
                sb.append(", tag=");
                return xp.e(sb, this.tag, ')');
            }

            public static final class Companion {
                public /* synthetic */ Companion(jh2 jh2Var) {
                    this();
                }

                public final <T> MutableRange<T> fromRange(Range<T> range) {
                    return new MutableRange<>(range.getItem(), range.getStart(), range.getEnd(), range.getTag());
                }

                private Companion() {
                }
            }

            public static /* synthetic */ Range toRange$default(MutableRange mutableRange, nl3 nl3Var, int i, int i2, Object obj) {
                if ((i2 & 2) != 0) {
                    i = Integer.MIN_VALUE;
                }
                return mutableRange.toRange(nl3Var, i);
            }

            public MutableRange(T t, int i, int i2, String str) {
                this.item = t;
                this.start = i;
                this.end = i2;
                this.tag = str;
            }

            public final Range<T> toRange(int i) {
                int i2 = this.end;
                if (i2 != Integer.MIN_VALUE) {
                    i = i2;
                }
                if (!(i != Integer.MIN_VALUE)) {
                    InlineClassHelperKt.throwIllegalStateException("Item.end should be set first");
                }
                return new Range<>(this.item, this.start, i, this.tag);
            }
        }

        public final void addLink(LinkAnnotation.Clickable clickable, int i, int i2) {
            this.annotations.add(new MutableRange<>(clickable, i, i2, null, 8, null));
        }

        public final void addStyle(ParagraphStyle paragraphStyle, int i, int i2) {
            this.annotations.add(new MutableRange<>(paragraphStyle, i, i2, null, 8, null));
        }

        public Builder() {
            this(0, 1, null);
        }

        public /* synthetic */ Builder(int i, int i2, jh2 jh2Var) {
            this((i2 & 1) != 0 ? 16 : i);
        }

        public Builder(String str) {
            this(0, 1, null);
            append(str);
        }

        public Builder(AnnotatedString annotatedString) {
            this(0, 1, null);
            append(annotatedString);
        }

        public final int pushStyle(ParagraphStyle paragraphStyle) {
            MutableRange<? extends Annotation> mutableRange = new MutableRange<>(paragraphStyle, this.text.length(), 0, null, 12, null);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final void pop() {
            if (this.styleStack.isEmpty()) {
                InlineClassHelperKt.throwIllegalStateException("Nothing to pop.");
            }
            List<MutableRange<? extends Object>> list = this.styleStack;
            list.remove(list.size() - 1).setEnd(this.text.length());
        }

        public final void append(String str) {
            this.text.append(str);
        }

        @Override // java.lang.Appendable
        public Builder append(CharSequence charSequence) {
            if (charSequence instanceof AnnotatedString) {
                append((AnnotatedString) charSequence);
                return this;
            }
            this.text.append(charSequence);
            return this;
        }

        @Override // java.lang.Appendable
        public Builder append(CharSequence charSequence, int i, int i2) {
            if (charSequence instanceof AnnotatedString) {
                append((AnnotatedString) charSequence, i, i2);
                return this;
            }
            this.text.append(charSequence, i, i2);
            return this;
        }

        @Override // java.lang.Appendable
        public Builder append(char c) {
            this.text.append(c);
            return this;
        }

        public final void append(AnnotatedString annotatedString) {
            int length = this.text.length();
            this.text.append(annotatedString.getText());
            List<Range<? extends Annotation>> annotations$ui_text = annotatedString.getAnnotations$ui_text();
            if (annotations$ui_text != null) {
                int size = annotations$ui_text.size();
                for (int i = 0; i < size; i++) {
                    Range<? extends Annotation> range = annotations$ui_text.get(i);
                    this.annotations.add(new MutableRange<>(range.getItem(), range.getStart() + length, range.getEnd() + length, range.getTag()));
                }
            }
        }
    }

    public static final class ExhaustiveAnnotation implements Annotation {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AnnotatedString(List<? extends Range<? extends Annotation>> list, String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        this.annotations = list;
        this.text = str;
        if (list != 0) {
            int size = list.size();
            arrayList = null;
            arrayList2 = null;
            for (int i = 0; i < size; i++) {
                Range<SpanStyle> range = (Range) list.get(i);
                if (range.getItem() instanceof SpanStyle) {
                    arrayList = arrayList == null ? new ArrayList() : arrayList;
                    arrayList.add(range);
                } else if (range.getItem() instanceof ParagraphStyle) {
                    arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList2.add(range);
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        this.spanStylesOrNull = arrayList;
        this.paragraphStylesOrNull = arrayList2;
        List listN0 = arrayList2 != null ? qn1.n0(arrayList2, new Comparator() { // from class: androidx.compose.ui.text.AnnotatedString$special$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return pp1.a(Integer.valueOf(((AnnotatedString.Range) t).getStart()), Integer.valueOf(((AnnotatedString.Range) t2).getStart()));
            }
        }) : null;
        List list2 = listN0;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        MutableIntList mutableIntListMutableIntListOf = IntListKt.mutableIntListOf(((Range) qn1.T(listN0)).getEnd());
        int size2 = listN0.size();
        for (int i2 = 1; i2 < size2; i2++) {
            Range range2 = (Range) listN0.get(i2);
            while (mutableIntListMutableIntListOf._size != 0) {
                int iLast = mutableIntListMutableIntListOf.last();
                if (range2.getStart() < iLast) {
                    if (!(range2.getEnd() <= iLast)) {
                        InlineClassHelperKt.throwIllegalArgumentException("Paragraph overlap not allowed, end " + range2.getEnd() + " should be less than or equal to " + iLast);
                        break;
                    }
                    break;
                }
                mutableIntListMutableIntListOf.removeAt(mutableIntListMutableIntListOf._size - 1);
            }
            mutableIntListMutableIntListOf.add(range2.getEnd());
        }
    }

    @Override // java.lang.CharSequence
    public final /* bridge */ char charAt(int i) {
        return get(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnnotatedString)) {
            return false;
        }
        AnnotatedString annotatedString = (AnnotatedString) obj;
        return aa4.e(this.text, annotatedString.text) && aa4.e(this.annotations, annotatedString.annotations);
    }

    public final AnnotatedString flatMapAnnotations(nl3<? super Range<? extends Annotation>, ? extends List<? extends Range<? extends Annotation>>> nl3Var) {
        Builder builder = new Builder(this);
        builder.flatMapAnnotations$ui_text(nl3Var);
        return builder.toAnnotatedString();
    }

    public char get(int i) {
        return this.text.charAt(i);
    }

    public final List<Range<? extends Annotation>> getAnnotations$ui_text() {
        return this.annotations;
    }

    public int getLength() {
        return this.text.length();
    }

    public final List<Range<LinkAnnotation>> getLinkAnnotations(int i, int i2) {
        List<Range<? extends Annotation>> list = this.annotations;
        if (list == null) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            Range<? extends Annotation> range = list.get(i3);
            Range<? extends Annotation> range2 = range;
            if ((range2.getItem() instanceof LinkAnnotation) && AnnotatedStringKt.intersect(i, i2, range2.getStart(), range2.getEnd())) {
                arrayList.add(range);
            }
        }
        return arrayList;
    }

    public final List<Range<ParagraphStyle>> getParagraphStyles() {
        List<Range<ParagraphStyle>> list = this.paragraphStylesOrNull;
        return list == null ? kx2.b : list;
    }

    public final List<Range<ParagraphStyle>> getParagraphStylesOrNull$ui_text() {
        return this.paragraphStylesOrNull;
    }

    public final List<Range<SpanStyle>> getSpanStyles() {
        List<Range<SpanStyle>> list = this.spanStylesOrNull;
        return list == null ? kx2.b : list;
    }

    public final List<Range<SpanStyle>> getSpanStylesOrNull$ui_text() {
        return this.spanStylesOrNull;
    }

    public final List<Range<String>> getStringAnnotations(String str, int i, int i2) {
        List<Range<? extends Annotation>> list = this.annotations;
        if (list == null) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            Range<? extends Annotation> range = list.get(i3);
            if ((range.getItem() instanceof StringAnnotation) && aa4.e(str, range.getTag()) && AnnotatedStringKt.intersect(i, i2, range.getStart(), range.getEnd())) {
                arrayList.add(StringAnnotationKt.unbox(range));
            }
        }
        return arrayList;
    }

    public final String getText() {
        return this.text;
    }

    public final List<Range<TtsAnnotation>> getTtsAnnotations(int i, int i2) {
        List<Range<? extends Annotation>> list = this.annotations;
        if (list == null) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            Range<? extends Annotation> range = list.get(i3);
            Range<? extends Annotation> range2 = range;
            if ((range2.getItem() instanceof TtsAnnotation) && AnnotatedStringKt.intersect(i, i2, range2.getStart(), range2.getEnd())) {
                arrayList.add(range);
            }
        }
        return arrayList;
    }

    @ul2
    public final List<Range<UrlAnnotation>> getUrlAnnotations(int i, int i2) {
        List<Range<? extends Annotation>> list = this.annotations;
        if (list == null) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            Range<? extends Annotation> range = list.get(i3);
            Range<? extends Annotation> range2 = range;
            if ((range2.getItem() instanceof UrlAnnotation) && AnnotatedStringKt.intersect(i, i2, range2.getStart(), range2.getEnd())) {
                arrayList.add(range);
            }
        }
        return arrayList;
    }

    public final boolean hasEqualAnnotations(AnnotatedString annotatedString) {
        return aa4.e(this.annotations, annotatedString.annotations);
    }

    public final boolean hasLinkAnnotations(int i, int i2) {
        List<Range<? extends Annotation>> list = this.annotations;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Range<? extends Annotation> range = list.get(i3);
                if ((range.getItem() instanceof LinkAnnotation) && AnnotatedStringKt.intersect(i, i2, range.getStart(), range.getEnd())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean hasStringAnnotations(String str, int i, int i2) {
        List<Range<? extends Annotation>> list = this.annotations;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Range<? extends Annotation> range = list.get(i3);
                if ((range.getItem() instanceof StringAnnotation) && aa4.e(str, range.getTag()) && AnnotatedStringKt.intersect(i, i2, range.getStart(), range.getEnd())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = this.text.hashCode() * 31;
        List<Range<? extends Annotation>> list = this.annotations;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    @Override // java.lang.CharSequence
    public final /* bridge */ int length() {
        return getLength();
    }

    public final AnnotatedString mapAnnotations(nl3<? super Range<? extends Annotation>, ? extends Range<? extends Annotation>> nl3Var) {
        Builder builder = new Builder(this);
        builder.mapAnnotations$ui_text(nl3Var);
        return builder.toAnnotatedString();
    }

    public final AnnotatedString plus(AnnotatedString annotatedString) {
        Builder builder = new Builder(this);
        builder.append(annotatedString);
        return builder.toAnnotatedString();
    }

    @Override // java.lang.CharSequence
    public AnnotatedString subSequence(int i, int i2) {
        if (!(i <= i2)) {
            InlineClassHelperKt.throwIllegalArgumentException("start (" + i + ") should be less or equal to end (" + i2 + ')');
        }
        if (i == 0 && i2 == this.text.length()) {
            return this;
        }
        return new AnnotatedString((List<? extends Range<? extends Annotation>>) AnnotatedStringKt.filterRanges(this.annotations, i, i2), this.text.substring(i, i2));
    }

    /* JADX INFO: renamed from: subSequence-5zc-tL8, reason: not valid java name */
    public final AnnotatedString m8326subSequence5zctL8(long j) {
        return subSequence(TextRange.m8489getMinimpl(j), TextRange.m8488getMaximpl(j));
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.text;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Saver<AnnotatedString, ?> getSaver() {
            return AnnotatedString.Saver;
        }

        private Companion() {
        }
    }

    public static final class Range<T> {
        public static final int $stable = 0;
        private final int end;
        private final T item;
        private final int start;
        private final String tag;

        public Range(T t, int i, int i2, String str) {
            this.item = t;
            this.start = i;
            this.end = i2;
            this.tag = str;
            if (i <= i2) {
                return;
            }
            InlineClassHelperKt.throwIllegalArgumentException("Reversed range is not supported");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Range copy$default(Range range, Object obj, int i, int i2, String str, int i3, Object obj2) {
            if ((i3 & 1) != 0) {
                obj = range.item;
            }
            if ((i3 & 2) != 0) {
                i = range.start;
            }
            if ((i3 & 4) != 0) {
                i2 = range.end;
            }
            if ((i3 & 8) != 0) {
                str = range.tag;
            }
            return range.copy(obj, i, i2, str);
        }

        public final T component1() {
            return this.item;
        }

        public final int component2() {
            return this.start;
        }

        public final int component3() {
            return this.end;
        }

        public final String component4() {
            return this.tag;
        }

        public final Range<T> copy(T t, int i, int i2, String str) {
            return new Range<>(t, i, i2, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Range)) {
                return false;
            }
            Range range = (Range) obj;
            return aa4.e(this.item, range.item) && this.start == range.start && this.end == range.end && aa4.e(this.tag, range.tag);
        }

        public final int getEnd() {
            return this.end;
        }

        public final T getItem() {
            return this.item;
        }

        public final int getStart() {
            return this.start;
        }

        public final String getTag() {
            return this.tag;
        }

        public int hashCode() {
            T t = this.item;
            return this.tag.hashCode() + ej0.b(this.end, ej0.b(this.start, (t == null ? 0 : t.hashCode()) * 31, 31), 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Range(item=");
            sb.append(this.item);
            sb.append(", start=");
            sb.append(this.start);
            sb.append(", end=");
            sb.append(this.end);
            sb.append(", tag=");
            return xp.e(sb, this.tag, ')');
        }

        public Range(T t, int i, int i2) {
            this(t, i, i2, "");
        }
    }

    public final List<Range<String>> getStringAnnotations(int i, int i2) {
        List<Range<? extends Annotation>> list = this.annotations;
        if (list != null) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Range<? extends Annotation> range = list.get(i3);
                if ((range.getItem() instanceof StringAnnotation) && AnnotatedStringKt.intersect(i, i2, range.getStart(), range.getEnd())) {
                    arrayList.add(StringAnnotationKt.unbox(range));
                }
            }
            return arrayList;
        }
        return kx2.b;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ AnnotatedString(String str, List list, List list2, int i, jh2 jh2Var) {
        int i2 = i & 2;
        kx2 kx2Var = kx2.b;
        this(str, i2 != 0 ? kx2Var : list, (i & 4) != 0 ? kx2Var : list2);
    }

    public AnnotatedString(String str, List<Range<SpanStyle>> list, List<Range<ParagraphStyle>> list2) {
        this((List<? extends Range<? extends Annotation>>) AnnotatedStringKt.constructAnnotationsFromSpansAndParagraphs(list, list2), str);
    }

    public /* synthetic */ AnnotatedString(String str, List list, int i, jh2 jh2Var) {
        this(str, (List<? extends Range<? extends Annotation>>) ((i & 2) != 0 ? kx2.b : list));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AnnotatedString(String str, List<? extends Range<? extends Annotation>> list) {
        List<? extends Range<? extends Annotation>> list2 = list;
        this(list2.isEmpty() ? null : list2, str);
    }
}
