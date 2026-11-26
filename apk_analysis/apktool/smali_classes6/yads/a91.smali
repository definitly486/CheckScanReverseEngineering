.class public final Lyads/a91;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/v41;

.field public final c:Lws6;

.field public final d:Lyads/zt1;

.field public final e:Lws6;

.field public final f:Lyads/bo2;

.field public final g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lyads/v41;Lws6;Lyads/zt1;Lws6;Lyads/bo2;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p1, p0, Lyads/a91;->b:Lyads/v41;

    iput-object p2, p0, Lyads/a91;->c:Lws6;

    iput-object p3, p0, Lyads/a91;->d:Lyads/zt1;

    iput-object p4, p0, Lyads/a91;->e:Lws6;

    iput-object p5, p0, Lyads/a91;->f:Lyads/bo2;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public static a(Lyads/i81;Lyads/fs2;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2126
    :cond_0
    iget-object v0, p0, Lyads/i81;->c:Lyads/as2;

    invoke-virtual {v0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2127
    iget-object v1, p0, Lyads/i81;->d:Lyads/as2;

    invoke-virtual {v1, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 2128
    :cond_1
    iget-object p0, p0, Lyads/i81;->b:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    or-int/lit8 p0, v0, 0x4

    return p0

    :cond_2
    return v0
.end method

.method public static final a(Lyads/a91;Lyads/yc1;Landroid/content/res/Resources;Lyads/fs2;)Landroid/graphics/Rect;
    .locals 4

    if-nez p1, :cond_0

    .line 2092
    iget-object p1, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 2093
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2094
    iget-object p0, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    return-object p0

    .line 2095
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2096
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2097
    iget-object v1, p1, Lyads/yc1;->g:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/g12;

    .line 2098
    iget-object v2, p1, Lyads/yc1;->e:Lyads/as2;

    if-nez v2, :cond_2

    iget-object v2, p1, Lyads/yc1;->b:Lyads/as2;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2099
    :cond_1
    iget-object p2, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    iget-object v2, p1, Lyads/yc1;->c:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2100
    invoke-static {v2, v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v2

    .line 2101
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 2102
    iget-object p2, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    iget-object v2, p1, Lyads/yc1;->d:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2103
    invoke-static {v2, v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v2

    .line 2104
    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 2105
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    .line 2106
    iget-object v2, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-nez p2, :cond_5

    .line 2107
    iget-object p2, p1, Lyads/yc1;->e:Lyads/as2;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    goto :goto_1

    :cond_3
    move-object p2, v3

    .line 2108
    :goto_1
    invoke-static {p2, v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result p2

    .line 2109
    iput p2, v2, Landroid/graphics/Rect;->left:I

    .line 2110
    iget-object p2, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    iget-object v2, p1, Lyads/yc1;->b:Lyads/as2;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    .line 2111
    :cond_4
    invoke-static {v3, v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v2

    .line 2112
    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 2113
    :cond_5
    iget-object p2, p1, Lyads/yc1;->b:Lyads/as2;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    goto :goto_2

    :cond_6
    move-object p2, v3

    .line 2114
    :goto_2
    invoke-static {p2, v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result p2

    .line 2115
    iput p2, v2, Landroid/graphics/Rect;->left:I

    .line 2116
    iget-object p2, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    iget-object v2, p1, Lyads/yc1;->e:Lyads/as2;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    .line 2117
    :cond_7
    invoke-static {v3, v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v2

    .line 2118
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 2119
    :goto_3
    iget-object p2, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    iget-object v2, p1, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2120
    invoke-static {v2, v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v2

    .line 2121
    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 2122
    iget-object p2, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    iget-object p1, p1, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2123
    invoke-static {p1, v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result p1

    .line 2124
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 2125
    iget-object p0, p0, Lyads/a91;->g:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final a(Lyads/a91;Landroid/view/View;Lyads/j81;Lyads/p41;Lyads/fs2;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 2064
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4, p5}, Lyads/a91;->a(Landroid/view/View;Lyads/j81;Lyads/p41;Lyads/fs2;Lyads/fs2;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/j71;Lyads/tt;Landroid/view/ViewGroup;Lyads/a91;Lyads/j81;Lyads/n32;Lyads/ao2;Ljava/lang/Object;)Lj59;
    .locals 9

    .line 1902
    iget-object v0, p1, Lyads/tt;->b:Lyads/fs2;

    .line 1903
    invoke-static {p0, v0}, Lyads/f71;->a(Lyads/j71;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1904
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p2

    check-cast v0, Lyads/g71;

    invoke-interface {v0}, Lyads/g71;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkx2;->b:Lkx2;

    :cond_0
    move-object v6, v0

    .line 1905
    iget-object v0, p1, Lyads/tt;->a:Lyads/vq0;

    .line 1906
    invoke-virtual {p3, p2, v0, v6, v5}, Lyads/a91;->a(Landroid/view/ViewGroup;Lyads/vq0;Ljava/util/List;Ljava/util/List;)V

    move-object v4, p4

    move-object v2, p1

    move-object v1, p2

    move-object v0, p3

    move-object v3, p4

    move-object v7, p5

    move-object v8, p6

    .line 1907
    invoke-virtual/range {v0 .. v8}, Lyads/a91;->a(Landroid/view/ViewGroup;Lyads/tt;Lyads/j81;Lyads/j81;Ljava/util/List;Ljava/util/List;Lyads/n32;Lyads/ao2;)V

    .line 1908
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static final a(Lyads/jj2;Landroid/util/DisplayMetrics;J)Lj59;
    .locals 0

    .line 2060
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 2061
    invoke-static {p2, p1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p1

    .line 2062
    invoke-virtual {p0, p1}, Lyads/bl6;->setLineSpacing(I)V

    .line 2063
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Landroid/view/View;Lyads/j81;Lyads/p41;Lyads/fs2;Lyads/fs2;)V
    .locals 6

    .line 2065
    invoke-interface {p2}, Lyads/p41;->f()Lyads/as2;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 2066
    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/f11;

    goto :goto_0

    .line 2067
    :cond_0
    invoke-static {p1, p3}, Lyads/jf2;->a(Lyads/j81;Lyads/fs2;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_0

    .line 2068
    :cond_1
    iget-object v0, p1, Lyads/j81;->o:Lyads/as2;

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/m91;

    .line 2069
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    .line 2070
    sget-object v0, Lyads/f11;->h:Lyads/f11;

    goto :goto_0

    .line 2071
    :cond_2
    sget-object v0, Lyads/f11;->i:Lyads/f11;

    goto :goto_0

    .line 2072
    :cond_3
    sget-object v0, Lyads/f11;->h:Lyads/f11;

    goto :goto_0

    .line 2073
    :cond_4
    sget-object v0, Lyads/f11;->g:Lyads/f11;

    goto :goto_0

    .line 2074
    :cond_5
    sget-object v0, Lyads/f11;->f:Lyads/f11;

    goto :goto_0

    .line 2075
    :cond_6
    sget-object v0, Lyads/f11;->e:Lyads/f11;

    .line 2076
    :goto_0
    invoke-interface {p2}, Lyads/p41;->q()Lyads/as2;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 2077
    invoke-virtual {p2, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lyads/h11;

    goto :goto_1

    .line 2078
    :cond_7
    invoke-static {p1, p3}, Lyads/jf2;->a(Lyads/j81;Lyads/fs2;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_1

    .line 2079
    :cond_8
    iget-object p1, p1, Lyads/j81;->p:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/o91;

    .line 2080
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_c

    if-eq p1, v3, :cond_b

    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_9

    .line 2081
    sget-object v4, Lyads/h11;->e:Lyads/h11;

    goto :goto_1

    .line 2082
    :cond_9
    sget-object v4, Lyads/h11;->h:Lyads/h11;

    goto :goto_1

    .line 2083
    :cond_a
    sget-object v4, Lyads/h11;->g:Lyads/h11;

    goto :goto_1

    .line 2084
    :cond_b
    sget-object v4, Lyads/h11;->f:Lyads/h11;

    goto :goto_1

    .line 2085
    :cond_c
    sget-object v4, Lyads/h11;->e:Lyads/h11;

    .line 2086
    :goto_1
    invoke-static {p0, v0, v4}, Lyads/pq;->a(Landroid/view/View;Lyads/f11;Lyads/h11;)V

    return-void
.end method

.method public static a(Lyads/jj2;Lyads/j81;Lyads/j81;Lyads/fs2;)V
    .locals 2

    .line 2051
    iget-object v0, p1, Lyads/j81;->F:Lyads/as2;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lyads/j81;->F:Lyads/as2;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 2052
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 2053
    iget-object v0, p1, Lyads/j81;->F:Lyads/as2;

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2054
    invoke-static {v0, p2}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 2055
    invoke-virtual {p0, v0}, Lyads/bl6;->setLineSpacing(I)V

    .line 2056
    iget-object p1, p1, Lyads/j81;->F:Lyads/as2;

    .line 2057
    instance-of v0, p1, Lyads/xr2;

    if-eqz v0, :cond_2

    :goto_1
    return-void

    .line 2058
    :cond_2
    new-instance v0, Lfu3;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p2}, Lfu3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    .line 2059
    iget-object p0, p0, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public static a(Lyads/x02;Lyads/p41;Lyads/ao2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2087
    instance-of p0, p0, Lyads/v02;

    if-eqz p0, :cond_1

    .line 2088
    invoke-interface {p1}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, " with id=\'"

    const-string v0, "\'"

    .line 2089
    invoke-static {p1, p0, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2090
    :cond_0
    const-string p0, ""

    .line 2091
    :goto_0
    new-instance p1, Ljava/lang/Throwable;

    filled-new-array {p3, p0, p4}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p3, 0x3

    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p3, "Incorrect child size. Container with %s contains child%s with match_parent size along the %s axis."

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lyads/ao2;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/j81;Lyads/j81;Lyads/p41;Lyads/p41;Lyads/fs2;Lyads/fs2;Lyads/hs2;Lyads/vq0;)V
    .locals 9

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 1982
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    if-eqz p5, :cond_2

    .line 1983
    iget-object v0, p2, Lyads/j81;->o:Lyads/as2;

    if-eqz p3, :cond_0

    iget-object v1, p3, Lyads/j81;->o:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v1, v8

    :goto_0
    invoke-static {v0, v1}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1984
    iget-object v0, p2, Lyads/j81;->p:Lyads/as2;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lyads/j81;->p:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object p3, v8

    :goto_1
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1985
    invoke-interface {p4}, Lyads/p41;->f()Lyads/as2;

    move-result-object p3

    invoke-interface {p5}, Lyads/p41;->f()Lyads/as2;

    move-result-object v0

    invoke-static {p3, v0}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1986
    invoke-interface {p4}, Lyads/p41;->q()Lyads/as2;

    move-result-object p3

    invoke-interface {p5}, Lyads/p41;->q()Lyads/as2;

    move-result-object p5

    invoke-static {p3, p5}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    .line 1987
    :cond_2
    invoke-static {p1, p2, p4, p6, v6}, Lyads/a91;->a(Landroid/view/View;Lyads/j81;Lyads/p41;Lyads/fs2;Lyads/fs2;)V

    .line 1988
    iget-object p3, p2, Lyads/j81;->o:Lyads/as2;

    .line 1989
    instance-of p3, p3, Lyads/xr2;

    if-eqz p3, :cond_3

    .line 1990
    iget-object p3, p2, Lyads/j81;->p:Lyads/as2;

    .line 1991
    instance-of p3, p3, Lyads/xr2;

    if-eqz p3, :cond_3

    .line 1992
    invoke-interface {p4}, Lyads/p41;->f()Lyads/as2;

    move-result-object p3

    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1993
    invoke-interface {p4}, Lyads/p41;->q()Lyads/as2;

    move-result-object p3

    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_3

    :goto_2
    return-void

    .line 1994
    :cond_3
    new-instance v0, Lgn9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lgn9;-><init>(Lyads/a91;Landroid/view/View;Lyads/j81;Lyads/p41;Lyads/fs2;Lyads/fs2;)V

    .line 1995
    iget-object p0, p2, Lyads/j81;->o:Lyads/as2;

    invoke-virtual {p0, p6, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {v7, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 1996
    iget-object p0, p2, Lyads/j81;->p:Lyads/as2;

    invoke-virtual {p0, p6, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {v7, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 1997
    invoke-interface {p4}, Lyads/p41;->f()Lyads/as2;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v6, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_3

    :cond_4
    move-object p0, v8

    :goto_3
    invoke-interface {v7, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 1998
    invoke-interface {p4}, Lyads/p41;->q()Lyads/as2;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v6, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v8

    :cond_5
    invoke-interface {v7, v8}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V
    .locals 0

    .line 1909
    check-cast p1, Landroid/view/ViewGroup;

    check-cast p3, Lyads/j81;

    check-cast p4, Lyads/j81;

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/a91;->a(Landroid/view/ViewGroup;Lyads/tt;Lyads/j81;Lyads/j81;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Lyads/tt;Lyads/j81;Lyads/j81;)V
    .locals 17

    move-object/from16 v3, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    iget-object v6, v0, Lyads/j81;->b:Lyads/xr0;

    iget-object v7, v0, Lyads/j81;->d:Ljava/util/List;

    iget-object v8, v0, Lyads/j81;->G:Ljava/util/List;

    iget-object v9, v0, Lyads/j81;->r:Ljava/util/List;

    iget-object v10, v0, Lyads/j81;->x:Ljava/util/List;

    iget-object v11, v0, Lyads/j81;->w:Ljava/util/List;

    iget-object v12, v0, Lyads/j81;->L:Ljava/util/List;

    iget-object v13, v0, Lyads/j81;->K:Ljava/util/List;

    iget-object v14, v0, Lyads/j81;->c:Lyads/k11;

    iget-object v15, v0, Lyads/j81;->l:Lyads/as2;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v4 .. v15}, Lyads/pq;->a(Landroid/view/View;Lyads/tt;Lyads/xr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/k11;Lyads/as2;)V

    iget-object v2, v5, Lyads/tt;->b:Lyads/fs2;

    iget-object v6, v3, Lyads/a91;->f:Lyads/bo2;

    iget-object v5, v5, Lyads/tt;->a:Lyads/vq0;

    iget-object v7, v5, Lyads/vq0;->O:Lyads/qb1;

    iget-object v5, v5, Lyads/vq0;->Q:Lyads/db1;

    invoke-virtual {v6, v5, v7}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object v6

    iget-object v5, v0, Lyads/j81;->i:Lyads/b31;

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    iget-object v8, v1, Lyads/j81;->i:Lyads/b31;

    goto :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    invoke-static {v4, v5, v8, v2}, Lyads/tq;->a(Landroid/view/View;Lyads/b31;Lyads/b31;Lyads/fs2;)V

    iget-object v5, v0, Lyads/j81;->m:Lyads/as2;

    if-eqz v1, :cond_1

    iget-object v8, v1, Lyads/j81;->m:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    invoke-static {v4, v5, v8, v2}, Lyads/tq;->a(Landroid/view/ViewGroup;Lyads/as2;Lyads/as2;Lyads/fs2;)V

    instance-of v5, v4, Lyads/op1;

    const-string v8, "item_spacing will be ignored due to the \'separator\' property."

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-eqz v5, :cond_30

    check-cast v4, Lyads/op1;

    iget-object v5, v0, Lyads/j81;->I:Lyads/as2;

    if-eqz v1, :cond_2

    iget-object v13, v1, Lyads/j81;->I:Lyads/as2;

    goto :goto_2

    :cond_2
    move-object v13, v7

    :goto_2
    invoke-static {v5, v13}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    iget-object v5, v0, Lyads/j81;->I:Lyads/as2;

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/h81;

    sget-object v13, Lyads/k81;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v13, v5

    if-ne v5, v12, :cond_4

    goto :goto_3

    :cond_4
    move v9, v12

    :goto_3
    invoke-virtual {v4, v9}, Lyads/gt3;->setOrientation(I)V

    iget-object v5, v0, Lyads/j81;->I:Lyads/as2;

    instance-of v9, v5, Lyads/xr2;

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    new-instance v9, Lyads/s81;

    invoke-direct {v9, v4, v3}, Lyads/s81;-><init>(Lyads/op1;Lyads/a91;)V

    invoke-virtual {v5, v2, v9}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    iget-object v9, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v9, v5}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_4
    iget-object v5, v0, Lyads/j81;->o:Lyads/as2;

    if-eqz v1, :cond_6

    iget-object v9, v1, Lyads/j81;->o:Lyads/as2;

    goto :goto_5

    :cond_6
    move-object v9, v7

    :goto_5
    invoke-static {v5, v9}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lyads/j81;->p:Lyads/as2;

    if-eqz v1, :cond_7

    iget-object v9, v1, Lyads/j81;->p:Lyads/as2;

    goto :goto_6

    :cond_7
    move-object v9, v7

    :goto_6
    invoke-static {v5, v9}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_7

    :cond_8
    iget-object v5, v0, Lyads/j81;->o:Lyads/as2;

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    iget-object v9, v0, Lyads/j81;->p:Lyads/as2;

    invoke-virtual {v9, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/o91;

    check-cast v5, Lyads/m91;

    invoke-static {v5, v9}, Lyads/jf2;->a(Lyads/m91;Lyads/o91;)I

    move-result v5

    invoke-virtual {v4, v5}, Lyads/yh2;->setGravity(I)V

    iget-object v5, v0, Lyads/j81;->o:Lyads/as2;

    instance-of v5, v5, Lyads/xr2;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lyads/j81;->p:Lyads/as2;

    instance-of v5, v5, Lyads/xr2;

    if-eqz v5, :cond_9

    goto :goto_7

    :cond_9
    new-instance v5, Lyads/o81;

    invoke-direct {v5, v0, v2, v4}, Lyads/o81;-><init>(Lyads/j81;Lyads/fs2;Lyads/op1;)V

    iget-object v9, v0, Lyads/j81;->o:Lyads/as2;

    invoke-virtual {v9, v2, v5}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v9

    iget-object v12, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v12, v9}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v9, v0, Lyads/j81;->p:Lyads/as2;

    invoke-virtual {v9, v2, v5}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    iget-object v9, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v9, v5}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_7
    iget-object v5, v0, Lyads/j81;->P:Lyads/i81;

    if-eqz v1, :cond_a

    iget-object v9, v1, Lyads/j81;->P:Lyads/i81;

    goto :goto_8

    :cond_a
    move-object v9, v7

    :goto_8
    if-eqz v5, :cond_b

    iget-object v12, v5, Lyads/i81;->c:Lyads/as2;

    goto :goto_9

    :cond_b
    move-object v12, v7

    :goto_9
    if-eqz v9, :cond_c

    iget-object v13, v9, Lyads/i81;->c:Lyads/as2;

    goto :goto_a

    :cond_c
    move-object v13, v7

    :goto_a
    invoke-static {v12, v13}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v12

    if-eqz v12, :cond_11

    if-eqz v5, :cond_d

    iget-object v12, v5, Lyads/i81;->d:Lyads/as2;

    goto :goto_b

    :cond_d
    move-object v12, v7

    :goto_b
    if-eqz v9, :cond_e

    iget-object v13, v9, Lyads/i81;->d:Lyads/as2;

    goto :goto_c

    :cond_e
    move-object v13, v7

    :goto_c
    invoke-static {v12, v13}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v12

    if-eqz v12, :cond_11

    if-eqz v5, :cond_f

    iget-object v12, v5, Lyads/i81;->b:Lyads/as2;

    goto :goto_d

    :cond_f
    move-object v12, v7

    :goto_d
    if-eqz v9, :cond_10

    iget-object v9, v9, Lyads/i81;->b:Lyads/as2;

    goto :goto_e

    :cond_10
    move-object v9, v7

    :goto_e
    invoke-static {v12, v9}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v9

    if-eqz v9, :cond_11

    :goto_f
    move-object v13, v0

    move-object v14, v1

    goto/16 :goto_16

    :cond_11
    invoke-static {v5, v2}, Lyads/a91;->a(Lyads/i81;Lyads/fs2;)I

    move-result v9

    invoke-virtual {v4, v9}, Lyads/gt3;->setShowDividers(I)V

    if-eqz v5, :cond_12

    iget-object v9, v5, Lyads/i81;->c:Lyads/as2;

    goto :goto_10

    :cond_12
    move-object v9, v7

    :goto_10
    invoke-static {v9}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz v5, :cond_13

    iget-object v9, v5, Lyads/i81;->d:Lyads/as2;

    goto :goto_11

    :cond_13
    move-object v9, v7

    :goto_11
    invoke-static {v9}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz v5, :cond_14

    iget-object v9, v5, Lyads/i81;->b:Lyads/as2;

    goto :goto_12

    :cond_14
    move-object v9, v7

    :goto_12
    invoke-static {v9}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_f

    :cond_15
    new-instance v0, Lyads/w81;

    move-object v1, v5

    move-object v5, v2

    move-object v13, v4

    move-object v4, v3

    move-object v3, v13

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v0 .. v5}, Lyads/w81;-><init>(Lyads/i81;Lyads/fs2;Lyads/op1;Lyads/a91;Lyads/fs2;)V

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    if-eqz v1, :cond_16

    iget-object v5, v1, Lyads/i81;->c:Lyads/as2;

    if-eqz v5, :cond_16

    invoke-virtual {v5, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    goto :goto_13

    :cond_16
    move-object v5, v7

    :goto_13
    iget-object v9, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v9, v5}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v1, :cond_17

    iget-object v5, v1, Lyads/i81;->d:Lyads/as2;

    if-eqz v5, :cond_17

    invoke-virtual {v5, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    goto :goto_14

    :cond_17
    move-object v5, v7

    :goto_14
    iget-object v9, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v9, v5}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v1, :cond_18

    iget-object v1, v1, Lyads/i81;->b:Lyads/as2;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    goto :goto_15

    :cond_18
    move-object v0, v7

    :goto_15
    iget-object v1, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_16
    iget-object v0, v13, Lyads/j81;->P:Lyads/i81;

    if-eqz v14, :cond_19

    iget-object v1, v14, Lyads/j81;->P:Lyads/i81;

    goto :goto_17

    :cond_19
    move-object v1, v7

    :goto_17
    if-eqz v0, :cond_1a

    iget-object v5, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_18

    :cond_1a
    move-object v5, v7

    :goto_18
    if-eqz v1, :cond_1b

    iget-object v1, v1, Lyads/i81;->e:Lyads/tc1;

    goto :goto_19

    :cond_1b
    move-object v1, v7

    :goto_19
    invoke-static {v5, v1}, Lyads/gb1;->a(Lyads/tc1;Lyads/tc1;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    if-eqz v0, :cond_1d

    iget-object v1, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_1a

    :cond_1d
    move-object v1, v7

    :goto_1a
    if-eqz v1, :cond_1e

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1b

    :cond_1e
    move-object v1, v7

    :goto_1b
    invoke-virtual {v4, v1}, Lyads/gt3;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_1c

    :cond_1f
    move-object v1, v7

    :goto_1c
    invoke-static {v1}, Lyads/gb1;->a(Lyads/tc1;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_1e

    :cond_20
    new-instance v1, Lyads/y81;

    invoke-direct {v1, v0, v2, v4, v2}, Lyads/y81;-><init>(Lyads/i81;Lyads/fs2;Lyads/op1;Lyads/fs2;)V

    if-eqz v0, :cond_21

    iget-object v0, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_1d

    :cond_21
    move-object v0, v7

    :goto_1d
    invoke-static {v4, v0, v2, v1}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    :goto_1e
    iget-object v0, v13, Lyads/j81;->P:Lyads/i81;

    if-eqz v14, :cond_22

    iget-object v1, v14, Lyads/j81;->P:Lyads/i81;

    goto :goto_1f

    :cond_22
    move-object v1, v7

    :goto_1f
    if-eqz v0, :cond_23

    iget-object v5, v0, Lyads/i81;->a:Lyads/yc1;

    goto :goto_20

    :cond_23
    move-object v5, v7

    :goto_20
    if-eqz v1, :cond_24

    iget-object v1, v1, Lyads/i81;->a:Lyads/yc1;

    goto :goto_21

    :cond_24
    move-object v1, v7

    :goto_21
    invoke-static {v5, v1}, Lyads/gb1;->a(Lyads/yc1;Lyads/yc1;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_27

    :cond_25
    if-eqz v0, :cond_26

    iget-object v1, v0, Lyads/i81;->a:Lyads/yc1;

    goto :goto_22

    :cond_26
    move-object v1, v7

    :goto_22
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v1, v5, v2}, Lyads/a91;->a(Lyads/a91;Lyads/yc1;Landroid/content/res/Resources;Lyads/fs2;)Landroid/graphics/Rect;

    move-result-object v1

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v9, v12, v1}, Lyads/gt3;->setDividerMargins(IIII)V

    if-eqz v0, :cond_27

    iget-object v0, v0, Lyads/i81;->a:Lyads/yc1;

    move-object v1, v0

    goto :goto_23

    :cond_27
    move-object v1, v7

    :goto_23
    if-eqz v1, :cond_2c

    invoke-static {v1}, Lyads/gb1;->a(Lyads/yc1;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Lyads/u81;

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lyads/u81;-><init>(Lyads/yc1;Lyads/fs2;Lyads/a91;Lyads/op1;Lyads/fs2;)V

    iget-object v3, v1, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, v1, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, v1, Lyads/yc1;->e:Lyads/as2;

    if-nez v3, :cond_29

    iget-object v5, v1, Lyads/yc1;->b:Lyads/as2;

    if-eqz v5, :cond_28

    goto :goto_24

    :cond_28
    iget-object v3, v1, Lyads/yc1;->c:Lyads/as2;

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, v1, Lyads/yc1;->d:Lyads/as2;

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    iget-object v1, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_27

    :cond_29
    :goto_24
    if-eqz v3, :cond_2a

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    goto :goto_25

    :cond_2a
    move-object v3, v7

    :goto_25
    iget-object v5, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, v1, Lyads/yc1;->b:Lyads/as2;

    if-eqz v1, :cond_2b

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    goto :goto_26

    :cond_2b
    move-object v0, v7

    :goto_26
    iget-object v1, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_2c
    :goto_27
    iget-object v0, v13, Lyads/j81;->A:Lyads/as2;

    if-eqz v14, :cond_2d

    iget-object v7, v14, Lyads/j81;->A:Lyads/as2;

    :cond_2d
    invoke-static {v0, v7}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_28

    :cond_2e
    iget-object v0, v13, Lyads/j81;->A:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v0

    invoke-virtual {v4, v0}, Lyads/gt3;->setItemSpacing(I)V

    iget-object v0, v13, Lyads/j81;->A:Lyads/as2;

    instance-of v1, v0, Lyads/xr2;

    if-eqz v1, :cond_2f

    goto :goto_28

    :cond_2f
    new-instance v1, Lyads/q81;

    invoke-direct {v1, v4}, Lyads/q81;-><init>(Lyads/op1;)V

    invoke-virtual {v0, v2, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    iget-object v1, v4, Lyads/op1;->C:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_28
    iget-object v0, v13, Lyads/j81;->A:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v3, v13, Lyads/j81;->P:Lyads/i81;

    invoke-static {v3, v2}, Lyads/a91;->a(Lyads/i81;Lyads/fs2;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_83

    cmp-long v0, v0, v10

    if-eqz v0, :cond_83

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v8}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lyads/ao2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lyads/ao2;->a()V

    return-void

    :cond_30
    move-object v13, v0

    move-object v14, v1

    instance-of v0, v4, Lyads/jj2;

    if-eqz v0, :cond_83

    check-cast v4, Lyads/jj2;

    iget-object v0, v13, Lyads/j81;->I:Lyads/as2;

    if-eqz v14, :cond_31

    iget-object v1, v14, Lyads/j81;->I:Lyads/as2;

    goto :goto_29

    :cond_31
    move-object v1, v7

    :goto_29
    invoke-static {v0, v1}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_2b

    :cond_32
    iget-object v0, v13, Lyads/j81;->I:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/h81;

    sget-object v1, Lyads/k81;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-ne v0, v12, :cond_33

    goto :goto_2a

    :cond_33
    move v9, v12

    :goto_2a
    invoke-virtual {v4, v9}, Lyads/bl6;->setWrapDirection(I)V

    iget-object v0, v13, Lyads/j81;->I:Lyads/as2;

    instance-of v1, v0, Lyads/xr2;

    if-eqz v1, :cond_34

    goto :goto_2b

    :cond_34
    new-instance v1, Lyads/t81;

    invoke-direct {v1, v4, v3}, Lyads/t81;-><init>(Lyads/jj2;Lyads/a91;)V

    invoke-virtual {v0, v2, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    iget-object v1, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_2b
    iget-object v0, v13, Lyads/j81;->o:Lyads/as2;

    if-eqz v14, :cond_35

    iget-object v1, v14, Lyads/j81;->o:Lyads/as2;

    goto :goto_2c

    :cond_35
    move-object v1, v7

    :goto_2c
    invoke-static {v0, v1}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v13, Lyads/j81;->p:Lyads/as2;

    if-eqz v14, :cond_36

    iget-object v1, v14, Lyads/j81;->p:Lyads/as2;

    goto :goto_2d

    :cond_36
    move-object v1, v7

    :goto_2d
    invoke-static {v0, v1}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_2e

    :cond_37
    iget-object v0, v13, Lyads/j81;->o:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v13, Lyads/j81;->p:Lyads/as2;

    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/o91;

    check-cast v0, Lyads/m91;

    invoke-static {v0, v1}, Lyads/jf2;->a(Lyads/m91;Lyads/o91;)I

    move-result v0

    invoke-virtual {v4, v0}, Lyads/yh2;->setGravity(I)V

    iget-object v0, v13, Lyads/j81;->o:Lyads/as2;

    instance-of v0, v0, Lyads/xr2;

    if-eqz v0, :cond_38

    iget-object v0, v13, Lyads/j81;->p:Lyads/as2;

    instance-of v0, v0, Lyads/xr2;

    if-eqz v0, :cond_38

    goto :goto_2e

    :cond_38
    new-instance v0, Lyads/p81;

    invoke-direct {v0, v13, v2, v4}, Lyads/p81;-><init>(Lyads/j81;Lyads/fs2;Lyads/jj2;)V

    iget-object v1, v13, Lyads/j81;->o:Lyads/as2;

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v5, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v5, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, v13, Lyads/j81;->p:Lyads/as2;

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    iget-object v1, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_2e
    iget-object v1, v13, Lyads/j81;->P:Lyads/i81;

    if-eqz v14, :cond_39

    iget-object v0, v14, Lyads/j81;->P:Lyads/i81;

    goto :goto_2f

    :cond_39
    move-object v0, v7

    :goto_2f
    if-eqz v1, :cond_3a

    iget-object v5, v1, Lyads/i81;->c:Lyads/as2;

    goto :goto_30

    :cond_3a
    move-object v5, v7

    :goto_30
    if-eqz v0, :cond_3b

    iget-object v9, v0, Lyads/i81;->c:Lyads/as2;

    goto :goto_31

    :cond_3b
    move-object v9, v7

    :goto_31
    invoke-static {v5, v9}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_40

    if-eqz v1, :cond_3c

    iget-object v5, v1, Lyads/i81;->d:Lyads/as2;

    goto :goto_32

    :cond_3c
    move-object v5, v7

    :goto_32
    if-eqz v0, :cond_3d

    iget-object v9, v0, Lyads/i81;->d:Lyads/as2;

    goto :goto_33

    :cond_3d
    move-object v9, v7

    :goto_33
    invoke-static {v5, v9}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_40

    if-eqz v1, :cond_3e

    iget-object v5, v1, Lyads/i81;->b:Lyads/as2;

    goto :goto_34

    :cond_3e
    move-object v5, v7

    :goto_34
    if-eqz v0, :cond_3f

    iget-object v0, v0, Lyads/i81;->b:Lyads/as2;

    goto :goto_35

    :cond_3f
    move-object v0, v7

    :goto_35
    invoke-static {v5, v0}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_3c

    :cond_40
    invoke-static {v1, v2}, Lyads/a91;->a(Lyads/i81;Lyads/fs2;)I

    move-result v0

    invoke-virtual {v4, v0}, Lyads/bl6;->setShowSeparators(I)V

    if-eqz v1, :cond_41

    iget-object v0, v1, Lyads/i81;->c:Lyads/as2;

    goto :goto_36

    :cond_41
    move-object v0, v7

    :goto_36
    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_44

    if-eqz v1, :cond_42

    iget-object v0, v1, Lyads/i81;->d:Lyads/as2;

    goto :goto_37

    :cond_42
    move-object v0, v7

    :goto_37
    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_44

    if-eqz v1, :cond_43

    iget-object v0, v1, Lyads/i81;->b:Lyads/as2;

    goto :goto_38

    :cond_43
    move-object v0, v7

    :goto_38
    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_3c

    :cond_44
    new-instance v0, Lyads/x81;

    move-object v5, v2

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lyads/x81;-><init>(Lyads/i81;Lyads/fs2;Lyads/jj2;Lyads/a91;Lyads/fs2;)V

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    if-eqz v1, :cond_45

    iget-object v5, v1, Lyads/i81;->c:Lyads/as2;

    if-eqz v5, :cond_45

    invoke-virtual {v5, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    goto :goto_39

    :cond_45
    move-object v5, v7

    :goto_39
    iget-object v9, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v9, v5}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v1, :cond_46

    iget-object v5, v1, Lyads/i81;->d:Lyads/as2;

    if-eqz v5, :cond_46

    invoke-virtual {v5, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    goto :goto_3a

    :cond_46
    move-object v5, v7

    :goto_3a
    iget-object v9, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v9, v5}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v1, :cond_47

    iget-object v1, v1, Lyads/i81;->b:Lyads/as2;

    if-eqz v1, :cond_47

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    goto :goto_3b

    :cond_47
    move-object v0, v7

    :goto_3b
    iget-object v1, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_3c
    iget-object v0, v13, Lyads/j81;->P:Lyads/i81;

    if-eqz v14, :cond_48

    iget-object v1, v14, Lyads/j81;->P:Lyads/i81;

    goto :goto_3d

    :cond_48
    move-object v1, v7

    :goto_3d
    if-eqz v0, :cond_49

    iget-object v5, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_3e

    :cond_49
    move-object v5, v7

    :goto_3e
    if-eqz v1, :cond_4a

    iget-object v1, v1, Lyads/i81;->e:Lyads/tc1;

    goto :goto_3f

    :cond_4a
    move-object v1, v7

    :goto_3f
    invoke-static {v5, v1}, Lyads/gb1;->a(Lyads/tc1;Lyads/tc1;)Z

    move-result v1

    if-eqz v1, :cond_4b

    goto :goto_44

    :cond_4b
    if-eqz v0, :cond_4c

    iget-object v1, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_40

    :cond_4c
    move-object v1, v7

    :goto_40
    if-eqz v1, :cond_4d

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_41

    :cond_4d
    move-object v1, v7

    :goto_41
    invoke-virtual {v4, v1}, Lyads/bl6;->setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_4e

    iget-object v1, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_42

    :cond_4e
    move-object v1, v7

    :goto_42
    invoke-static {v1}, Lyads/gb1;->a(Lyads/tc1;)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_44

    :cond_4f
    new-instance v1, Lyads/z81;

    invoke-direct {v1, v0, v2, v4, v2}, Lyads/z81;-><init>(Lyads/i81;Lyads/fs2;Lyads/jj2;Lyads/fs2;)V

    if-eqz v0, :cond_50

    iget-object v0, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_43

    :cond_50
    move-object v0, v7

    :goto_43
    invoke-static {v4, v0, v2, v1}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    :goto_44
    iget-object v0, v13, Lyads/j81;->P:Lyads/i81;

    if-eqz v14, :cond_51

    iget-object v1, v14, Lyads/j81;->P:Lyads/i81;

    goto :goto_45

    :cond_51
    move-object v1, v7

    :goto_45
    if-eqz v0, :cond_52

    iget-object v5, v0, Lyads/i81;->a:Lyads/yc1;

    goto :goto_46

    :cond_52
    move-object v5, v7

    :goto_46
    if-eqz v1, :cond_53

    iget-object v1, v1, Lyads/i81;->a:Lyads/yc1;

    goto :goto_47

    :cond_53
    move-object v1, v7

    :goto_47
    invoke-static {v5, v1}, Lyads/gb1;->a(Lyads/yc1;Lyads/yc1;)Z

    move-result v1

    if-eqz v1, :cond_54

    goto/16 :goto_4d

    :cond_54
    if-eqz v0, :cond_55

    iget-object v1, v0, Lyads/i81;->a:Lyads/yc1;

    goto :goto_48

    :cond_55
    move-object v1, v7

    :goto_48
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v1, v5, v2}, Lyads/a91;->a(Lyads/a91;Lyads/yc1;Landroid/content/res/Resources;Lyads/fs2;)Landroid/graphics/Rect;

    move-result-object v1

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v9, v12, v1}, Lyads/bl6;->setSeparatorMargins(IIII)V

    if-eqz v0, :cond_56

    iget-object v0, v0, Lyads/i81;->a:Lyads/yc1;

    move-object v1, v0

    goto :goto_49

    :cond_56
    move-object v1, v7

    :goto_49
    if-eqz v1, :cond_5b

    invoke-static {v1}, Lyads/gb1;->a(Lyads/yc1;)Z

    move-result v0

    if-nez v0, :cond_5b

    new-instance v0, Lyads/v81;

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lyads/v81;-><init>(Lyads/yc1;Lyads/fs2;Lyads/a91;Lyads/jj2;Lyads/fs2;)V

    iget-object v3, v1, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, v1, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, v1, Lyads/yc1;->e:Lyads/as2;

    if-nez v3, :cond_58

    iget-object v5, v1, Lyads/yc1;->b:Lyads/as2;

    if-eqz v5, :cond_57

    goto :goto_4a

    :cond_57
    iget-object v3, v1, Lyads/yc1;->c:Lyads/as2;

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, v1, Lyads/yc1;->d:Lyads/as2;

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    iget-object v1, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_4d

    :cond_58
    :goto_4a
    if-eqz v3, :cond_59

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    goto :goto_4b

    :cond_59
    move-object v3, v7

    :goto_4b
    iget-object v5, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, v1, Lyads/yc1;->b:Lyads/as2;

    if-eqz v1, :cond_5a

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    goto :goto_4c

    :cond_5a
    move-object v0, v7

    :goto_4c
    iget-object v1, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_5b
    :goto_4d
    iget-object v1, v13, Lyads/j81;->E:Lyads/i81;

    if-eqz v14, :cond_5c

    iget-object v0, v14, Lyads/j81;->E:Lyads/i81;

    goto :goto_4e

    :cond_5c
    move-object v0, v7

    :goto_4e
    if-eqz v1, :cond_5d

    iget-object v3, v1, Lyads/i81;->c:Lyads/as2;

    goto :goto_4f

    :cond_5d
    move-object v3, v7

    :goto_4f
    if-eqz v0, :cond_5e

    iget-object v5, v0, Lyads/i81;->c:Lyads/as2;

    goto :goto_50

    :cond_5e
    move-object v5, v7

    :goto_50
    invoke-static {v3, v5}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v3

    if-eqz v3, :cond_63

    if-eqz v1, :cond_5f

    iget-object v3, v1, Lyads/i81;->d:Lyads/as2;

    goto :goto_51

    :cond_5f
    move-object v3, v7

    :goto_51
    if-eqz v0, :cond_60

    iget-object v5, v0, Lyads/i81;->d:Lyads/as2;

    goto :goto_52

    :cond_60
    move-object v5, v7

    :goto_52
    invoke-static {v3, v5}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v3

    if-eqz v3, :cond_63

    if-eqz v1, :cond_61

    iget-object v3, v1, Lyads/i81;->b:Lyads/as2;

    goto :goto_53

    :cond_61
    move-object v3, v7

    :goto_53
    if-eqz v0, :cond_62

    iget-object v0, v0, Lyads/i81;->b:Lyads/as2;

    goto :goto_54

    :cond_62
    move-object v0, v7

    :goto_54
    invoke-static {v3, v0}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_63

    :goto_55
    move-object/from16 v3, p0

    goto/16 :goto_5c

    :cond_63
    invoke-static {v1, v2}, Lyads/a91;->a(Lyads/i81;Lyads/fs2;)I

    move-result v0

    invoke-virtual {v4, v0}, Lyads/bl6;->setShowLineSeparators(I)V

    if-eqz v1, :cond_64

    iget-object v0, v1, Lyads/i81;->c:Lyads/as2;

    goto :goto_56

    :cond_64
    move-object v0, v7

    :goto_56
    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-eqz v1, :cond_65

    iget-object v0, v1, Lyads/i81;->d:Lyads/as2;

    goto :goto_57

    :cond_65
    move-object v0, v7

    :goto_57
    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-eqz v1, :cond_66

    iget-object v0, v1, Lyads/i81;->b:Lyads/as2;

    goto :goto_58

    :cond_66
    move-object v0, v7

    :goto_58
    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_67

    goto :goto_55

    :cond_67
    new-instance v0, Lyads/m81;

    move-object v5, v2

    move-object v3, v4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lyads/m81;-><init>(Lyads/i81;Lyads/fs2;Lyads/jj2;Lyads/a91;Lyads/fs2;)V

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    if-eqz v1, :cond_68

    iget-object v5, v1, Lyads/i81;->c:Lyads/as2;

    if-eqz v5, :cond_68

    invoke-virtual {v5, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    goto :goto_59

    :cond_68
    move-object v5, v7

    :goto_59
    iget-object v9, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v9, v5}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v1, :cond_69

    iget-object v5, v1, Lyads/i81;->d:Lyads/as2;

    if-eqz v5, :cond_69

    invoke-virtual {v5, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    goto :goto_5a

    :cond_69
    move-object v5, v7

    :goto_5a
    iget-object v9, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v9, v5}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v1, :cond_6a

    iget-object v1, v1, Lyads/i81;->b:Lyads/as2;

    if-eqz v1, :cond_6a

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    goto :goto_5b

    :cond_6a
    move-object v0, v7

    :goto_5b
    iget-object v1, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_5c
    iget-object v0, v13, Lyads/j81;->E:Lyads/i81;

    if-eqz v14, :cond_6b

    iget-object v1, v14, Lyads/j81;->E:Lyads/i81;

    goto :goto_5d

    :cond_6b
    move-object v1, v7

    :goto_5d
    if-eqz v0, :cond_6c

    iget-object v5, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_5e

    :cond_6c
    move-object v5, v7

    :goto_5e
    if-eqz v1, :cond_6d

    iget-object v1, v1, Lyads/i81;->e:Lyads/tc1;

    goto :goto_5f

    :cond_6d
    move-object v1, v7

    :goto_5f
    invoke-static {v5, v1}, Lyads/gb1;->a(Lyads/tc1;Lyads/tc1;)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_64

    :cond_6e
    if-eqz v0, :cond_6f

    iget-object v1, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_60

    :cond_6f
    move-object v1, v7

    :goto_60
    if-eqz v1, :cond_70

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_61

    :cond_70
    move-object v1, v7

    :goto_61
    invoke-virtual {v4, v1}, Lyads/bl6;->setLineSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_71

    iget-object v1, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_62

    :cond_71
    move-object v1, v7

    :goto_62
    invoke-static {v1}, Lyads/gb1;->a(Lyads/tc1;)Z

    move-result v1

    if-eqz v1, :cond_72

    goto :goto_64

    :cond_72
    new-instance v1, Lyads/n81;

    invoke-direct {v1, v0, v2, v4, v2}, Lyads/n81;-><init>(Lyads/i81;Lyads/fs2;Lyads/jj2;Lyads/fs2;)V

    if-eqz v0, :cond_73

    iget-object v0, v0, Lyads/i81;->e:Lyads/tc1;

    goto :goto_63

    :cond_73
    move-object v0, v7

    :goto_63
    invoke-static {v4, v0, v2, v1}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    :goto_64
    iget-object v0, v13, Lyads/j81;->E:Lyads/i81;

    if-eqz v14, :cond_74

    iget-object v1, v14, Lyads/j81;->E:Lyads/i81;

    goto :goto_65

    :cond_74
    move-object v1, v7

    :goto_65
    if-eqz v0, :cond_75

    iget-object v5, v0, Lyads/i81;->a:Lyads/yc1;

    goto :goto_66

    :cond_75
    move-object v5, v7

    :goto_66
    if-eqz v1, :cond_76

    iget-object v1, v1, Lyads/i81;->a:Lyads/yc1;

    goto :goto_67

    :cond_76
    move-object v1, v7

    :goto_67
    invoke-static {v5, v1}, Lyads/gb1;->a(Lyads/yc1;Lyads/yc1;)Z

    move-result v1

    if-eqz v1, :cond_77

    goto/16 :goto_6d

    :cond_77
    if-eqz v0, :cond_78

    iget-object v1, v0, Lyads/i81;->a:Lyads/yc1;

    goto :goto_68

    :cond_78
    move-object v1, v7

    :goto_68
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v1, v5, v2}, Lyads/a91;->a(Lyads/a91;Lyads/yc1;Landroid/content/res/Resources;Lyads/fs2;)Landroid/graphics/Rect;

    move-result-object v1

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v9, v12, v1}, Lyads/bl6;->setLineSeparatorMargins(IIII)V

    if-eqz v0, :cond_79

    iget-object v0, v0, Lyads/i81;->a:Lyads/yc1;

    move-object v1, v0

    goto :goto_69

    :cond_79
    move-object v1, v7

    :goto_69
    if-eqz v1, :cond_7e

    invoke-static {v1}, Lyads/gb1;->a(Lyads/yc1;)Z

    move-result v0

    if-nez v0, :cond_7e

    new-instance v0, Lyads/l81;

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lyads/l81;-><init>(Lyads/yc1;Lyads/fs2;Lyads/a91;Lyads/jj2;Lyads/fs2;)V

    iget-object v3, v1, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, v1, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, v1, Lyads/yc1;->e:Lyads/as2;

    if-nez v3, :cond_7b

    iget-object v5, v1, Lyads/yc1;->b:Lyads/as2;

    if-eqz v5, :cond_7a

    goto :goto_6a

    :cond_7a
    iget-object v3, v1, Lyads/yc1;->c:Lyads/as2;

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, v1, Lyads/yc1;->d:Lyads/as2;

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    iget-object v1, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_6d

    :cond_7b
    :goto_6a
    if-eqz v3, :cond_7c

    invoke-virtual {v3, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    goto :goto_6b

    :cond_7c
    move-object v3, v7

    :goto_6b
    iget-object v5, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, v1, Lyads/yc1;->b:Lyads/as2;

    if-eqz v1, :cond_7d

    invoke-virtual {v1, v2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    goto :goto_6c

    :cond_7d
    move-object v0, v7

    :goto_6c
    iget-object v1, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_7e
    :goto_6d
    iget-object v0, v13, Lyads/j81;->A:Lyads/as2;

    if-eqz v14, :cond_7f

    iget-object v7, v14, Lyads/j81;->A:Lyads/as2;

    :cond_7f
    invoke-static {v0, v7}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_80

    goto :goto_6e

    :cond_80
    iget-object v0, v13, Lyads/j81;->A:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v0

    invoke-virtual {v4, v0}, Lyads/bl6;->setItemSpacing(I)V

    iget-object v0, v13, Lyads/j81;->A:Lyads/as2;

    instance-of v1, v0, Lyads/xr2;

    if-eqz v1, :cond_81

    goto :goto_6e

    :cond_81
    new-instance v1, Lyads/r81;

    invoke-direct {v1, v4}, Lyads/r81;-><init>(Lyads/jj2;)V

    invoke-virtual {v0, v2, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    iget-object v1, v4, Lyads/jj2;->A:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_6e
    invoke-static {v4, v13, v14, v2}, Lyads/a91;->a(Lyads/jj2;Lyads/j81;Lyads/j81;Lyads/fs2;)V

    iget-object v0, v13, Lyads/j81;->A:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v3, v13, Lyads/j81;->P:Lyads/i81;

    invoke-static {v3, v2}, Lyads/a91;->a(Lyads/i81;Lyads/fs2;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_82

    cmp-long v0, v0, v10

    if-eqz v0, :cond_82

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v8}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lyads/ao2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lyads/ao2;->a()V

    :cond_82
    iget-object v0, v13, Lyads/j81;->F:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v3, v13, Lyads/j81;->E:Lyads/i81;

    invoke-static {v3, v2}, Lyads/a91;->a(Lyads/i81;Lyads/fs2;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_83

    cmp-long v0, v0, v10

    if-eqz v0, :cond_83

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "line_spacing will be ignored due to the \'line_separator\' property."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lyads/ao2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lyads/ao2;->a()V

    :cond_83
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Lyads/tt;Lyads/j81;Lyads/j81;Ljava/util/List;Ljava/util/List;Lyads/n32;Lyads/ao2;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v2, p3

    move-object/from16 v1, p8

    .line 1910
    iget-object v3, v11, Lyads/tt;->a:Lyads/vq0;

    .line 1911
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1912
    iget-object v3, v11, Lyads/tt;->b:Lyads/fs2;

    .line 1913
    instance-of v4, v10, Lyads/uf1;

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 1914
    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/cn1;

    .line 1915
    iget-object v5, v5, Lyads/cn1;->a:Lyads/br0;

    .line 1916
    invoke-virtual {v5}, Lyads/br0;->a()Lyads/p41;

    move-result-object v5

    .line 1917
    instance-of v6, v10, Lyads/jj2;

    if-eqz v6, :cond_3

    .line 1918
    iget-object v6, v2, Lyads/j81;->I:Lyads/as2;

    invoke-virtual {v6, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lyads/h81;->f:Lyads/h81;

    const-string v8, "cross"

    const-string v9, "wrap layout mode"

    if-ne v6, v7, :cond_2

    .line 1919
    invoke-interface {v5}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v6

    .line 1920
    invoke-static {v6, v5, v1, v9, v8}, Lyads/a91;->a(Lyads/x02;Lyads/p41;Lyads/ao2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1921
    :cond_2
    invoke-interface {v5}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v6

    .line 1922
    invoke-static {v6, v5, v1, v9, v8}, Lyads/a91;->a(Lyads/x02;Lyads/p41;Lyads/ao2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1923
    :cond_3
    instance-of v6, v10, Lyads/op1;

    if-eqz v6, :cond_1

    .line 1924
    iget-object v6, v2, Lyads/j81;->I:Lyads/as2;

    invoke-virtual {v6, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lyads/h81;->f:Lyads/h81;

    const-string v8, "main"

    const-string v9, "wrap_content size"

    if-ne v6, v7, :cond_4

    .line 1925
    iget-object v6, v2, Lyads/j81;->b0:Lyads/x02;

    .line 1926
    instance-of v6, v6, Lyads/w02;

    if-eqz v6, :cond_1

    .line 1927
    invoke-interface {v5}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v6

    .line 1928
    invoke-static {v6, v5, v1, v9, v8}, Lyads/a91;->a(Lyads/x02;Lyads/p41;Lyads/ao2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1929
    :cond_4
    iget-object v6, v2, Lyads/j81;->v:Lyads/x02;

    .line 1930
    instance-of v6, v6, Lyads/w02;

    if-eqz v6, :cond_1

    .line 1931
    iget-object v6, v2, Lyads/j81;->i:Lyads/b31;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lyads/b31;->a:Lyads/as2;

    invoke-virtual {v6, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-nez v6, :cond_1

    .line 1932
    :cond_5
    invoke-interface {v5}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v6

    .line 1933
    invoke-static {v6, v5, v1, v9, v8}, Lyads/a91;->a(Lyads/x02;Lyads/p41;Lyads/ao2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1934
    :cond_6
    :goto_1
    iget-object v1, v2, Lyads/j81;->z:Lyads/j71;

    const/4 v3, 0x0

    const/4 v12, 0x0

    if-eqz v1, :cond_8

    if-nez p5, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v13, p5

    goto/16 :goto_6

    :cond_8
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_c

    check-cast v6, Lyads/cn1;

    .line 1935
    iget-object v5, v6, Lyads/cn1;->a:Lyads/br0;

    .line 1936
    invoke-virtual {v5}, Lyads/br0;->a()Lyads/p41;

    move-result-object v8

    invoke-interface {v8}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    invoke-static {v5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    .line 1937
    :cond_9
    iget-object v8, v0, Lyads/a91;->d:Lyads/zt1;

    .line 1938
    iget-object v8, v8, Lyads/zt1;->a:Lyads/rt1;

    .line 1939
    iget-object v9, v11, Lyads/tt;->a:Lyads/vq0;

    .line 1940
    iget-object v9, v9, Lyads/vq0;->O:Lyads/qb1;

    .line 1941
    iget-object v8, v8, Lyads/rt1;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_b

    .line 1942
    invoke-static {v5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1943
    :goto_4
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v5, v9}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1944
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1945
    check-cast v9, Lyads/br0;

    .line 1946
    new-instance v13, Lyads/cn1;

    .line 1947
    iget-object v14, v6, Lyads/cn1;->b:Lyads/fs2;

    .line 1948
    invoke-direct {v13, v9, v14}, Lyads/cn1;-><init>(Lyads/br0;Lyads/fs2;)V

    .line 1949
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1950
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1951
    invoke-static {v8, v1}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    move v5, v7

    goto :goto_3

    .line 1952
    :cond_b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 1953
    :cond_c
    invoke-static {}, Lu96;->o()V

    throw v12

    :cond_d
    move-object v13, v1

    .line 1954
    :goto_6
    invoke-static {v13}, Lyads/du1;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1955
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v16, v3, 0x1

    if-ltz v3, :cond_14

    check-cast v1, Lyads/cn1;

    .line 1956
    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1957
    iget-object v5, v1, Lyads/cn1;->a:Lyads/br0;

    .line 1958
    iget-object v1, v1, Lyads/cn1;->b:Lyads/fs2;

    .line 1959
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v6, p7

    invoke-virtual {v6, v3}, Lyads/n32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object v3

    .line 1960
    instance-of v7, v4, Lyads/wh1;

    if-eqz v7, :cond_e

    move-object v7, v4

    check-cast v7, Lyads/wh1;

    goto :goto_8

    :cond_e
    move-object v7, v12

    :goto_8
    if-eqz v7, :cond_f

    invoke-interface {v7}, Lyads/wh1;->a()Lyads/br0;

    move-result-object v7

    goto :goto_9

    :cond_f
    move-object v7, v12

    .line 1961
    :goto_9
    iget-object v9, v11, Lyads/tt;->a:Lyads/vq0;

    .line 1962
    iget-object v8, v9, Lyads/vq0;->z:Lyads/ub5;

    move-object/from16 p8, v12

    .line 1963
    iget-object v12, v11, Lyads/tt;->b:Lyads/fs2;

    .line 1964
    invoke-interface {v8, v3, v5, v1, v12}, Lyads/ub5;->a(Lyads/n32;Lyads/br0;Lyads/fs2;Lyads/fs2;)Lyads/ms2;

    move-result-object v8

    .line 1965
    iget-object v12, v0, Lyads/a91;->e:Lws6;

    invoke-interface {v12}, Lws6;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/w41;

    .line 1966
    iget-object v0, v11, Lyads/tt;->b:Lyads/fs2;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v11

    goto :goto_a

    :cond_10
    new-instance v0, Lyads/tt;

    iget-object v2, v11, Lyads/tt;->a:Lyads/vq0;

    invoke-direct {v0, v2, v1}, Lyads/tt;-><init>(Lyads/vq0;Lyads/fs2;)V

    .line 1967
    :goto_a
    invoke-virtual {v12, v0, v4, v5, v3}, Lyads/w41;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/n32;)V

    move-object v0, v1

    move-object v1, v4

    .line 1968
    invoke-virtual {v5}, Lyads/br0;->a()Lyads/p41;

    move-result-object v4

    if-eqz v7, :cond_11

    .line 1969
    invoke-virtual {v7}, Lyads/br0;->a()Lyads/p41;

    move-result-object v2

    goto :goto_b

    :cond_11
    move-object/from16 v2, p8

    .line 1970
    :goto_b
    iget-object v6, v11, Lyads/tt;->b:Lyads/fs2;

    if-eqz v8, :cond_12

    .line 1971
    iget-object v3, v8, Lyads/ms2;->a:Lyads/gs2;

    if-eqz v3, :cond_12

    move-object v7, v3

    goto :goto_c

    :cond_12
    move-object v7, v0

    .line 1972
    :goto_c
    invoke-static {v1}, Lyads/s55;->a(Landroid/view/View;)Lyads/hs2;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object v12, v5

    move-object v5, v2

    move-object/from16 v2, p3

    .line 1973
    invoke-virtual/range {v0 .. v9}, Lyads/a91;->a(Landroid/view/View;Lyads/j81;Lyads/j81;Lyads/p41;Lyads/p41;Lyads/fs2;Lyads/fs2;Lyads/hs2;Lyads/vq0;)V

    .line 1974
    invoke-virtual {v12}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    invoke-static {v0}, Lyads/jf2;->a(Lyads/p41;)Z

    move-result v0

    .line 1975
    iget-object v2, v9, Lyads/vq0;->w:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_13

    .line 1976
    invoke-virtual {v2, v1, v12}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 1977
    :cond_13
    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/br0;

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v12, p8

    move/from16 v3, v16

    goto/16 :goto_7

    :cond_14
    move-object/from16 p8, v12

    .line 1978
    invoke-static {}, Lu96;->o()V

    throw p8

    .line 1979
    :cond_15
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v10

    check-cast v0, Lyads/g71;

    invoke-interface {v0, v13}, Lyads/g71;->setItems(Ljava/util/List;)V

    .line 1980
    iget-object v0, v11, Lyads/tt;->a:Lyads/vq0;

    move-object/from16 v1, p6

    .line 1981
    invoke-static {v10, v0, v13, v1}, Lyads/tq;->a(Landroid/view/ViewGroup;Lyads/vq0;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Lyads/tt;Lyads/j81;Lyads/j81;Lyads/fs2;Lyads/n32;Z)V
    .locals 12

    move-object/from16 v6, p4

    .line 1881
    iget-object v4, p2, Lyads/tt;->a:Lyads/vq0;

    .line 1882
    iget-object v5, p2, Lyads/tt;->b:Lyads/fs2;

    .line 1883
    iget-object v7, p3, Lyads/j81;->B:Ljava/util/List;

    iget-object v8, p3, Lyads/j81;->z:Lyads/j71;

    invoke-static {v7, v8, v5}, Lyads/f71;->a(Ljava/util/List;Lyads/j71;Lyads/fs2;)Ljava/util/List;

    move-result-object v7

    .line 1884
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, p1

    check-cast v5, Lyads/g71;

    invoke-interface {v5}, Lyads/g71;->h()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1885
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/cn1;

    .line 1886
    iget-object v10, p0, Lyads/a91;->c:Lws6;

    invoke-interface {v10}, Lws6;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/qh2;

    .line 1887
    iget-object v11, v9, Lyads/cn1;->a:Lyads/br0;

    .line 1888
    iget-object v9, v9, Lyads/cn1;->b:Lyads/fs2;

    .line 1889
    invoke-virtual {v10, v11, v9}, Lyads/qh2;->c(Lyads/br0;Lyads/fs2;)Landroid/view/View;

    move-result-object v9

    .line 1890
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eq p3, v6, :cond_2

    .line 1891
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 1892
    iget-object v8, p2, Lyads/tt;->b:Lyads/fs2;

    move-object/from16 v9, p5

    .line 1893
    invoke-static {v6, p3, v9, v8}, Lyads/b81;->a(Lyads/p41;Lyads/p41;Lyads/fs2;Lyads/fs2;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1894
    invoke-static {v5, v7}, Lyads/b81;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1895
    :cond_1
    invoke-virtual {p0, p1, v4, v5, v7}, Lyads/a91;->a(Landroid/view/ViewGroup;Lyads/vq0;Ljava/util/List;Ljava/util/List;)V

    const/4 v5, 0x0

    :cond_2
    move-object v8, v5

    .line 1896
    iget-object v5, p0, Lyads/a91;->f:Lyads/bo2;

    .line 1897
    iget-object v9, v4, Lyads/vq0;->O:Lyads/qb1;

    .line 1898
    iget-object v4, v4, Lyads/vq0;->Q:Lyads/db1;

    .line 1899
    invoke-virtual {v5, v4, v9}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    if-eqz p7, :cond_3

    move-object/from16 v4, p6

    .line 1900
    invoke-virtual/range {v0 .. v5}, Lyads/a91;->a(Landroid/view/ViewGroup;Lyads/tt;Lyads/j81;Lyads/n32;Lyads/ao2;)V

    :cond_3
    move-object v4, v6

    move-object v6, v8

    move-object v8, v5

    move-object v5, v7

    move-object/from16 v7, p6

    .line 1901
    invoke-virtual/range {v0 .. v8}, Lyads/a91;->a(Landroid/view/ViewGroup;Lyads/tt;Lyads/j81;Lyads/j81;Ljava/util/List;Ljava/util/List;Lyads/n32;Lyads/ao2;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Lyads/tt;Lyads/j81;Lyads/n32;Lyads/ao2;)V
    .locals 9

    .line 1999
    iget-object v1, p3, Lyads/j81;->z:Lyads/j71;

    if-nez v1, :cond_0

    return-void

    .line 2000
    :cond_0
    iget-object v8, p2, Lyads/tt;->b:Lyads/fs2;

    .line 2001
    new-instance v0, Lhn9;

    move-object v4, p0

    move-object v3, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lhn9;-><init>(Lyads/j71;Lyads/tt;Landroid/view/ViewGroup;Lyads/a91;Lyads/j81;Lyads/n32;Lyads/ao2;)V

    invoke-static {v1, v8, v0}, Lyads/pq;->a(Lyads/j71;Lyads/fs2;Lnl3;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Lyads/vq0;Ljava/util/List;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p1

    .line 2002
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2003
    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v2

    invoke-static {v2}, Ljp7;->q(Lzo7;)Ljava/util/List;

    move-result-object v2

    .line 2004
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2005
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2006
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    move-object/from16 v7, p3

    invoke-static {v7, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v2, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2007
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2008
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    check-cast v2, Lyads/cn1;

    .line 2009
    iget-object v2, v2, Lyads/cn1;->a:Lyads/br0;

    .line 2010
    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    sget-object v2, Lj59;->a:Lj59;

    .line 2012
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2013
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2014
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2015
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    if-ltz v5, :cond_8

    check-cast v6, Lyads/cn1;

    .line 2016
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 2017
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lyads/br0;

    .line 2018
    invoke-static {v11}, Lyads/jf2;->b(Lyads/br0;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2019
    iget-object v12, v6, Lyads/cn1;->a:Lyads/br0;

    .line 2020
    invoke-static {v12}, Lyads/jf2;->a(Lyads/br0;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Lyads/jf2;->a(Lyads/br0;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    goto :goto_3

    .line 2021
    :cond_2
    iget-object v12, v6, Lyads/cn1;->a:Lyads/br0;

    .line 2022
    iget-object v13, v6, Lyads/cn1;->b:Lyads/fs2;

    .line 2023
    invoke-static {v11}, Lyads/jf2;->a(Lyads/br0;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12}, Lyads/jf2;->a(Lyads/br0;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_2

    .line 2024
    :cond_3
    invoke-virtual {v11}, Lyads/br0;->a()Lyads/p41;

    move-result-object v11

    .line 2025
    invoke-virtual {v12}, Lyads/br0;->a()Lyads/p41;

    move-result-object v12

    .line 2026
    instance-of v14, v11, Lyads/zh1;

    if-eqz v14, :cond_4

    instance-of v14, v12, Lyads/zh1;

    if-eqz v14, :cond_4

    .line 2027
    check-cast v11, Lyads/zh1;

    iget-object v11, v11, Lyads/zh1;->B:Lyads/as2;

    invoke-virtual {v11, v13}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v11

    check-cast v12, Lyads/zh1;

    iget-object v12, v12, Lyads/zh1;->B:Lyads/as2;

    invoke-virtual {v12, v13}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    goto :goto_3

    .line 2028
    :cond_4
    invoke-interface {v11}, Lyads/p41;->e()Ljava/util/List;

    move-result-object v11

    invoke-interface {v12}, Lyads/p41;->e()Ljava/util/List;

    move-result-object v12

    if-ne v11, v12, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    move v11, v4

    :goto_3
    if-eqz v11, :cond_1

    move-object v7, v10

    .line 2029
    :cond_6
    check-cast v7, Lyads/br0;

    .line 2030
    invoke-static {v1}, Lv39;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_7

    .line 2031
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 2032
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move v5, v8

    goto/16 :goto_1

    .line 2033
    :cond_8
    invoke-static {}, Lu96;->o()V

    throw v7

    .line 2034
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object/from16 v4, p4

    .line 2035
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/cn1;

    .line 2036
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 2037
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lyads/br0;

    .line 2038
    invoke-static {v9}, Lyads/jf2;->a(Lyads/br0;)Ljava/lang/String;

    move-result-object v9

    .line 2039
    iget-object v10, v5, Lyads/cn1;->a:Lyads/br0;

    .line 2040
    invoke-static {v10}, Lyads/jf2;->a(Lyads/br0;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_6

    :cond_b
    move-object v8, v7

    .line 2041
    :goto_6
    check-cast v8, Lyads/br0;

    .line 2042
    invoke-static {v1}, Lv39;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object/from16 v8, p0

    if-nez v6, :cond_c

    .line 2043
    iget-object v6, v8, Lyads/a91;->c:Lws6;

    invoke-interface {v6}, Lws6;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/qh2;

    .line 2044
    iget-object v9, v5, Lyads/cn1;->a:Lyads/br0;

    .line 2045
    iget-object v5, v5, Lyads/cn1;->b:Lyads/fs2;

    .line 2046
    invoke-virtual {v6, v9, v5}, Lyads/qh2;->c(Lyads/br0;Lyads/fs2;)Landroid/view/View;

    move-result-object v6

    .line 2047
    :cond_c
    invoke-virtual {v0, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5

    .line 2048
    :cond_d
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2049
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2050
    invoke-virtual/range {p2 .. p2}, Lyads/vq0;->u()Lyads/w55;

    move-result-object v2

    invoke-static {v2, v1}, Lyads/di2;->a(Lyads/ci2;Landroid/view/View;)V

    goto :goto_7

    :cond_e
    return-void
.end method
