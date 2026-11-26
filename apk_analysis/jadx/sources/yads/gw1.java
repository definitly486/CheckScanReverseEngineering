package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class gw1 {
    public final jw1 a;
    public final jw1 b;
    public final List c;
    public final ds2 d;
    public final gx1 e;

    static {
        Double dValueOf = Double.valueOf(0.5d);
        wr2.a(dValueOf);
        wr2.a(dValueOf);
        wr2.a(tx1.FARTHEST_CORNER);
    }

    public gw1(jw1 jw1Var, jw1 jw1Var2, List list, ds2 ds2Var, gx1 gx1Var) {
        this.a = jw1Var;
        this.b = jw1Var2;
        this.c = list;
        this.d = ds2Var;
        this.e = gx1Var;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00db  */
    /* JADX WARN: Code duplicated, block: B:57:0x00df  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:70:0x0107  */
    /* JADX WARN: Code duplicated, block: B:72:0x010f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0113  */
    /* JADX WARN: Code duplicated, block: B:76:0x0117  */
    /* JADX WARN: Code duplicated, block: B:78:0x011f  */
    /* JADX WARN: Code duplicated, block: B:79:0x0124  */
    /* JADX WARN: Code duplicated, block: B:81:0x0128  */
    /* JADX WARN: Code duplicated, block: B:84:0x0130  */
    /* JADX WARN: Code duplicated, block: B:87:0x0136  */
    /* JADX WARN: Code duplicated, block: B:90:0x0146  */
    /* JADX WARN: Code duplicated, block: B:92:0x0149 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:93:0x014a  */
    /* JADX WARN: Code duplicated, block: B:95:0x014e  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean a(gw1 gw1Var, fs2 fs2Var, fs2 fs2Var2) {
        ds2 ds2Var;
        gx1 gx1Var;
        gx1 gx1Var2;
        boolean zA;
        Object obj;
        ux1 ux1Var;
        Object obj2;
        List listA;
        List listA2;
        if (gw1Var != null && this.a.a(gw1Var.a, fs2Var, fs2Var2) && this.b.a(gw1Var.b, fs2Var, fs2Var2)) {
            List list = this.c;
            List list2 = gw1Var.c;
            if (list != null) {
                if (list2 != null && list.size() == list2.size()) {
                    int i = 0;
                    for (Object obj3 : list) {
                        int i2 = i + 1;
                        if (i < 0) {
                            u96.o();
                            throw null;
                        }
                        fw1 fw1Var = (fw1) list2.get(i);
                        fw1 fw1Var2 = (fw1) obj3;
                        if (fw1Var == null) {
                            fw1Var2.getClass();
                        } else if (((Number) fw1Var2.a.a(fs2Var)).intValue() == ((Number) fw1Var.a.a(fs2Var2)).intValue() && ((Number) fw1Var2.b.a(fs2Var)).doubleValue() == ((Number) fw1Var.b.a(fs2Var2)).doubleValue()) {
                            i = i2;
                        }
                    }
                    ds2Var = this.d;
                    if (ds2Var == null && (listA = ds2Var.a(fs2Var)) != null) {
                        ds2 ds2Var2 = gw1Var.d;
                        if (ds2Var2 != null && (listA2 = ds2Var2.a(fs2Var2)) != null && listA.size() == listA2.size()) {
                            int i3 = 0;
                            for (Object obj4 : listA) {
                                int i4 = i3 + 1;
                                if (i3 < 0) {
                                    u96.o();
                                    throw null;
                                }
                                if (((Number) obj4).intValue() == ((Number) listA2.get(i3)).intValue()) {
                                    i3 = i4;
                                }
                            }
                            gx1Var = this.e;
                            gx1Var2 = gw1Var.e;
                            gx1Var.getClass();
                            if (gx1Var2 != null) {
                                if (gx1Var instanceof ex1) {
                                    af1 af1Var = ((ex1) gx1Var).a;
                                    if (gx1Var2 instanceof ex1) {
                                        obj2 = ((ex1) gx1Var2).a;
                                    } else {
                                        if (gx1Var2 instanceof fx1) {
                                            defpackage.me0.e();
                                            return false;
                                        }
                                        obj2 = ((fx1) gx1Var2).a;
                                    }
                                    zA = af1Var.a(obj2 instanceof af1 ? (af1) obj2 : null, fs2Var, fs2Var2);
                                } else if (gx1Var instanceof fx1) {
                                    ux1 ux1Var2 = ((fx1) gx1Var).a;
                                    if (gx1Var2 instanceof ex1) {
                                        obj = ((ex1) gx1Var2).a;
                                    } else {
                                        if (gx1Var2 instanceof fx1) {
                                            defpackage.me0.e();
                                            return false;
                                        }
                                        obj = ((fx1) gx1Var2).a;
                                    }
                                    if (obj instanceof ux1) {
                                    }
                                    if (ux1Var == null) {
                                        zA = false;
                                    } else {
                                        zA = true;
                                    }
                                } else {
                                    defpackage.me0.e();
                                }
                                if (zA) {
                                    return true;
                                }
                            } else {
                                zA = false;
                                if (zA) {
                                    return true;
                                }
                            }
                        }
                    } else if (gw1Var.d == null) {
                        gx1Var = this.e;
                        gx1Var2 = gw1Var.e;
                        gx1Var.getClass();
                        if (gx1Var2 != null) {
                            if (gx1Var instanceof ex1) {
                                af1 af1Var2 = ((ex1) gx1Var).a;
                                if (gx1Var2 instanceof ex1) {
                                    obj2 = ((ex1) gx1Var2).a;
                                } else {
                                    if (gx1Var2 instanceof fx1) {
                                        defpackage.me0.e();
                                        return false;
                                    }
                                    obj2 = ((fx1) gx1Var2).a;
                                }
                                zA = af1Var2.a(obj2 instanceof af1 ? (af1) obj2 : null, fs2Var, fs2Var2);
                            } else if (gx1Var instanceof fx1) {
                                ux1 ux1Var3 = ((fx1) gx1Var).a;
                                if (gx1Var2 instanceof ex1) {
                                    obj = ((ex1) gx1Var2).a;
                                } else {
                                    if (gx1Var2 instanceof fx1) {
                                        defpackage.me0.e();
                                        return false;
                                    }
                                    obj = ((fx1) gx1Var2).a;
                                }
                                ux1Var = obj instanceof ux1 ? (ux1) obj : null;
                                if (ux1Var == null && ux1Var3.a.a(fs2Var) == ux1Var.a.a(fs2Var2)) {
                                    zA = true;
                                } else {
                                    zA = false;
                                }
                            } else {
                                defpackage.me0.e();
                            }
                            if (zA) {
                                return true;
                            }
                        } else {
                            zA = false;
                            if (zA) {
                                return true;
                            }
                        }
                    }
                }
            } else if (list2 == null) {
                ds2Var = this.d;
                if (ds2Var == null) {
                    if (gw1Var.d == null) {
                        gx1Var = this.e;
                        gx1Var2 = gw1Var.e;
                        gx1Var.getClass();
                        if (gx1Var2 != null) {
                            if (gx1Var instanceof ex1) {
                                af1 af1Var3 = ((ex1) gx1Var).a;
                                if (gx1Var2 instanceof ex1) {
                                    obj2 = ((ex1) gx1Var2).a;
                                } else {
                                    if (gx1Var2 instanceof fx1) {
                                        defpackage.me0.e();
                                        return false;
                                    }
                                    obj2 = ((fx1) gx1Var2).a;
                                }
                                zA = af1Var3.a(obj2 instanceof af1 ? (af1) obj2 : null, fs2Var, fs2Var2);
                            } else if (gx1Var instanceof fx1) {
                                ux1 ux1Var4 = ((fx1) gx1Var).a;
                                if (gx1Var2 instanceof ex1) {
                                    obj = ((ex1) gx1Var2).a;
                                } else {
                                    if (gx1Var2 instanceof fx1) {
                                        defpackage.me0.e();
                                        return false;
                                    }
                                    obj = ((fx1) gx1Var2).a;
                                }
                                if (obj instanceof ux1) {
                                }
                                if (ux1Var == null) {
                                    zA = false;
                                } else {
                                    zA = true;
                                }
                            } else {
                                defpackage.me0.e();
                            }
                            if (zA) {
                                return true;
                            }
                        } else {
                            zA = false;
                            if (zA) {
                                return true;
                            }
                        }
                    }
                } else if (gw1Var.d == null) {
                    gx1Var = this.e;
                    gx1Var2 = gw1Var.e;
                    gx1Var.getClass();
                    if (gx1Var2 != null) {
                        if (gx1Var instanceof ex1) {
                            af1 af1Var4 = ((ex1) gx1Var).a;
                            if (gx1Var2 instanceof ex1) {
                                obj2 = ((ex1) gx1Var2).a;
                            } else {
                                if (gx1Var2 instanceof fx1) {
                                    defpackage.me0.e();
                                    return false;
                                }
                                obj2 = ((fx1) gx1Var2).a;
                            }
                            zA = af1Var4.a(obj2 instanceof af1 ? (af1) obj2 : null, fs2Var, fs2Var2);
                        } else if (gx1Var instanceof fx1) {
                            ux1 ux1Var5 = ((fx1) gx1Var).a;
                            if (gx1Var2 instanceof ex1) {
                                obj = ((ex1) gx1Var2).a;
                            } else {
                                if (gx1Var2 instanceof fx1) {
                                    defpackage.me0.e();
                                    return false;
                                }
                                obj = ((fx1) gx1Var2).a;
                            }
                            if (obj instanceof ux1) {
                            }
                            if (ux1Var == null) {
                                zA = false;
                            } else {
                                zA = true;
                            }
                        } else {
                            defpackage.me0.e();
                        }
                        if (zA) {
                            return true;
                        }
                    } else {
                        zA = false;
                        if (zA) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }
}
