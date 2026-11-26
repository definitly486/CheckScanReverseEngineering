package yads;

import android.net.Uri;
import android.view.KeyEvent;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.qa8;

/* JADX INFO: loaded from: classes6.dex */
public class lu0 {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:106:0x0169  */
    /* JADX WARN: Code duplicated, block: B:109:0x0171  */
    /* JADX WARN: Code duplicated, block: B:111:0x017b  */
    /* JADX WARN: Code duplicated, block: B:112:0x017e  */
    /* JADX WARN: Code duplicated, block: B:114:0x0184  */
    /* JADX WARN: Code duplicated, block: B:115:0x0187  */
    /* JADX WARN: Code duplicated, block: B:119:0x0191  */
    /* JADX WARN: Code duplicated, block: B:121:0x0199  */
    /* JADX WARN: Code duplicated, block: B:122:0x019e  */
    /* JADX WARN: Code duplicated, block: B:124:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:127:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:130:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:131:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:134:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:135:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:138:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:144:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:147:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:148:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:151:0x0200  */
    /* JADX WARN: Code duplicated, block: B:152:0x020d  */
    /* JADX WARN: Code duplicated, block: B:155:0x0215  */
    /* JADX WARN: Code duplicated, block: B:156:0x0221  */
    /* JADX WARN: Code duplicated, block: B:159:0x0229  */
    /* JADX WARN: Code duplicated, block: B:160:0x0236  */
    /* JADX WARN: Code duplicated, block: B:163:0x023e  */
    /* JADX WARN: Code duplicated, block: B:165:0x024a  */
    /* JADX WARN: Code duplicated, block: B:167:0x0252  */
    /* JADX WARN: Code duplicated, block: B:169:0x0256  */
    /* JADX WARN: Code duplicated, block: B:170:0x0259  */
    /* JADX WARN: Code duplicated, block: B:173:0x025d  */
    /* JADX WARN: Code duplicated, block: B:175:0x0263  */
    /* JADX WARN: Code duplicated, block: B:178:0x0267  */
    /* JADX WARN: Code duplicated, block: B:180:0x026d  */
    /* JADX WARN: Code duplicated, block: B:183:0x0271  */
    /* JADX WARN: Code duplicated, block: B:185:0x0279  */
    /* JADX WARN: Code duplicated, block: B:187:0x027c  */
    /* JADX WARN: Code duplicated, block: B:191:0x028e  */
    /* JADX WARN: Code duplicated, block: B:192:0x0290  */
    /* JADX WARN: Code duplicated, block: B:194:0x0293  */
    /* JADX WARN: Code duplicated, block: B:196:0x029e  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static boolean a(Uri uri, vh2 vh2Var, fs2 fs2Var) {
        vq0 vq0Var;
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        Long lQ;
        long jLongValue;
        String queryParameter4;
        String str;
        ir5 ir5VarA;
        String queryParameter5;
        String authority;
        jp0 jp0Var;
        li2 li2VarA;
        String queryParameter6;
        boolean z;
        String queryParameter7;
        String queryParameter8;
        String queryParameter9;
        String queryParameter10;
        String queryParameter11;
        if (uri != null && "div-action".equals(uri.getScheme())) {
            String authority2 = uri.getAuthority();
            if ("set_state".equals(authority2)) {
                String queryParameter12 = uri.getQueryParameter("state_id");
                if (queryParameter12 == null) {
                    return false;
                }
                try {
                    ((vq0) vh2Var).a(m32.a(queryParameter12), uri.getBooleanQueryParameter("temporary", true));
                } catch (k76 | pt4 unused) {
                    return false;
                }
            } else if ("show_tooltip".equals(authority2)) {
                String queryParameter13 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                if (queryParameter13 == null) {
                    return false;
                }
                vq0 vq0Var2 = (vq0) vh2Var;
                vq0Var2.v().a(queryParameter13, vq0Var2.B, uri.getBooleanQueryParameter("multiple", false));
            } else if ("hide_tooltip".equals(authority2)) {
                String queryParameter14 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                if (queryParameter14 == null) {
                    return false;
                }
                ((vq0) vh2Var).v().a(queryParameter14);
            } else if ("set_variable".equals(authority2)) {
                String queryParameter15 = uri.getQueryParameter("name");
                if (queryParameter15 == null || (queryParameter11 = uri.getQueryParameter("value")) == null) {
                    return false;
                }
                vq0 vq0Var3 = vh2Var instanceof vq0 ? (vq0) vh2Var : null;
                if (vq0Var3 == null) {
                    vh2Var.getClass();
                    return false;
                }
                l76.a(vq0Var3, queryParameter15, queryParameter11, fs2Var);
            } else {
                if (!"timer".equals(authority2)) {
                    if (MimeTypes.BASE_TYPE_VIDEO.equals(authority2)) {
                        vq0 vq0Var4 = vh2Var instanceof vq0 ? (vq0) vh2Var : null;
                        if (vq0Var4 == null || (queryParameter8 = uri.getQueryParameter(TtmlNode.ATTR_ID)) == null || (queryParameter9 = uri.getQueryParameter("action")) == null) {
                            return false;
                        }
                        return ((og2) vq0Var4.n.U.getValue()).a(vq0Var4, queryParameter8, queryParameter9, fs2Var);
                    }
                    if (authority2 != null) {
                        switch (authority2.hashCode()) {
                            case -1789088446:
                                if (authority2.equals("set_next_item")) {
                                    queryParameter5 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                                    if (queryParameter5 != null) {
                                        authority = uri.getAuthority();
                                        if (defpackage.aa4.e(authority, "set_previous_item")) {
                                            jp0Var = jp0.PREVIOUS;
                                        } else if (defpackage.aa4.e(authority, "set_next_item")) {
                                            jp0Var = jp0.NEXT;
                                        } else {
                                            jp0Var = jp0.NEXT;
                                        }
                                        li2VarA = ki2.a(queryParameter5, vh2Var, fs2Var, jp0Var);
                                        if (li2VarA != null) {
                                            queryParameter6 = uri.getQueryParameter("animated");
                                            if (queryParameter6 != null) {
                                                z = Boolean.parseBoolean(queryParameter6);
                                            } else {
                                                z = true;
                                            }
                                            if (authority != null) {
                                                switch (authority.hashCode()) {
                                                    case -1789088446:
                                                        if (authority.equals("set_next_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1509135083:
                                                        if (authority.equals("scroll_backward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1348467885:
                                                        if (authority.equals("scroll_forward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1280379330:
                                                        if (authority.equals("set_previous_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -770388272:
                                                        if (authority.equals("scroll_to_start")) {
                                                            li2VarA.a(0, z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -88123690:
                                                        if (authority.equals("set_current_item") && (queryParameter7 = uri.getQueryParameter("item")) != null) {
                                                            try {
                                                                li2VarA.a(Integer.parseInt(queryParameter7), z);
                                                                return true;
                                                            } catch (NumberFormatException | lr5 unused2) {
                                                            }
                                                        }
                                                        break;
                                                    case 633820873:
                                                        if (authority.equals("scroll_to_end")) {
                                                            li2VarA.a.a(z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 1099321339:
                                                        if (authority.equals("scroll_to_position")) {
                                                            li2VarA.a.a(dn1.a(uri), g12.DP, z);
                                                            return true;
                                                        }
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                } else if (defpackage.aa4.e(authority2, "set_stored_value")) {
                                    if (vh2Var instanceof vq0) {
                                        vq0Var = (vq0) vh2Var;
                                    } else {
                                        vq0Var = null;
                                    }
                                    if (vq0Var != null) {
                                        queryParameter = uri.getQueryParameter("name");
                                        if (queryParameter == null) {
                                            queryParameter = null;
                                        }
                                        if (queryParameter != null) {
                                            queryParameter2 = uri.getQueryParameter("value");
                                            if (queryParameter2 == null) {
                                                queryParameter2 = null;
                                            }
                                            if (queryParameter2 != null) {
                                                queryParameter3 = uri.getQueryParameter("lifetime");
                                                if (queryParameter3 == null) {
                                                    queryParameter3 = null;
                                                }
                                                if (queryParameter3 != null && (lQ = qa8.q(queryParameter3)) != null) {
                                                    jLongValue = lQ.longValue();
                                                    queryParameter4 = uri.getQueryParameter(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                                    if (queryParameter4 == null) {
                                                        str = null;
                                                    } else {
                                                        str = queryParameter4;
                                                    }
                                                    if (str != null) {
                                                        ir5.c.getClass();
                                                        ir5VarA = hr5.a(str);
                                                        if (ir5VarA != null) {
                                                            return ((or5) vq0Var.n.B.getValue()).a(nr5.a(ir5VarA, queryParameter, queryParameter2), jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            case -1509135083:
                                if (authority2.equals("scroll_backward")) {
                                    queryParameter5 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                                    if (queryParameter5 != null) {
                                        authority = uri.getAuthority();
                                        if (defpackage.aa4.e(authority, "set_previous_item")) {
                                            jp0Var = jp0.PREVIOUS;
                                        } else if (defpackage.aa4.e(authority, "set_next_item")) {
                                            jp0Var = jp0.NEXT;
                                        } else {
                                            jp0Var = jp0.NEXT;
                                        }
                                        li2VarA = ki2.a(queryParameter5, vh2Var, fs2Var, jp0Var);
                                        if (li2VarA != null) {
                                            queryParameter6 = uri.getQueryParameter("animated");
                                            if (queryParameter6 != null) {
                                                z = Boolean.parseBoolean(queryParameter6);
                                            } else {
                                                z = true;
                                            }
                                            if (authority != null) {
                                                switch (authority.hashCode()) {
                                                    case -1789088446:
                                                        if (authority.equals("set_next_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1509135083:
                                                        if (authority.equals("scroll_backward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1348467885:
                                                        if (authority.equals("scroll_forward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1280379330:
                                                        if (authority.equals("set_previous_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -770388272:
                                                        if (authority.equals("scroll_to_start")) {
                                                            li2VarA.a(0, z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -88123690:
                                                        if (authority.equals("set_current_item")) {
                                                            li2VarA.a(Integer.parseInt(queryParameter7), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 633820873:
                                                        if (authority.equals("scroll_to_end")) {
                                                            li2VarA.a.a(z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 1099321339:
                                                        if (authority.equals("scroll_to_position")) {
                                                            li2VarA.a.a(dn1.a(uri), g12.DP, z);
                                                            return true;
                                                        }
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                } else if (defpackage.aa4.e(authority2, "set_stored_value")) {
                                    if (vh2Var instanceof vq0) {
                                        vq0Var = (vq0) vh2Var;
                                    } else {
                                        vq0Var = null;
                                    }
                                    if (vq0Var != null) {
                                        queryParameter = uri.getQueryParameter("name");
                                        if (queryParameter == null) {
                                            queryParameter = null;
                                        }
                                        if (queryParameter != null) {
                                            queryParameter2 = uri.getQueryParameter("value");
                                            if (queryParameter2 == null) {
                                                queryParameter2 = null;
                                            }
                                            if (queryParameter2 != null) {
                                                queryParameter3 = uri.getQueryParameter("lifetime");
                                                if (queryParameter3 == null) {
                                                    queryParameter3 = null;
                                                }
                                                if (queryParameter3 != null) {
                                                    jLongValue = lQ.longValue();
                                                    queryParameter4 = uri.getQueryParameter(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                                    if (queryParameter4 == null) {
                                                        str = null;
                                                    } else {
                                                        str = queryParameter4;
                                                    }
                                                    if (str != null) {
                                                        ir5.c.getClass();
                                                        ir5VarA = hr5.a(str);
                                                        if (ir5VarA != null) {
                                                            return ((or5) vq0Var.n.B.getValue()).a(nr5.a(ir5VarA, queryParameter, queryParameter2), jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            case -1348467885:
                                if (authority2.equals("scroll_forward")) {
                                    queryParameter5 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                                    if (queryParameter5 != null) {
                                        authority = uri.getAuthority();
                                        if (defpackage.aa4.e(authority, "set_previous_item")) {
                                            jp0Var = jp0.PREVIOUS;
                                        } else if (defpackage.aa4.e(authority, "set_next_item")) {
                                            jp0Var = jp0.NEXT;
                                        } else {
                                            jp0Var = jp0.NEXT;
                                        }
                                        li2VarA = ki2.a(queryParameter5, vh2Var, fs2Var, jp0Var);
                                        if (li2VarA != null) {
                                            queryParameter6 = uri.getQueryParameter("animated");
                                            if (queryParameter6 != null) {
                                                z = Boolean.parseBoolean(queryParameter6);
                                            } else {
                                                z = true;
                                            }
                                            if (authority != null) {
                                                switch (authority.hashCode()) {
                                                    case -1789088446:
                                                        if (authority.equals("set_next_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1509135083:
                                                        if (authority.equals("scroll_backward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1348467885:
                                                        if (authority.equals("scroll_forward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1280379330:
                                                        if (authority.equals("set_previous_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -770388272:
                                                        if (authority.equals("scroll_to_start")) {
                                                            li2VarA.a(0, z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -88123690:
                                                        if (authority.equals("set_current_item")) {
                                                            li2VarA.a(Integer.parseInt(queryParameter7), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 633820873:
                                                        if (authority.equals("scroll_to_end")) {
                                                            li2VarA.a.a(z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 1099321339:
                                                        if (authority.equals("scroll_to_position")) {
                                                            li2VarA.a.a(dn1.a(uri), g12.DP, z);
                                                            return true;
                                                        }
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                } else if (defpackage.aa4.e(authority2, "set_stored_value")) {
                                    if (vh2Var instanceof vq0) {
                                        vq0Var = (vq0) vh2Var;
                                    } else {
                                        vq0Var = null;
                                    }
                                    if (vq0Var != null) {
                                        queryParameter = uri.getQueryParameter("name");
                                        if (queryParameter == null) {
                                            queryParameter = null;
                                        }
                                        if (queryParameter != null) {
                                            queryParameter2 = uri.getQueryParameter("value");
                                            if (queryParameter2 == null) {
                                                queryParameter2 = null;
                                            }
                                            if (queryParameter2 != null) {
                                                queryParameter3 = uri.getQueryParameter("lifetime");
                                                if (queryParameter3 == null) {
                                                    queryParameter3 = null;
                                                }
                                                if (queryParameter3 != null) {
                                                    jLongValue = lQ.longValue();
                                                    queryParameter4 = uri.getQueryParameter(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                                    if (queryParameter4 == null) {
                                                        str = null;
                                                    } else {
                                                        str = queryParameter4;
                                                    }
                                                    if (str != null) {
                                                        ir5.c.getClass();
                                                        ir5VarA = hr5.a(str);
                                                        if (ir5VarA != null) {
                                                            return ((or5) vq0Var.n.B.getValue()).a(nr5.a(ir5VarA, queryParameter, queryParameter2), jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            case -1280379330:
                                if (authority2.equals("set_previous_item")) {
                                    queryParameter5 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                                    if (queryParameter5 != null) {
                                        authority = uri.getAuthority();
                                        if (defpackage.aa4.e(authority, "set_previous_item")) {
                                            jp0Var = jp0.PREVIOUS;
                                        } else if (defpackage.aa4.e(authority, "set_next_item")) {
                                            jp0Var = jp0.NEXT;
                                        } else {
                                            jp0Var = jp0.NEXT;
                                        }
                                        li2VarA = ki2.a(queryParameter5, vh2Var, fs2Var, jp0Var);
                                        if (li2VarA != null) {
                                            queryParameter6 = uri.getQueryParameter("animated");
                                            if (queryParameter6 != null) {
                                                z = Boolean.parseBoolean(queryParameter6);
                                            } else {
                                                z = true;
                                            }
                                            if (authority != null) {
                                                switch (authority.hashCode()) {
                                                    case -1789088446:
                                                        if (authority.equals("set_next_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1509135083:
                                                        if (authority.equals("scroll_backward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1348467885:
                                                        if (authority.equals("scroll_forward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1280379330:
                                                        if (authority.equals("set_previous_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -770388272:
                                                        if (authority.equals("scroll_to_start")) {
                                                            li2VarA.a(0, z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -88123690:
                                                        if (authority.equals("set_current_item")) {
                                                            li2VarA.a(Integer.parseInt(queryParameter7), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 633820873:
                                                        if (authority.equals("scroll_to_end")) {
                                                            li2VarA.a.a(z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 1099321339:
                                                        if (authority.equals("scroll_to_position")) {
                                                            li2VarA.a.a(dn1.a(uri), g12.DP, z);
                                                            return true;
                                                        }
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                } else if (defpackage.aa4.e(authority2, "set_stored_value")) {
                                    if (vh2Var instanceof vq0) {
                                        vq0Var = (vq0) vh2Var;
                                    } else {
                                        vq0Var = null;
                                    }
                                    if (vq0Var != null) {
                                        queryParameter = uri.getQueryParameter("name");
                                        if (queryParameter == null) {
                                            queryParameter = null;
                                        }
                                        if (queryParameter != null) {
                                            queryParameter2 = uri.getQueryParameter("value");
                                            if (queryParameter2 == null) {
                                                queryParameter2 = null;
                                            }
                                            if (queryParameter2 != null) {
                                                queryParameter3 = uri.getQueryParameter("lifetime");
                                                if (queryParameter3 == null) {
                                                    queryParameter3 = null;
                                                }
                                                if (queryParameter3 != null) {
                                                    jLongValue = lQ.longValue();
                                                    queryParameter4 = uri.getQueryParameter(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                                    if (queryParameter4 == null) {
                                                        str = null;
                                                    } else {
                                                        str = queryParameter4;
                                                    }
                                                    if (str != null) {
                                                        ir5.c.getClass();
                                                        ir5VarA = hr5.a(str);
                                                        if (ir5VarA != null) {
                                                            return ((or5) vq0Var.n.B.getValue()).a(nr5.a(ir5VarA, queryParameter, queryParameter2), jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            case -770388272:
                                if (authority2.equals("scroll_to_start")) {
                                    queryParameter5 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                                    if (queryParameter5 != null) {
                                        authority = uri.getAuthority();
                                        if (defpackage.aa4.e(authority, "set_previous_item")) {
                                            jp0Var = jp0.PREVIOUS;
                                        } else if (defpackage.aa4.e(authority, "set_next_item")) {
                                            jp0Var = jp0.NEXT;
                                        } else {
                                            jp0Var = jp0.NEXT;
                                        }
                                        li2VarA = ki2.a(queryParameter5, vh2Var, fs2Var, jp0Var);
                                        if (li2VarA != null) {
                                            queryParameter6 = uri.getQueryParameter("animated");
                                            if (queryParameter6 != null) {
                                                z = Boolean.parseBoolean(queryParameter6);
                                            } else {
                                                z = true;
                                            }
                                            if (authority != null) {
                                                switch (authority.hashCode()) {
                                                    case -1789088446:
                                                        if (authority.equals("set_next_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1509135083:
                                                        if (authority.equals("scroll_backward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1348467885:
                                                        if (authority.equals("scroll_forward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1280379330:
                                                        if (authority.equals("set_previous_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -770388272:
                                                        if (authority.equals("scroll_to_start")) {
                                                            li2VarA.a(0, z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -88123690:
                                                        if (authority.equals("set_current_item")) {
                                                            li2VarA.a(Integer.parseInt(queryParameter7), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 633820873:
                                                        if (authority.equals("scroll_to_end")) {
                                                            li2VarA.a.a(z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 1099321339:
                                                        if (authority.equals("scroll_to_position")) {
                                                            li2VarA.a.a(dn1.a(uri), g12.DP, z);
                                                            return true;
                                                        }
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                } else if (defpackage.aa4.e(authority2, "set_stored_value")) {
                                    if (vh2Var instanceof vq0) {
                                        vq0Var = (vq0) vh2Var;
                                    } else {
                                        vq0Var = null;
                                    }
                                    if (vq0Var != null) {
                                        queryParameter = uri.getQueryParameter("name");
                                        if (queryParameter == null) {
                                            queryParameter = null;
                                        }
                                        if (queryParameter != null) {
                                            queryParameter2 = uri.getQueryParameter("value");
                                            if (queryParameter2 == null) {
                                                queryParameter2 = null;
                                            }
                                            if (queryParameter2 != null) {
                                                queryParameter3 = uri.getQueryParameter("lifetime");
                                                if (queryParameter3 == null) {
                                                    queryParameter3 = null;
                                                }
                                                if (queryParameter3 != null) {
                                                    jLongValue = lQ.longValue();
                                                    queryParameter4 = uri.getQueryParameter(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                                    if (queryParameter4 == null) {
                                                        str = null;
                                                    } else {
                                                        str = queryParameter4;
                                                    }
                                                    if (str != null) {
                                                        ir5.c.getClass();
                                                        ir5VarA = hr5.a(str);
                                                        if (ir5VarA != null) {
                                                            return ((or5) vq0Var.n.B.getValue()).a(nr5.a(ir5VarA, queryParameter, queryParameter2), jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            case -88123690:
                                if (authority2.equals("set_current_item")) {
                                    queryParameter5 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                                    if (queryParameter5 != null) {
                                        authority = uri.getAuthority();
                                        if (defpackage.aa4.e(authority, "set_previous_item")) {
                                            jp0Var = jp0.PREVIOUS;
                                        } else if (defpackage.aa4.e(authority, "set_next_item")) {
                                            jp0Var = jp0.NEXT;
                                        } else {
                                            jp0Var = jp0.NEXT;
                                        }
                                        li2VarA = ki2.a(queryParameter5, vh2Var, fs2Var, jp0Var);
                                        if (li2VarA != null) {
                                            queryParameter6 = uri.getQueryParameter("animated");
                                            if (queryParameter6 != null) {
                                                z = Boolean.parseBoolean(queryParameter6);
                                            } else {
                                                z = true;
                                            }
                                            if (authority != null) {
                                                switch (authority.hashCode()) {
                                                    case -1789088446:
                                                        if (authority.equals("set_next_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1509135083:
                                                        if (authority.equals("scroll_backward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1348467885:
                                                        if (authority.equals("scroll_forward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1280379330:
                                                        if (authority.equals("set_previous_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -770388272:
                                                        if (authority.equals("scroll_to_start")) {
                                                            li2VarA.a(0, z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -88123690:
                                                        if (authority.equals("set_current_item")) {
                                                            li2VarA.a(Integer.parseInt(queryParameter7), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 633820873:
                                                        if (authority.equals("scroll_to_end")) {
                                                            li2VarA.a.a(z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 1099321339:
                                                        if (authority.equals("scroll_to_position")) {
                                                            li2VarA.a.a(dn1.a(uri), g12.DP, z);
                                                            return true;
                                                        }
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                } else if (defpackage.aa4.e(authority2, "set_stored_value")) {
                                    if (vh2Var instanceof vq0) {
                                        vq0Var = (vq0) vh2Var;
                                    } else {
                                        vq0Var = null;
                                    }
                                    if (vq0Var != null) {
                                        queryParameter = uri.getQueryParameter("name");
                                        if (queryParameter == null) {
                                            queryParameter = null;
                                        }
                                        if (queryParameter != null) {
                                            queryParameter2 = uri.getQueryParameter("value");
                                            if (queryParameter2 == null) {
                                                queryParameter2 = null;
                                            }
                                            if (queryParameter2 != null) {
                                                queryParameter3 = uri.getQueryParameter("lifetime");
                                                if (queryParameter3 == null) {
                                                    queryParameter3 = null;
                                                }
                                                if (queryParameter3 != null) {
                                                    jLongValue = lQ.longValue();
                                                    queryParameter4 = uri.getQueryParameter(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                                    if (queryParameter4 == null) {
                                                        str = null;
                                                    } else {
                                                        str = queryParameter4;
                                                    }
                                                    if (str != null) {
                                                        ir5.c.getClass();
                                                        ir5VarA = hr5.a(str);
                                                        if (ir5VarA != null) {
                                                            return ((or5) vq0Var.n.B.getValue()).a(nr5.a(ir5VarA, queryParameter, queryParameter2), jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            case 633820873:
                                if (authority2.equals("scroll_to_end")) {
                                    queryParameter5 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                                    if (queryParameter5 != null) {
                                        authority = uri.getAuthority();
                                        if (defpackage.aa4.e(authority, "set_previous_item")) {
                                            jp0Var = jp0.PREVIOUS;
                                        } else if (defpackage.aa4.e(authority, "set_next_item")) {
                                            jp0Var = jp0.NEXT;
                                        } else {
                                            jp0Var = jp0.NEXT;
                                        }
                                        li2VarA = ki2.a(queryParameter5, vh2Var, fs2Var, jp0Var);
                                        if (li2VarA != null) {
                                            queryParameter6 = uri.getQueryParameter("animated");
                                            if (queryParameter6 != null) {
                                                z = Boolean.parseBoolean(queryParameter6);
                                            } else {
                                                z = true;
                                            }
                                            if (authority != null) {
                                                switch (authority.hashCode()) {
                                                    case -1789088446:
                                                        if (authority.equals("set_next_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1509135083:
                                                        if (authority.equals("scroll_backward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1348467885:
                                                        if (authority.equals("scroll_forward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1280379330:
                                                        if (authority.equals("set_previous_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -770388272:
                                                        if (authority.equals("scroll_to_start")) {
                                                            li2VarA.a(0, z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -88123690:
                                                        if (authority.equals("set_current_item")) {
                                                            li2VarA.a(Integer.parseInt(queryParameter7), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 633820873:
                                                        if (authority.equals("scroll_to_end")) {
                                                            li2VarA.a.a(z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 1099321339:
                                                        if (authority.equals("scroll_to_position")) {
                                                            li2VarA.a.a(dn1.a(uri), g12.DP, z);
                                                            return true;
                                                        }
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                } else if (defpackage.aa4.e(authority2, "set_stored_value")) {
                                    if (vh2Var instanceof vq0) {
                                        vq0Var = (vq0) vh2Var;
                                    } else {
                                        vq0Var = null;
                                    }
                                    if (vq0Var != null) {
                                        queryParameter = uri.getQueryParameter("name");
                                        if (queryParameter == null) {
                                            queryParameter = null;
                                        }
                                        if (queryParameter != null) {
                                            queryParameter2 = uri.getQueryParameter("value");
                                            if (queryParameter2 == null) {
                                                queryParameter2 = null;
                                            }
                                            if (queryParameter2 != null) {
                                                queryParameter3 = uri.getQueryParameter("lifetime");
                                                if (queryParameter3 == null) {
                                                    queryParameter3 = null;
                                                }
                                                if (queryParameter3 != null) {
                                                    jLongValue = lQ.longValue();
                                                    queryParameter4 = uri.getQueryParameter(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                                    if (queryParameter4 == null) {
                                                        str = null;
                                                    } else {
                                                        str = queryParameter4;
                                                    }
                                                    if (str != null) {
                                                        ir5.c.getClass();
                                                        ir5VarA = hr5.a(str);
                                                        if (ir5VarA != null) {
                                                            return ((or5) vq0Var.n.B.getValue()).a(nr5.a(ir5VarA, queryParameter, queryParameter2), jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            case 1099321339:
                                if (authority2.equals("scroll_to_position")) {
                                    queryParameter5 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                                    if (queryParameter5 != null) {
                                        authority = uri.getAuthority();
                                        if (defpackage.aa4.e(authority, "set_previous_item")) {
                                            jp0Var = jp0.PREVIOUS;
                                        } else if (defpackage.aa4.e(authority, "set_next_item")) {
                                            jp0Var = jp0.NEXT;
                                        } else {
                                            jp0Var = jp0.NEXT;
                                        }
                                        li2VarA = ki2.a(queryParameter5, vh2Var, fs2Var, jp0Var);
                                        if (li2VarA != null) {
                                            queryParameter6 = uri.getQueryParameter("animated");
                                            if (queryParameter6 != null) {
                                                z = Boolean.parseBoolean(queryParameter6);
                                            } else {
                                                z = true;
                                            }
                                            if (authority != null) {
                                                switch (authority.hashCode()) {
                                                    case -1789088446:
                                                        if (authority.equals("set_next_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1509135083:
                                                        if (authority.equals("scroll_backward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1348467885:
                                                        if (authority.equals("scroll_forward")) {
                                                            li2VarA.b(uri.getQueryParameter("overflow"), dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -1280379330:
                                                        if (authority.equals("set_previous_item")) {
                                                            li2VarA.a(uri.getQueryParameter("overflow"), -dn1.a(uri), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -770388272:
                                                        if (authority.equals("scroll_to_start")) {
                                                            li2VarA.a(0, z);
                                                            return true;
                                                        }
                                                        break;
                                                    case -88123690:
                                                        if (authority.equals("set_current_item")) {
                                                            li2VarA.a(Integer.parseInt(queryParameter7), z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 633820873:
                                                        if (authority.equals("scroll_to_end")) {
                                                            li2VarA.a.a(z);
                                                            return true;
                                                        }
                                                        break;
                                                    case 1099321339:
                                                        if (authority.equals("scroll_to_position")) {
                                                            li2VarA.a.a(dn1.a(uri), g12.DP, z);
                                                            return true;
                                                        }
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                } else if (defpackage.aa4.e(authority2, "set_stored_value")) {
                                    if (vh2Var instanceof vq0) {
                                        vq0Var = (vq0) vh2Var;
                                    } else {
                                        vq0Var = null;
                                    }
                                    if (vq0Var != null) {
                                        queryParameter = uri.getQueryParameter("name");
                                        if (queryParameter == null) {
                                            queryParameter = null;
                                        }
                                        if (queryParameter != null) {
                                            queryParameter2 = uri.getQueryParameter("value");
                                            if (queryParameter2 == null) {
                                                queryParameter2 = null;
                                            }
                                            if (queryParameter2 != null) {
                                                queryParameter3 = uri.getQueryParameter("lifetime");
                                                if (queryParameter3 == null) {
                                                    queryParameter3 = null;
                                                }
                                                if (queryParameter3 != null) {
                                                    jLongValue = lQ.longValue();
                                                    queryParameter4 = uri.getQueryParameter(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                                    if (queryParameter4 == null) {
                                                        str = null;
                                                    } else {
                                                        str = queryParameter4;
                                                    }
                                                    if (str != null) {
                                                        ir5.c.getClass();
                                                        ir5VarA = hr5.a(str);
                                                        if (ir5VarA != null) {
                                                            return ((or5) vq0Var.n.B.getValue()).a(nr5.a(ir5VarA, queryParameter, queryParameter2), jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            default:
                                if (defpackage.aa4.e(authority2, "set_stored_value")) {
                                    if (vh2Var instanceof vq0) {
                                        vq0Var = (vq0) vh2Var;
                                    } else {
                                        vq0Var = null;
                                    }
                                    if (vq0Var != null) {
                                        queryParameter = uri.getQueryParameter("name");
                                        if (queryParameter == null) {
                                            queryParameter = null;
                                        }
                                        if (queryParameter != null) {
                                            queryParameter2 = uri.getQueryParameter("value");
                                            if (queryParameter2 == null) {
                                                queryParameter2 = null;
                                            }
                                            if (queryParameter2 != null) {
                                                queryParameter3 = uri.getQueryParameter("lifetime");
                                                if (queryParameter3 == null) {
                                                    queryParameter3 = null;
                                                }
                                                if (queryParameter3 != null) {
                                                    jLongValue = lQ.longValue();
                                                    queryParameter4 = uri.getQueryParameter(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                                    if (queryParameter4 == null) {
                                                        str = null;
                                                    } else {
                                                        str = queryParameter4;
                                                    }
                                                    if (str != null) {
                                                        ir5.c.getClass();
                                                        ir5VarA = hr5.a(str);
                                                        if (ir5VarA != null) {
                                                            return ((or5) vq0Var.n.B.getValue()).a(nr5.a(ir5VarA, queryParameter, queryParameter2), jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                        }
                    } else if (defpackage.aa4.e(authority2, "set_stored_value")) {
                        if (vh2Var instanceof vq0) {
                            vq0Var = (vq0) vh2Var;
                        } else {
                            vq0Var = null;
                        }
                        if (vq0Var != null) {
                            queryParameter = uri.getQueryParameter("name");
                            if (queryParameter == null) {
                                queryParameter = null;
                            }
                            if (queryParameter != null) {
                                queryParameter2 = uri.getQueryParameter("value");
                                if (queryParameter2 == null) {
                                    queryParameter2 = null;
                                }
                                if (queryParameter2 != null) {
                                    queryParameter3 = uri.getQueryParameter("lifetime");
                                    if (queryParameter3 == null) {
                                        queryParameter3 = null;
                                    }
                                    if (queryParameter3 != null) {
                                        jLongValue = lQ.longValue();
                                        queryParameter4 = uri.getQueryParameter(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                        if (queryParameter4 == null) {
                                            str = null;
                                        } else {
                                            str = queryParameter4;
                                        }
                                        if (str != null) {
                                            ir5.c.getClass();
                                            ir5VarA = hr5.a(str);
                                            if (ir5VarA != null) {
                                                return ((or5) vq0Var.n.B.getValue()).a(nr5.a(ir5VarA, queryParameter, queryParameter2), jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return false;
                }
                String queryParameter16 = uri.getQueryParameter(TtmlNode.ATTR_ID);
                if (queryParameter16 == null || (queryParameter10 = uri.getQueryParameter("action")) == null) {
                    return false;
                }
                vq0 vq0Var5 = vh2Var instanceof vq0 ? (vq0) vh2Var : null;
                if (vq0Var5 == null) {
                    vh2Var.getClass();
                    return false;
                }
                hb2 hb2Var = vq0Var5.C;
                if (hb2Var != null) {
                    hb2Var.a(queryParameter16, queryParameter10);
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    public boolean a(r02 r02Var, vq0 vq0Var, fs2 fs2Var) {
        fs2 fs2Var2;
        String authority;
        Uri uri;
        String queryParameter;
        tt ttVarC;
        String strB = r02Var.b();
        if (strB == null) {
            fs2Var2 = null;
        } else {
            KeyEvent.Callback callbackA = jg6.a(strB, vq0Var);
            if (!(callbackA instanceof wh1) || (ttVarC = ((wh1) callbackA).c()) == null) {
                fs2Var2 = null;
            } else {
                fs2Var2 = ttVarC.b;
            }
        }
        if (fs2Var2 == null) {
            fs2Var2 = fs2Var;
        }
        if (az0.a(r02Var.b(), r02Var.c(), vq0Var, fs2Var2, r02Var.e())) {
            return true;
        }
        Uri uri2 = r02Var.getUrl() != null ? (Uri) r02Var.getUrl().a(fs2Var) : null;
        if (uri2 != null && (authority = uri2.getAuthority()) != null && "download".equals(authority) && uri2.getQueryParameter("url") != null && vq0Var != null) {
            as2 url = r02Var.getUrl();
            if (url == null || (uri = (Uri) url.a(fs2Var2)) == null || (queryParameter = uri.getQueryParameter("url")) == null) {
                return false;
            }
            mc1 mc1Var = new mc1();
            ((defpackage.f2) vq0Var.n.c.i).getClass();
            vq0Var.a(sc1.b(vq0Var, queryParameter, mc1Var));
            return true;
        }
        return a(uri2, vq0Var, fs2Var);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001c  */
    public boolean a(xr0 xr0Var, vh2 vh2Var, fs2 fs2Var) {
        fs2 fs2Var2;
        String authority;
        Uri uri;
        String queryParameter;
        tt ttVarC;
        vq0 vq0Var = (vq0) vh2Var;
        String str = xr0Var.h;
        if (str == null) {
            fs2Var2 = null;
        } else {
            KeyEvent.Callback callbackA = jg6.a(str, vq0Var);
            if (!(callbackA instanceof wh1) || (ttVarC = ((wh1) callbackA).c()) == null) {
                fs2Var2 = null;
            } else {
                fs2Var2 = ttVarC.b;
            }
        }
        if (fs2Var2 == null) {
            fs2Var2 = fs2Var;
        }
        if (az0.a(xr0Var.h, xr0Var.j, vh2Var, fs2Var2, xr0Var.a)) {
            return true;
        }
        as2 as2Var = xr0Var.k;
        Uri uri2 = as2Var != null ? (Uri) as2Var.a(fs2Var) : null;
        if (uri2 != null && (authority = uri2.getAuthority()) != null && "download".equals(authority) && uri2.getQueryParameter("url") != null && (vh2Var instanceof vq0)) {
            as2 as2Var2 = xr0Var.k;
            if (as2Var2 == null || (uri = (Uri) as2Var2.a(fs2Var2)) == null || (queryParameter = uri.getQueryParameter("url")) == null) {
                return false;
            }
            mc1 mc1Var = new mc1();
            ((defpackage.f2) vq0Var.n.c.i).getClass();
            vq0Var.a(sc1.b(vq0Var, queryParameter, mc1Var));
            return true;
        }
        return a(uri2, vh2Var, fs2Var2);
    }
}
