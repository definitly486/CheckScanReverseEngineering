package yads;

import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes6.dex */
public final class t51 implements s51 {
    public l51 a;
    public boolean b = true;

    @Override // yads.s51
    public final l51 i() {
        return this.a;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x00e1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:104:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:106:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:107:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:109:0x00ef A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:111:0x00f2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:112:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:113:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:115:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:116:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:119:0x0104 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x0106  */
    /* JADX WARN: Code duplicated, block: B:121:0x0109  */
    /* JADX WARN: Code duplicated, block: B:123:0x010c  */
    /* JADX WARN: Code duplicated, block: B:124:0x010f  */
    /* JADX WARN: Code duplicated, block: B:127:0x0116 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x0118  */
    /* JADX WARN: Code duplicated, block: B:129:0x011b  */
    /* JADX WARN: Code duplicated, block: B:131:0x011e  */
    /* JADX WARN: Code duplicated, block: B:132:0x0121  */
    /* JADX WARN: Code duplicated, block: B:136:0x0129  */
    /* JADX WARN: Code duplicated, block: B:61:0x0087 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x0089  */
    /* JADX WARN: Code duplicated, block: B:63:0x008c  */
    /* JADX WARN: Code duplicated, block: B:65:0x008f  */
    /* JADX WARN: Code duplicated, block: B:66:0x0092  */
    /* JADX WARN: Code duplicated, block: B:69:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x009b  */
    /* JADX WARN: Code duplicated, block: B:71:0x009e  */
    /* JADX WARN: Code duplicated, block: B:73:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:74:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:80:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:82:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:83:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:86:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:88:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:90:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:91:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:94:0x00cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:96:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:98:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:99:0x00da  */
    @Override // yads.s51
    public final void setBorder(tt ttVar, f51 f51Var, View view) {
        boolean z;
        as2 as2Var;
        as2 as2Var2;
        xz1 xz1Var;
        xz1 xz1Var2;
        as2 as2Var3;
        as2 as2Var4;
        as2 as2Var5;
        as2 as2Var6;
        as2 as2Var7;
        as2 as2Var8;
        nv1 nv1Var;
        nv1 nv1Var2;
        ac1 ac1Var;
        ac1 ac1Var2;
        ac1 ac1Var3;
        ac1 ac1Var4;
        l42 l42Var;
        l42 l42Var2;
        l51 l51Var = this.a;
        if (l51Var == null && f51Var != null) {
            l51Var = new l51(ttVar.a, view);
            this.a = l51Var;
        }
        if (l51Var != null) {
            fs2 fs2Var = ttVar.b;
            f51 f51Var2 = l51Var.c;
            if (f51Var != null || f51Var2 != null) {
                if (ls2.a(f51Var != null ? f51Var.a : null, f51Var2 != null ? f51Var2.a : null)) {
                    p91 p91Var = f51Var != null ? f51Var.b : null;
                    p91 p91Var2 = f51Var2 != null ? f51Var2.b : null;
                    if (p91Var == null && p91Var2 == null) {
                        if (f51Var != null) {
                            as2Var = f51Var.c;
                        } else {
                            as2Var = null;
                        }
                        if (f51Var2 != null) {
                            as2Var2 = f51Var2.c;
                        } else {
                            as2Var2 = null;
                        }
                        if (!ls2.a(as2Var, as2Var2)) {
                            if (f51Var != null) {
                                xz1Var = f51Var.d;
                            } else {
                                xz1Var = null;
                            }
                            if (f51Var2 != null) {
                                xz1Var2 = f51Var2.d;
                            } else {
                                xz1Var2 = null;
                            }
                            if (xz1Var == null) {
                                if (xz1Var != null) {
                                    as2Var3 = xz1Var.a;
                                } else {
                                    as2Var3 = null;
                                }
                                if (xz1Var2 != null) {
                                    as2Var4 = xz1Var2.a;
                                } else {
                                    as2Var4 = null;
                                }
                                if (ls2.a(as2Var3, as2Var4)) {
                                    if (xz1Var != null) {
                                        as2Var5 = xz1Var.b;
                                    } else {
                                        as2Var5 = null;
                                    }
                                    if (xz1Var2 != null) {
                                        as2Var6 = xz1Var2.b;
                                    } else {
                                        as2Var6 = null;
                                    }
                                    if (ls2.a(as2Var5, as2Var6)) {
                                        if (xz1Var != null) {
                                            as2Var7 = xz1Var.c;
                                        } else {
                                            as2Var7 = null;
                                        }
                                        if (xz1Var2 != null) {
                                            as2Var8 = xz1Var2.c;
                                        } else {
                                            as2Var8 = null;
                                        }
                                        if (ls2.a(as2Var7, as2Var8)) {
                                            if (xz1Var != null) {
                                                nv1Var = xz1Var.d;
                                            } else {
                                                nv1Var = null;
                                            }
                                            if (xz1Var2 != null) {
                                                nv1Var2 = xz1Var2.d;
                                            } else {
                                                nv1Var2 = null;
                                            }
                                            if (nv1Var == null) {
                                                if (nv1Var != null) {
                                                    ac1Var = nv1Var.a;
                                                } else {
                                                    ac1Var = null;
                                                }
                                                if (nv1Var2 != null) {
                                                    ac1Var2 = nv1Var2.a;
                                                } else {
                                                    ac1Var2 = null;
                                                }
                                                if (gb1.a(ac1Var, ac1Var2)) {
                                                    if (nv1Var != null) {
                                                        ac1Var3 = nv1Var.b;
                                                    } else {
                                                        ac1Var3 = null;
                                                    }
                                                    if (nv1Var2 != null) {
                                                        ac1Var4 = nv1Var2.b;
                                                    } else {
                                                        ac1Var4 = null;
                                                    }
                                                    if (gb1.a(ac1Var3, ac1Var4)) {
                                                        if (f51Var != null) {
                                                            l42Var = f51Var.e;
                                                        } else {
                                                            l42Var = null;
                                                        }
                                                        if (f51Var2 != null) {
                                                            l42Var2 = f51Var2.e;
                                                        } else {
                                                            l42Var2 = null;
                                                        }
                                                        if (!gb1.a(l42Var, l42Var2)) {
                                                        }
                                                    }
                                                }
                                            } else {
                                                if (nv1Var != null) {
                                                    ac1Var = nv1Var.a;
                                                } else {
                                                    ac1Var = null;
                                                }
                                                if (nv1Var2 != null) {
                                                    ac1Var2 = nv1Var2.a;
                                                } else {
                                                    ac1Var2 = null;
                                                }
                                                if (gb1.a(ac1Var, ac1Var2)) {
                                                    if (nv1Var != null) {
                                                        ac1Var3 = nv1Var.b;
                                                    } else {
                                                        ac1Var3 = null;
                                                    }
                                                    if (nv1Var2 != null) {
                                                        ac1Var4 = nv1Var2.b;
                                                    } else {
                                                        ac1Var4 = null;
                                                    }
                                                    if (gb1.a(ac1Var3, ac1Var4)) {
                                                        if (f51Var != null) {
                                                            l42Var = f51Var.e;
                                                        } else {
                                                            l42Var = null;
                                                        }
                                                        if (f51Var2 != null) {
                                                            l42Var2 = f51Var2.e;
                                                        } else {
                                                            l42Var2 = null;
                                                        }
                                                        if (!gb1.a(l42Var, l42Var2)) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                if (xz1Var != null) {
                                    as2Var3 = xz1Var.a;
                                } else {
                                    as2Var3 = null;
                                }
                                if (xz1Var2 != null) {
                                    as2Var4 = xz1Var2.a;
                                } else {
                                    as2Var4 = null;
                                }
                                if (ls2.a(as2Var3, as2Var4)) {
                                    if (xz1Var != null) {
                                        as2Var5 = xz1Var.b;
                                    } else {
                                        as2Var5 = null;
                                    }
                                    if (xz1Var2 != null) {
                                        as2Var6 = xz1Var2.b;
                                    } else {
                                        as2Var6 = null;
                                    }
                                    if (ls2.a(as2Var5, as2Var6)) {
                                        if (xz1Var != null) {
                                            as2Var7 = xz1Var.c;
                                        } else {
                                            as2Var7 = null;
                                        }
                                        if (xz1Var2 != null) {
                                            as2Var8 = xz1Var2.c;
                                        } else {
                                            as2Var8 = null;
                                        }
                                        if (ls2.a(as2Var7, as2Var8)) {
                                            if (xz1Var != null) {
                                                nv1Var = xz1Var.d;
                                            } else {
                                                nv1Var = null;
                                            }
                                            if (xz1Var2 != null) {
                                                nv1Var2 = xz1Var2.d;
                                            } else {
                                                nv1Var2 = null;
                                            }
                                            if (nv1Var == null) {
                                                if (nv1Var != null) {
                                                    ac1Var = nv1Var.a;
                                                } else {
                                                    ac1Var = null;
                                                }
                                                if (nv1Var2 != null) {
                                                    ac1Var2 = nv1Var2.a;
                                                } else {
                                                    ac1Var2 = null;
                                                }
                                                if (gb1.a(ac1Var, ac1Var2)) {
                                                    if (nv1Var != null) {
                                                        ac1Var3 = nv1Var.b;
                                                    } else {
                                                        ac1Var3 = null;
                                                    }
                                                    if (nv1Var2 != null) {
                                                        ac1Var4 = nv1Var2.b;
                                                    } else {
                                                        ac1Var4 = null;
                                                    }
                                                    if (gb1.a(ac1Var3, ac1Var4)) {
                                                        if (f51Var != null) {
                                                            l42Var = f51Var.e;
                                                        } else {
                                                            l42Var = null;
                                                        }
                                                        if (f51Var2 != null) {
                                                            l42Var2 = f51Var2.e;
                                                        } else {
                                                            l42Var2 = null;
                                                        }
                                                        if (!gb1.a(l42Var, l42Var2)) {
                                                        }
                                                    }
                                                }
                                            } else {
                                                if (nv1Var != null) {
                                                    ac1Var = nv1Var.a;
                                                } else {
                                                    ac1Var = null;
                                                }
                                                if (nv1Var2 != null) {
                                                    ac1Var2 = nv1Var2.a;
                                                } else {
                                                    ac1Var2 = null;
                                                }
                                                if (gb1.a(ac1Var, ac1Var2)) {
                                                    if (nv1Var != null) {
                                                        ac1Var3 = nv1Var.b;
                                                    } else {
                                                        ac1Var3 = null;
                                                    }
                                                    if (nv1Var2 != null) {
                                                        ac1Var4 = nv1Var2.b;
                                                    } else {
                                                        ac1Var4 = null;
                                                    }
                                                    if (gb1.a(ac1Var3, ac1Var4)) {
                                                        if (f51Var != null) {
                                                            l42Var = f51Var.e;
                                                        } else {
                                                            l42Var = null;
                                                        }
                                                        if (f51Var2 != null) {
                                                            l42Var2 = f51Var2.e;
                                                        } else {
                                                            l42Var2 = null;
                                                        }
                                                        if (!gb1.a(l42Var, l42Var2)) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            l51Var.b();
                            l51Var.c = f51Var;
                            l51Var.a(f51Var, fs2Var);
                            l51Var.b(f51Var, fs2Var);
                        } else {
                            l51Var.b();
                            l51Var.c = f51Var;
                            l51Var.a(f51Var, fs2Var);
                            l51Var.b(f51Var, fs2Var);
                        }
                    } else {
                        if (ls2.a(p91Var != null ? p91Var.c : null, p91Var2 != null ? p91Var2.c : null)) {
                            if (ls2.a(p91Var != null ? p91Var.d : null, p91Var2 != null ? p91Var2.d : null)) {
                                if (ls2.a(p91Var != null ? p91Var.b : null, p91Var2 != null ? p91Var2.b : null)) {
                                    if (ls2.a(p91Var != null ? p91Var.a : null, p91Var2 != null ? p91Var2.a : null)) {
                                        if (f51Var != null) {
                                            as2Var = f51Var.c;
                                        } else {
                                            as2Var = null;
                                        }
                                        if (f51Var2 != null) {
                                            as2Var2 = f51Var2.c;
                                        } else {
                                            as2Var2 = null;
                                        }
                                        if (!ls2.a(as2Var, as2Var2)) {
                                            if (f51Var != null) {
                                                xz1Var = f51Var.d;
                                            } else {
                                                xz1Var = null;
                                            }
                                            if (f51Var2 != null) {
                                                xz1Var2 = f51Var2.d;
                                            } else {
                                                xz1Var2 = null;
                                            }
                                            if (xz1Var == null || xz1Var2 != null) {
                                                if (xz1Var != null) {
                                                    as2Var3 = xz1Var.a;
                                                } else {
                                                    as2Var3 = null;
                                                }
                                                if (xz1Var2 != null) {
                                                    as2Var4 = xz1Var2.a;
                                                } else {
                                                    as2Var4 = null;
                                                }
                                                if (ls2.a(as2Var3, as2Var4)) {
                                                    if (xz1Var != null) {
                                                        as2Var5 = xz1Var.b;
                                                    } else {
                                                        as2Var5 = null;
                                                    }
                                                    if (xz1Var2 != null) {
                                                        as2Var6 = xz1Var2.b;
                                                    } else {
                                                        as2Var6 = null;
                                                    }
                                                    if (ls2.a(as2Var5, as2Var6)) {
                                                        if (xz1Var != null) {
                                                            as2Var7 = xz1Var.c;
                                                        } else {
                                                            as2Var7 = null;
                                                        }
                                                        if (xz1Var2 != null) {
                                                            as2Var8 = xz1Var2.c;
                                                        } else {
                                                            as2Var8 = null;
                                                        }
                                                        if (ls2.a(as2Var7, as2Var8)) {
                                                            if (xz1Var != null) {
                                                                nv1Var = xz1Var.d;
                                                            } else {
                                                                nv1Var = null;
                                                            }
                                                            if (xz1Var2 != null) {
                                                                nv1Var2 = xz1Var2.d;
                                                            } else {
                                                                nv1Var2 = null;
                                                            }
                                                            if (nv1Var == null || nv1Var2 != null) {
                                                                if (nv1Var != null) {
                                                                    ac1Var = nv1Var.a;
                                                                } else {
                                                                    ac1Var = null;
                                                                }
                                                                if (nv1Var2 != null) {
                                                                    ac1Var2 = nv1Var2.a;
                                                                } else {
                                                                    ac1Var2 = null;
                                                                }
                                                                if (gb1.a(ac1Var, ac1Var2)) {
                                                                    if (nv1Var != null) {
                                                                        ac1Var3 = nv1Var.b;
                                                                    } else {
                                                                        ac1Var3 = null;
                                                                    }
                                                                    if (nv1Var2 != null) {
                                                                        ac1Var4 = nv1Var2.b;
                                                                    } else {
                                                                        ac1Var4 = null;
                                                                    }
                                                                    if (gb1.a(ac1Var3, ac1Var4)) {
                                                                        if (f51Var != null) {
                                                                            l42Var = f51Var.e;
                                                                        } else {
                                                                            l42Var = null;
                                                                        }
                                                                        if (f51Var2 != null) {
                                                                            l42Var2 = f51Var2.e;
                                                                        } else {
                                                                            l42Var2 = null;
                                                                        }
                                                                        if (!gb1.a(l42Var, l42Var2)) {
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                if (f51Var != null) {
                                                                    l42Var = f51Var.e;
                                                                } else {
                                                                    l42Var = null;
                                                                }
                                                                if (f51Var2 != null) {
                                                                    l42Var2 = f51Var2.e;
                                                                } else {
                                                                    l42Var2 = null;
                                                                }
                                                                if (!gb1.a(l42Var, l42Var2)) {
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                if (f51Var != null) {
                                                    l42Var = f51Var.e;
                                                } else {
                                                    l42Var = null;
                                                }
                                                if (f51Var2 != null) {
                                                    l42Var2 = f51Var2.e;
                                                } else {
                                                    l42Var2 = null;
                                                }
                                                if (!gb1.a(l42Var, l42Var2)) {
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        l51Var.b();
                        l51Var.c = f51Var;
                        l51Var.a(f51Var, fs2Var);
                        l51Var.b(f51Var, fs2Var);
                    }
                } else {
                    l51Var.b();
                    l51Var.c = f51Var;
                    l51Var.a(f51Var, fs2Var);
                    l51Var.b(f51Var, fs2Var);
                }
            }
        }
        l51 l51Var2 = this.a;
        if (l51Var2 != null && l51Var2.n != (z = this.b)) {
            l51Var2.n = z;
            l51Var2.e();
            l51Var2.b.invalidate();
        }
        if (f51Var == null) {
            view.setElevation(0.0f);
            view.setClipToOutline(false);
            view.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
            d();
            this.a = null;
        }
        view.invalidate();
    }

    @Override // yads.s51
    public final void setNeedClipping(boolean z) {
        l51 l51Var = this.a;
        if (l51Var != null && l51Var.n != z) {
            l51Var.n = z;
            l51Var.e();
            l51Var.b.invalidate();
        }
        this.b = z;
    }
}
