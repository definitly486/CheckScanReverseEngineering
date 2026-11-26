package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class iq7 {
    public static final df4 a(ne4 ne4Var, ArrayList arrayList, ll3 ll3Var) {
        df4 mrVar;
        df4 s07Var;
        if (ne4Var.equals(x07.a(Collection.class)) || ne4Var.equals(x07.a(List.class)) || ne4Var.equals(x07.a(List.class)) || ne4Var.equals(x07.a(ArrayList.class))) {
            mrVar = new mr((df4) arrayList.get(0));
        } else if (ne4Var.equals(x07.a(HashSet.class))) {
            mrVar = new xu3((df4) arrayList.get(0));
        } else if (ne4Var.equals(x07.a(Set.class)) || ne4Var.equals(x07.a(Set.class)) || ne4Var.equals(x07.a(LinkedHashSet.class))) {
            mrVar = new wq4((df4) arrayList.get(0));
        } else if (ne4Var.equals(x07.a(HashMap.class))) {
            mrVar = new vu3((df4) arrayList.get(0), (df4) arrayList.get(1));
        } else if (ne4Var.equals(x07.a(Map.class)) || ne4Var.equals(x07.a(Map.class)) || ne4Var.equals(x07.a(LinkedHashMap.class))) {
            mrVar = new uq4((df4) arrayList.get(0), (df4) arrayList.get(1));
        } else {
            if (ne4Var.equals(x07.a(Map.Entry.class))) {
                df4 df4Var = (df4) arrayList.get(0);
                df4 df4Var2 = (df4) arrayList.get(1);
                df4Var.getClass();
                df4Var2.getClass();
                s07Var = new yz4(df4Var, df4Var2);
            } else if (ne4Var.equals(x07.a(b36.class))) {
                df4 df4Var3 = (df4) arrayList.get(0);
                df4 df4Var4 = (df4) arrayList.get(1);
                df4Var3.getClass();
                df4Var4.getClass();
                s07Var = new c36(df4Var3, df4Var4);
            } else if (ne4Var.equals(x07.a(k39.class))) {
                df4 df4Var5 = (df4) arrayList.get(0);
                df4 df4Var6 = (df4) arrayList.get(1);
                df4 df4Var7 = (df4) arrayList.get(2);
                df4Var5.getClass();
                df4Var6.getClass();
                df4Var7.getClass();
                mrVar = new l39(df4Var5, df4Var6, df4Var7);
            } else if (d31.n(ne4Var).isArray()) {
                Object objInvoke = ll3Var.invoke();
                objInvoke.getClass();
                df4 df4Var8 = (df4) arrayList.get(0);
                df4Var8.getClass();
                s07Var = new s07((ne4) objInvoke, df4Var8);
            } else {
                mrVar = null;
            }
            mrVar = s07Var;
        }
        if (mrVar != null) {
            return mrVar;
        }
        df4[] df4VarArr = (df4[]) arrayList.toArray(new df4[0]);
        return g96.a(ne4Var, (df4[]) Arrays.copyOf(df4VarArr, df4VarArr.length));
    }

    public static final <T> df4<T> b(ne4<T> ne4Var) {
        ne4Var.getClass();
        df4<T> df4VarD = d(ne4Var);
        if (df4VarD != null) {
            return df4VarD;
        }
        m96.g(ne4Var);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003c  */
    /* JADX WARN: Code duplicated, block: B:40:0x0097  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:56:0x00cc A[RETURN] */
    public static final df4<Object> c(jq7 jq7Var, ef4 ef4Var, boolean z) {
        df4<? extends Object> df4VarA;
        df4<Object> df4VarB;
        da6 da6Var;
        ne4<Object> ne4VarE = m96.e(ef4Var);
        boolean zB = ef4Var.b();
        List<ff4> arguments = ef4Var.getArguments();
        ArrayList arrayList = new ArrayList(kn1.q(arguments, 10));
        Iterator<T> it = arguments.iterator();
        if (it.hasNext()) {
            ((ff4) it.next()).getClass();
            c9.f("Star projections in type arguments are not allowed, but had null");
            return null;
        }
        boolean zIsEmpty = arrayList.isEmpty();
        List<? extends df4<?>> list = kx2.b;
        if (zIsEmpty) {
            if (!d31.n(ne4VarE).isInterface() || jq7Var.b(ne4VarE, list) == null) {
                fq7<? extends Object> fq7Var = hq7.a;
                if (zB) {
                    df4VarA = hq7.b.a(ne4VarE);
                } else {
                    df4VarA = hq7.a.a(ne4VarE);
                    if (df4VarA == null) {
                        df4VarA = null;
                    }
                }
            } else {
                df4VarA = null;
            }
        } else if (jq7Var.c()) {
            df4VarA = null;
        } else {
            fq7<? extends Object> fq7Var2 = hq7.a;
            Object objA = !zB ? hq7.c.a(ne4VarE, arrayList) : hq7.d.a(ne4VarE, arrayList);
            if (objA instanceof k57.a) {
                objA = null;
            }
            df4VarA = (df4) objA;
        }
        if (df4VarA != null) {
            return df4VarA;
        }
        if (arrayList.isEmpty()) {
            df4VarB = d(ne4VarE);
            if (df4VarB == null && (df4VarB = jq7Var.b(ne4VarE, list)) == null) {
                if (d31.n(ne4VarE).isInterface()) {
                    da6Var = new da6(ne4VarE);
                    df4VarB = da6Var;
                } else {
                    df4VarB = null;
                }
            }
            if (df4VarB != null) {
                if (zB) {
                    return ev0.a(df4VarB);
                }
                return df4VarB;
            }
        } else {
            ArrayList arrayListE = e(jq7Var, arrayList, z);
            if (arrayListE != null) {
                df4<Object> df4VarA2 = a(ne4VarE, arrayListE, new d84(arrayList, 2));
                if (df4VarA2 == null) {
                    df4VarB = jq7Var.b(ne4VarE, arrayListE);
                    if (df4VarB == null) {
                        if (d31.n(ne4VarE).isInterface()) {
                            da6Var = new da6(ne4VarE);
                            df4VarB = da6Var;
                        } else {
                            df4VarB = null;
                        }
                    }
                } else {
                    df4VarB = df4VarA2;
                }
                if (df4VarB != null) {
                    if (zB) {
                        return ev0.a(df4VarB);
                    }
                    return df4VarB;
                }
            }
        }
        return null;
    }

    public static final <T> df4<T> d(ne4<T> ne4Var) {
        ne4Var.getClass();
        df4<T> df4VarA = g96.a(ne4Var, new df4[0]);
        return df4VarA == null ? (df4) hg6.a.get(ne4Var) : df4VarA;
    }

    public static final ArrayList e(jq7 jq7Var, List list, boolean z) {
        jq7Var.getClass();
        if (!z) {
            List<ef4> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            for (ef4 ef4Var : list2) {
                ef4Var.getClass();
                df4<Object> df4VarC = c(jq7Var, ef4Var, false);
                if (df4VarC == null) {
                    return null;
                }
                arrayList.add(df4VarC);
            }
            return arrayList;
        }
        List<ef4> list3 = list;
        ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
        for (ef4 ef4Var2 : list3) {
            ef4Var2.getClass();
            df4<Object> df4VarC2 = c(jq7Var, ef4Var2, true);
            if (df4VarC2 == null) {
                m96.g(m96.e(ef4Var2));
                throw null;
            }
            arrayList2.add(df4VarC2);
        }
        return arrayList2;
    }
}
