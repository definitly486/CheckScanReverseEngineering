package androidx.room;

import androidx.room.AmbiguousColumnResolver;
import defpackage.aa4;
import defpackage.ad;
import defpackage.ah;
import defpackage.ar4;
import defpackage.dm3;
import defpackage.ir7;
import defpackage.j2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.l1;
import defpackage.me0;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.r07;
import defpackage.rg;
import defpackage.u74;
import defpackage.u96;
import defpackage.y74;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class AmbiguousColumnResolver {
    public static final AmbiguousColumnResolver INSTANCE = new AmbiguousColumnResolver();

    public static final class Match {
        private final List<Integer> resultIndices;
        private final y74 resultRange;

        public Match(y74 y74Var, List<Integer> list) {
            y74Var.getClass();
            list.getClass();
            this.resultRange = y74Var;
            this.resultIndices = list;
        }

        public final List<Integer> getResultIndices() {
            return this.resultIndices;
        }

        public final y74 getResultRange() {
            return this.resultRange;
        }
    }

    public static final class ResultColumn {
        private final int index;
        private final String name;

        public ResultColumn(String str, int i) {
            str.getClass();
            this.name = str;
            this.index = i;
        }

        public static /* synthetic */ ResultColumn copy$default(ResultColumn resultColumn, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = resultColumn.name;
            }
            if ((i2 & 2) != 0) {
                i = resultColumn.index;
            }
            return resultColumn.copy(str, i);
        }

        public final String component1() {
            return this.name;
        }

        public final int component2() {
            return this.index;
        }

        public final ResultColumn copy(String str, int i) {
            str.getClass();
            return new ResultColumn(str, i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ResultColumn)) {
                return false;
            }
            ResultColumn resultColumn = (ResultColumn) obj;
            return aa4.e(this.name, resultColumn.name) && this.index == resultColumn.index;
        }

        public final int getIndex() {
            return this.index;
        }

        public final String getName() {
            return this.name;
        }

        public int hashCode() {
            return Integer.hashCode(this.index) + (this.name.hashCode() * 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ResultColumn(name=");
            sb.append(this.name);
            sb.append(", index=");
            return rg.h(sb, this.index, ')');
        }
    }

    private AmbiguousColumnResolver() {
    }

    private final <T> void dfs(List<? extends List<? extends T>> list, List<T> list2, int i, nl3<? super List<? extends T>, j59> nl3Var) {
        if (i == list.size()) {
            nl3Var.invoke(qn1.t0(list2));
            return;
        }
        Iterator<T> it = list.get(i).iterator();
        while (it.hasNext()) {
            list2.add(it.next());
            INSTANCE.dfs(list, list2, i + 1, nl3Var);
            list2.remove(list2.size() - 1);
        }
    }

    public static /* synthetic */ void dfs$default(AmbiguousColumnResolver ambiguousColumnResolver, List list, List list2, int i, nl3 nl3Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            list2 = new ArrayList();
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        ambiguousColumnResolver.dfs(list, list2, i, nl3Var);
    }

    private final void rabinKarpSearch(List<ResultColumn> list, String[] strArr, dm3<? super Integer, ? super Integer, ? super List<ResultColumn>, j59> dm3Var) {
        int i = 0;
        int iHashCode = 0;
        for (String str : strArr) {
            iHashCode += str.hashCode();
        }
        int length = strArr.length;
        Iterator<T> it = list.subList(0, length).iterator();
        int iHashCode2 = 0;
        while (it.hasNext()) {
            iHashCode2 += ((ResultColumn) it.next()).getName().hashCode();
        }
        while (true) {
            if (iHashCode == iHashCode2) {
                dm3Var.invoke(Integer.valueOf(i), Integer.valueOf(length), list.subList(i, length));
            }
            int i2 = i + 1;
            int i3 = length + 1;
            if (i3 > list.size()) {
                return;
            }
            iHashCode2 = (iHashCode2 - list.get(i).getName().hashCode()) + list.get(length).getName().hashCode();
            i = i2;
            length = i3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    public static final int[][] resolve(String[] strArr, String[][] strArr2) {
        strArr.getClass();
        strArr2.getClass();
        int length = strArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            String strF = strArr[i2];
            if (strF.charAt(0) == '`' && strF.charAt(strF.length() - 1) == '`') {
                strF = rg.f(1, 1, strF);
            }
            String lowerCase = strF.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            strArr[i2] = lowerCase;
        }
        int length2 = strArr2.length;
        for (int i3 = 0; i3 < length2; i3++) {
            int length3 = strArr2[i3].length;
            for (int i4 = 0; i4 < length3; i4++) {
                String[] strArr3 = strArr2[i3];
                String lowerCase2 = strArr3[i4].toLowerCase(Locale.ROOT);
                lowerCase2.getClass();
                strArr3[i4] = lowerCase2;
            }
        }
        ir7 ir7Var = new ir7();
        for (String[] strArr4 : strArr2) {
            nn1.u(ir7Var, strArr4);
        }
        ir7 ir7VarD = l1.d(ir7Var);
        ar4 ar4VarE = u96.e();
        int length4 = strArr.length;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length4) {
            String str = strArr[i5];
            int i7 = i6 + 1;
            if (ir7VarD.b.containsKey(str)) {
                ar4VarE.add(new ResultColumn(str, i6));
            }
            i5++;
            i6 = i7;
        }
        ar4 ar4VarD = u96.d(ar4VarE);
        int length5 = strArr2.length;
        final ArrayList arrayList = new ArrayList(length5);
        for (int i8 = 0; i8 < length5; i8++) {
            arrayList.add(new ArrayList());
        }
        int length6 = strArr2.length;
        int i9 = 0;
        final int i10 = 0;
        while (i9 < length6) {
            final String[] strArr5 = strArr2[i9];
            int i11 = i10 + 1;
            INSTANCE.rabinKarpSearch(ar4VarD, strArr5, new dm3() { // from class: yc
                @Override // defpackage.dm3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return AmbiguousColumnResolver.resolve$lambda$16$lambda$7(strArr5, arrayList, i10, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), (List) obj3);
                }
            });
            if (((List) arrayList.get(i10)).isEmpty()) {
                ArrayList arrayList2 = new ArrayList(strArr5.length);
                for (String str2 : strArr5) {
                    ar4 ar4VarE2 = u96.e();
                    ListIterator listIterator = ar4VarD.listIterator(0);
                    while (true) {
                        ar4.b bVar = (ar4.b) listIterator;
                        if (!bVar.hasNext()) {
                            break;
                        }
                        ResultColumn resultColumn = (ResultColumn) bVar.next();
                        if (aa4.e(str2, resultColumn.getName())) {
                            ar4VarE2.add(Integer.valueOf(resultColumn.getIndex()));
                        }
                    }
                    ar4 ar4VarD2 = u96.d(ar4VarE2);
                    if (ar4VarD2.isEmpty()) {
                        j2.d(me0.c("Column ", str2, " not found in result"));
                        return null;
                    }
                    arrayList2.add(ar4VarD2);
                }
                dfs$default(INSTANCE, arrayList2, null, 0, new nl3() { // from class: zc
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return AmbiguousColumnResolver.resolve$lambda$16$lambda$15(arrayList, i10, (List) obj);
                    }
                }, 6, null);
            }
            i9++;
            i10 = i11;
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((List) it.next()).isEmpty()) {
                    ah.f("Failed to find matches for all mappings");
                    return null;
                }
            }
        }
        r07 r07Var = new r07();
        r07Var.b = Solution.Companion.getNO_SOLUTION();
        dfs$default(INSTANCE, arrayList, null, 0, new ad(r07Var, i), 6, null);
        List<Match> matches = ((Solution) r07Var.b).getMatches();
        ArrayList arrayList3 = new ArrayList(kn1.q(matches, 10));
        Iterator<T> it2 = matches.iterator();
        while (it2.hasNext()) {
            arrayList3.add(qn1.s0(((Match) it2.next()).getResultIndices()));
        }
        return (int[][]) arrayList3.toArray(new int[0][]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 resolve$lambda$16$lambda$15(List list, int i, List list2) {
        list2.getClass();
        List list3 = list2;
        Iterator it = list3.iterator();
        if (!it.hasNext()) {
            qz0.e();
            return null;
        }
        int iIntValue = ((Number) it.next()).intValue();
        while (it.hasNext()) {
            int iIntValue2 = ((Number) it.next()).intValue();
            if (iIntValue > iIntValue2) {
                iIntValue = iIntValue2;
            }
        }
        Iterator it2 = list3.iterator();
        if (!it2.hasNext()) {
            qz0.e();
            return null;
        }
        int iIntValue3 = ((Number) it2.next()).intValue();
        while (it2.hasNext()) {
            int iIntValue4 = ((Number) it2.next()).intValue();
            if (iIntValue3 < iIntValue4) {
                iIntValue3 = iIntValue4;
            }
        }
        ((List) list.get(i)).add(new Match(new y74(iIntValue, iIntValue3, 1), list2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 resolve$lambda$16$lambda$7(String[] strArr, List list, int i, int i2, int i3, List list2) {
        Object next;
        list2.getClass();
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            Iterator it = list2.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!aa4.e(str, ((ResultColumn) next).component1()));
            ResultColumn resultColumn = (ResultColumn) next;
            if (resultColumn == null) {
                return j59.a;
            }
            arrayList.add(Integer.valueOf(resultColumn.getIndex()));
        }
        ((List) list.get(i)).add(new Match(new y74(i2, i3 - 1, 1), arrayList));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    public static final j59 resolve$lambda$19(r07 r07Var, List list) {
        list.getClass();
        ?? Build = Solution.Companion.build(list);
        if (Build.compareTo((Solution) r07Var.b) < 0) {
            r07Var.b = Build;
        }
        return j59.a;
    }

    public static final class Solution implements Comparable<Solution> {
        public static final Companion Companion = new Companion(null);
        private static final Solution NO_SOLUTION = new Solution(kx2.b, Integer.MAX_VALUE, Integer.MAX_VALUE);
        private final int coverageOffset;
        private final List<Match> matches;
        private final int overlaps;

        public Solution(List<Match> list, int i, int i2) {
            list.getClass();
            this.matches = list;
            this.coverageOffset = i;
            this.overlaps = i2;
        }

        @Override // java.lang.Comparable
        public int compareTo(Solution solution) {
            solution.getClass();
            int iF = aa4.f(this.overlaps, solution.overlaps);
            return iF != 0 ? iF : aa4.f(this.coverageOffset, solution.coverageOffset);
        }

        public final int getCoverageOffset() {
            return this.coverageOffset;
        }

        public final List<Match> getMatches() {
            return this.matches;
        }

        public final int getOverlaps() {
            return this.overlaps;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final Solution build(List<Match> list) {
                list.getClass();
                List<Match> list2 = list;
                int i = 0;
                int size = 0;
                for (Match match : list2) {
                    size += ((match.getResultRange().c - match.getResultRange().b) + 1) - match.getResultIndices().size();
                }
                Iterator<T> it = list2.iterator();
                if (!it.hasNext()) {
                    qz0.e();
                    return null;
                }
                int i2 = ((Match) it.next()).getResultRange().b;
                while (it.hasNext()) {
                    int i3 = ((Match) it.next()).getResultRange().b;
                    if (i2 > i3) {
                        i2 = i3;
                    }
                }
                Iterator<T> it2 = list2.iterator();
                if (!it2.hasNext()) {
                    qz0.e();
                    return null;
                }
                int i4 = ((Match) it2.next()).getResultRange().c;
                while (it2.hasNext()) {
                    int i5 = ((Match) it2.next()).getResultRange().c;
                    if (i4 < i5) {
                        i4 = i5;
                    }
                }
                Iterable y74Var = new y74(i2, i4, 1);
                if (!(y74Var instanceof Collection) || !((Collection) y74Var).isEmpty()) {
                    Iterator it3 = y74Var.iterator();
                    int i6 = 0;
                    while (it3.hasNext()) {
                        int iNextInt = ((u74) it3).nextInt();
                        Iterator<T> it4 = list2.iterator();
                        int i7 = 0;
                        while (it4.hasNext()) {
                            if (((Match) it4.next()).getResultRange().c(iNextInt)) {
                                i7++;
                            }
                            if (i7 > 1) {
                                i6++;
                                if (i6 >= 0) {
                                    break;
                                }
                                u96.n();
                                throw null;
                            }
                        }
                    }
                    i = i6;
                }
                return new Solution(list, size, i);
            }

            public final Solution getNO_SOLUTION() {
                return Solution.NO_SOLUTION;
            }

            private Companion() {
            }
        }
    }

    public static final int[][] resolve(List<String> list, String[][] strArr) {
        list.getClass();
        strArr.getClass();
        return resolve((String[]) list.toArray(new String[0]), strArr);
    }
}
