.class public abstract Lyads/cp;
.super Lyads/r06;
.source "SourceFile"


# instance fields
.field public final B:Lyads/e4;

.field public final C:Lyads/q84;

.field public final D:Ljava/lang/String;

.field public final E:Lyads/ng4;

.field public final F:Lyads/gj5;

.field public final G:Lyads/cj5;

.field public final H:Lyads/d5;

.field public final I:Landroid/content/Context;

.field public final J:Lcl4;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/q84;Ljava/lang/String;Ljava/lang/String;Lyads/ng4;Lyads/qp;Lyads/ds;Lyads/ug4;Lyads/gj5;I)V
    .locals 15

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 117
    invoke-static/range {p1 .. p1}, Lyads/fj5;->a(Landroid/content/Context;)Lyads/gj5;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p10

    .line 118
    :goto_0
    new-instance v12, Lyads/cj5;

    invoke-direct {v12, v11}, Lyads/cj5;-><init>(Lyads/gj5;)V

    .line 119
    new-instance v13, Lyads/d5;

    invoke-direct {v13}, Lyads/d5;-><init>()V

    .line 120
    new-instance v14, Lyads/v8;

    invoke-direct {v14}, Lyads/v8;-><init>()V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 121
    invoke-direct/range {v1 .. v14}, Lyads/cp;-><init>(Landroid/content/Context;Lyads/e4;Lyads/q84;Ljava/lang/String;Ljava/lang/String;Lyads/ng4;Lyads/qp;Lyads/ds;Lyads/ug4;Lyads/gj5;Lyads/cj5;Lyads/d5;Lyads/v8;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/q84;Ljava/lang/String;Ljava/lang/String;Lyads/ng4;Lyads/qp;Lyads/ds;Lyads/ug4;Lyads/gj5;Lyads/cj5;Lyads/d5;Lyads/v8;)V
    .locals 10

    invoke-virtual {p2}, Lyads/e4;->c()Lyads/vn2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    move-object v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p3

    move-object v4, p4

    move-object/from16 v8, p7

    move-object/from16 v5, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v9}, Lyads/r06;-><init>(Landroid/content/Context;Lyads/e4;ILjava/lang/String;Lyads/ds;Ljava/lang/Object;Lyads/h85;Lyads/w75;Lyads/q84;)V

    iput-object p2, p0, Lyads/cp;->B:Lyads/e4;

    iput-object p3, p0, Lyads/cp;->C:Lyads/q84;

    iput-object p5, p0, Lyads/cp;->D:Ljava/lang/String;

    move-object/from16 v3, p6

    iput-object v3, p0, Lyads/cp;->E:Lyads/ng4;

    move-object/from16 v3, p10

    iput-object v3, p0, Lyads/cp;->F:Lyads/gj5;

    move-object/from16 v3, p11

    iput-object v3, p0, Lyads/cp;->G:Lyads/cj5;

    move-object/from16 v3, p12

    iput-object v3, p0, Lyads/cp;->H:Lyads/d5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lyads/cp;->I:Landroid/content/Context;

    new-instance v3, Lto3;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1, p0}, Lto3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lfh8;

    invoke-direct {v4, v3}, Lfh8;-><init>(Lll3;)V

    iput-object v4, p0, Lyads/cp;->J:Lcl4;

    sget-object v3, Lyads/zg5;->l:Lyads/zg5;

    if-nez v3, :cond_1

    sget-object v3, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lyads/zg5;->l:Lyads/zg5;

    if-nez v4, :cond_0

    new-instance v4, Lyads/zg5;

    invoke-direct {v4}, Lyads/zg5;-><init>()V

    sput-object v4, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3

    move-object v3, v4

    goto :goto_2

    :goto_1
    monitor-exit v3

    throw v0

    :cond_1
    :goto_2
    invoke-virtual {v3, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Lyads/fe5;->x0:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_3
    move-object/from16 v3, p13

    goto :goto_4

    :cond_2
    iget v2, p2, Lyads/e4;->o:I

    goto :goto_3

    :goto_4
    invoke-virtual {v3, p1, v2}, Lyads/v8;->a(Landroid/content/Context;I)Lyads/am0;

    move-result-object v1

    iput-object v1, p0, Lyads/r75;->o:Lyads/am0;

    return-void
.end method

.method public static final a(Lyads/k35;)Ljava/lang/CharSequence;
    .locals 2

    .line 943
    invoke-interface {p0}, Lyads/k35;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lyads/k35;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "="

    .line 944
    invoke-static {v0, v1, p0}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/content/Context;Lyads/cp;)Lyads/wg5;
    .locals 1

    .line 926
    new-instance v0, Lyads/wg5;

    iget-object p1, p1, Lyads/cp;->C:Lyads/q84;

    invoke-direct {v0, p0, p1}, Lyads/wg5;-><init>(Landroid/content/Context;Lyads/q84;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lyads/hi6;)Lyads/hi6;
    .locals 8

    .line 927
    iget-object v0, p1, Lyads/hi6;->b:Lyads/en4;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lyads/en4;->a:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 928
    :goto_0
    iget-object v2, p0, Lyads/cp;->J:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/wg5;

    .line 929
    invoke-virtual {p0}, Lyads/cp;->d()Ljava/util/Map;

    move-result-object v3

    .line 930
    invoke-virtual {p0}, Lyads/cp;->b()[B

    move-result-object v4

    .line 931
    iget-object v5, p0, Lyads/cp;->B:Lyads/e4;

    .line 932
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x198

    if-eq v0, v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    if-eqz v4, :cond_2

    .line 933
    :try_start_0
    array-length v4, v4

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    const/high16 v6, 0x1400000

    if-gt v4, v6, :cond_3

    goto :goto_3

    .line 934
    :cond_3
    iget-object v6, v2, Lyads/wg5;->c:Lyads/zg5;

    iget-object v7, v2, Lyads/wg5;->a:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 935
    :cond_4
    iget-boolean v1, v6, Lyads/fe5;->P0:Z

    :goto_2
    if-nez v1, :cond_5

    goto :goto_3

    .line 936
    :cond_5
    invoke-virtual {v2, v3, v4, v5, v0}, Lyads/wg5;->a(Ljava/util/Map;ILyads/e4;I)Ljava/util/Map;

    move-result-object v0

    .line 937
    new-instance v1, Lyads/g75;

    sget-object v3, Lyads/e75;->c:Lyads/e75;

    .line 938
    const-string v3, "sdk_network_debug"

    .line 939
    invoke-static {v0}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    .line 940
    iget-object v0, v2, Lyads/wg5;->b:Lyads/q84;

    invoke-virtual {v0, v1}, Lyads/q84;->a(Lyads/g75;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :catch_0
    :goto_3
    sget v0, Lyads/i4;->d:I

    iget-object p1, p1, Lyads/hi6;->b:Lyads/en4;

    invoke-static {p1}, Lyads/h4;->a(Lyads/en4;)Lyads/i4;

    move-result-object p1

    .line 942
    invoke-super {p0, p1}, Lyads/r06;->a(Lyads/hi6;)Lyads/hi6;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/en4;I)Lyads/z85;
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p2}, Lyads/cp;->b(Lyads/en4;I)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Lyads/en4;->c:Ljava/util/Map;

    sget-object v3, Lmx2;->b:Lmx2;

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Lyads/es;->a(Ljava/util/Map;)V

    const/16 v4, 0xcc

    move/from16 v5, p2

    if-eq v4, v5, :cond_22

    sget-object v4, Lyads/oa3;->e:Lyads/oa3;

    invoke-static {v2, v4}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    sget-object v5, Lyads/n70;->c:Lyads/m70;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lyads/m70;->a(Ljava/lang/String;)Lyads/n70;

    move-result-object v7

    iget-object v4, v0, Lyads/cp;->B:Lyads/e4;

    iget-object v5, v4, Lyads/e4;->a:Lyads/n70;

    if-ne v7, v5, :cond_21

    iget-object v5, v0, Lyads/cp;->E:Lyads/ng4;

    iget-object v5, v5, Lyads/ng4;->a:Lyads/wg4;

    new-instance v6, Lyads/c95;

    invoke-direct {v6, v5}, Lyads/c95;-><init>(Lyads/wg4;)V

    new-instance v5, Lyads/hn4;

    invoke-direct {v5, v4, v6}, Lyads/hn4;-><init>(Lyads/e4;Lyads/c95;)V

    iget-object v0, v0, Lyads/cp;->G:Lyads/cj5;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lyads/cj5;->a(Ljava/util/Map;Z)V

    new-instance v6, Lyads/a95;

    iget v0, v1, Lyads/en4;->a:I

    new-instance v8, Lyads/b95;

    iget-object v9, v1, Lyads/en4;->b:[B

    invoke-direct {v8, v9}, Lyads/b95;-><init>([B)V

    iget-object v9, v1, Lyads/en4;->c:Ljava/util/Map;

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v9

    :goto_0
    invoke-direct {v6, v0, v8, v3}, Lyads/a95;-><init>(ILyads/b95;Ljava/util/Map;)V

    sget-object v0, Lyads/oa3;->c:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->c(Ljava/util/Map;Lyads/oa3;)I

    move-result v12

    sget-object v0, Lyads/oa3;->d:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->c(Ljava/util/Map;Lyads/oa3;)I

    move-result v13

    sget-object v0, Lyads/oa3;->I:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lyads/oa3;->J:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lyads/oa3;->f:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lyads/oa3;->L:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v11, v5, Lyads/hn4;->h:Lyads/qe;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/qe;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v27, v0

    goto :goto_1

    :cond_3
    const/16 v27, 0x0

    :goto_1
    iget-object v0, v5, Lyads/hn4;->a:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->d:Lyads/tl5;

    iget-object v0, v0, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_2

    :cond_4
    const/16 v20, 0x0

    :goto_2
    sget-object v0, Lyads/oa3;->g:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v0

    sget v11, Lyads/ya;->b:I

    if-eqz v0, :cond_5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v14, v0

    sget-wide v16, Lyads/hn4;->j:J

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    :goto_4
    sget-object v0, Lyads/oa3;->v:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v0

    sget v11, Lyads/ya;->b:I

    if-eqz v0, :cond_7

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v14, v0

    sget-wide v17, Lyads/hn4;->j:J

    mul-long v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v25, v0

    goto :goto_6

    :cond_8
    const/16 v25, 0x0

    :goto_6
    iget-object v0, v5, Lyads/hn4;->g:Lyads/ev3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/oa3;->l:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v11

    array-length v14, v11

    move v15, v4

    :goto_7
    if-ge v15, v14, :cond_a

    aget-object v17, v11, v15

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    sget-object v0, Lyads/oa3;->A:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :goto_9
    sget-object v0, Lyads/oa3;->H:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_a

    :cond_c
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :goto_a
    sget-object v0, Lyads/oa3;->o:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->a(Ljava/util/Map;Lyads/oa3;)Z

    move-result v31

    const/4 v3, 0x1

    if-nez v31, :cond_d

    iget-object v0, v5, Lyads/hn4;->b:Lyads/c95;

    iget-object v11, v0, Lyads/c95;->b:Lyads/mi6;

    new-instance v11, Lyads/en4;

    iget v14, v6, Lyads/a95;->a:I

    iget-object v15, v6, Lyads/a95;->b:Lyads/b95;

    iget-object v15, v15, Lyads/b95;->a:[B

    iget-object v4, v6, Lyads/a95;->c:Ljava/util/Map;

    invoke-direct {v11, v14, v15, v4, v3}, Lyads/en4;-><init>(I[BLjava/util/Map;Z)V

    iget-object v0, v0, Lyads/c95;->a:Lyads/wg4;

    invoke-virtual {v0, v11}, Lyads/wg4;->a(Lyads/en4;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_b

    :cond_d
    const/16 v26, 0x0

    :goto_b
    if-eqz v31, :cond_12

    iget-object v0, v5, Lyads/hn4;->c:Lyads/p54;

    iget-object v4, v0, Lyads/p54;->a:Lyads/gn4;

    invoke-virtual {v4, v6}, Lyads/gn4;->a(Lyads/a95;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_12

    :try_start_2
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    const-string v4, "passback_parameters"

    sget-object v14, Lyads/zq3;->a:Lxb4;

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v14, Luz4;

    invoke-direct {v14}, Luz4;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v17, v7

    :try_start_4
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v3, v7}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v17

    const/4 v3, 0x1

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v17, v7

    goto :goto_e

    :cond_e
    move-object/from16 v17, v7

    invoke-virtual {v14}, Luz4;->b()Luz4;

    move-result-object v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v3}, Luz4;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "networks"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v11, :cond_10

    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v19, v4

    iget-object v4, v0, Lyads/p54;->b:Lyads/t64;

    invoke-virtual {v4, v15}, Lyads/t64;->b(Lorg/json/JSONObject;)Lyads/x54;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v19

    goto :goto_d

    :cond_10
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lyads/o54;

    invoke-direct {v0, v7, v3}, Lyads/o54;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    move-object/from16 v23, v0

    goto :goto_10

    :goto_e
    new-instance v3, Lorg/json/JSONException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_11
    :goto_f
    const/16 v23, 0x0

    goto :goto_10

    :catch_5
    :cond_12
    move-object/from16 v17, v7

    goto :goto_f

    :goto_10
    iget-object v0, v5, Lyads/hn4;->a:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->c:Lyads/ma;

    iget-object v11, v0, Lyads/ma;->a:Ljava/lang/String;

    sget-object v0, Lyads/oa3;->m:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->d(Ljava/util/Map;Lyads/oa3;)Ljava/util/ArrayList;

    move-result-object v14

    iget-object v0, v5, Lyads/hn4;->i:Lyads/e9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/e9;->a(Ljava/util/Map;)Lyads/c;

    move-result-object v15

    sget-object v0, Lyads/oa3;->k:Lyads/oa3;

    invoke-static {v2, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lyads/oa3;->r:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->c(Ljava/util/Map;Lyads/oa3;)I

    sget-object v3, Lyads/oa3;->s:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->c(Ljava/util/Map;Lyads/oa3;)I

    move-result v32

    sget-object v3, Lyads/oa3;->t:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->c(Ljava/util/Map;Lyads/oa3;)I

    move-result v33

    sget-object v3, Lyads/oa3;->y:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->c(Ljava/util/Map;Lyads/oa3;)I

    move-result v34

    sget-object v3, Lyads/oa3;->q:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v21

    sget-object v3, Lyads/oa3;->i:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->a(Ljava/util/Map;Lyads/oa3;)Z

    move-result v30

    sget-object v3, Lyads/oa3;->O:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v22

    sget-object v3, Lyads/oa3;->P:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v28

    sget-object v3, Lyads/oa3;->Q:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v29

    sget-object v3, Lyads/oa3;->z:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    iget-object v3, v5, Lyads/hn4;->e:Lyads/q60;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lyads/oa3;->p:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lyads/q60;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lyads/p60;

    iget-object v3, v5, Lyads/hn4;->d:Lyads/u95;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v6, Lyads/a95;->c:Ljava/util/Map;

    sget-object v4, Lyads/oa3;->u:Lyads/oa3;

    invoke-static {v3, v4}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lyads/ya;->b:I

    if-eqz v4, :cond_13

    :try_start_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_11

    :catch_6
    :cond_13
    const/4 v4, 0x0

    :goto_11
    sget-object v6, Lyads/oa3;->w:Lyads/oa3;

    invoke-static {v3, v6}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-static {v6}, Lyads/vo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_12

    :cond_14
    const/4 v6, 0x0

    :goto_12
    if-eqz v4, :cond_15

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_15

    new-instance v7, Lyads/r00;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v7, v4, v6}, Lyads/r00;-><init>(ILjava/lang/String;)V

    goto :goto_13

    :cond_15
    const/4 v7, 0x0

    :goto_13
    sget-object v4, Lyads/oa3;->x:Lyads/oa3;

    invoke-static {v3, v4}, Lyads/v83;->d(Ljava/util/Map;Lyads/oa3;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_16

    new-instance v6, Lyads/aj5;

    invoke-direct {v6, v4}, Lyads/aj5;-><init>(Ljava/lang/String;)V

    goto :goto_14

    :cond_16
    const/4 v6, 0x0

    :goto_14
    sget-object v4, Lyads/oa3;->C:Lyads/oa3;

    invoke-static {v3, v4}, Lyads/v83;->a(Ljava/util/Map;Lyads/oa3;)Z

    move-result v3

    new-instance v4, Lyads/t95;

    invoke-direct {v4, v3, v7, v6}, Lyads/t95;-><init>(ZLyads/r00;Lyads/aj5;)V

    iget-object v3, v5, Lyads/hn4;->f:Lyads/y93;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lyads/oa3;->h:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    sget-object v3, Lyads/oa3;->K:Lyads/oa3;

    invoke-static {v2, v3}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lyads/oa3;->M:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->a(Ljava/util/Map;Lyads/oa3;)Z

    move-result v35

    sget-object v5, Lyads/oa3;->E:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    new-instance v6, Lyads/bw2;

    invoke-direct {v6, v5}, Lyads/bw2;-><init>(Ljava/lang/String;)V

    move-object/from16 v36, v6

    goto :goto_15

    :cond_17
    const/16 v36, 0x0

    :goto_15
    sget-object v5, Lyads/oa3;->j:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_18

    const/16 v37, 0x1

    goto :goto_16

    :cond_18
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move/from16 v37, v5

    :goto_16
    sget-object v5, Lyads/oa3;->S:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_19

    const/16 v38, 0x0

    goto :goto_17

    :cond_19
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move/from16 v38, v5

    :goto_17
    sget-object v5, Lyads/oa3;->T:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1a

    goto :goto_18

    :cond_1a
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :goto_18
    sget-object v5, Lyads/oa3;->U:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    goto :goto_19

    :cond_1b
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :goto_19
    sget-object v5, Lyads/oa3;->V:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1c

    goto :goto_1a

    :cond_1c
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :goto_1a
    sget-object v5, Lyads/oa3;->W:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1d

    const/16 v39, 0x1

    goto :goto_1b

    :cond_1d
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move/from16 v39, v5

    :goto_1b
    sget-object v5, Lyads/oa3;->X:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1e

    const/16 v40, 0x0

    goto :goto_1c

    :cond_1e
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move/from16 v40, v5

    :goto_1c
    sget-object v5, Lyads/oa3;->Y:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1f

    const/16 v41, 0x0

    goto :goto_1d

    :cond_1f
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move/from16 v41, v5

    :goto_1d
    sget-object v5, Lyads/oa3;->Z:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v42

    sget-object v5, Lyads/oa3;->a0:Lyads/oa3;

    invoke-static {v2, v5}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    const/16 v43, 0x0

    goto :goto_1e

    :cond_20
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move/from16 v43, v2

    :goto_1e
    new-instance v6, Lyads/d9;

    const/16 v44, 0x1000

    const/16 v45, 0x0

    move-object/from16 v18, v3

    move-object/from16 v24, v4

    move-object/from16 v7, v17

    move-object/from16 v17, v0

    invoke-direct/range {v6 .. v45}, Lyads/d9;-><init>(Lyads/n70;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;Lyads/c;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lyads/p60;Lyads/rl5;Ljava/lang/String;Ljava/lang/String;Lyads/o54;Lyads/t95;Ljava/lang/Long;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZZIIIZLyads/bw2;ZZZZZLjava/lang/String;ZII)V

    invoke-static {v1}, Lyads/pa3;->a(Lyads/en4;)Lyads/wv;

    move-result-object v0

    new-instance v1, Lyads/z85;

    invoke-direct {v1, v6, v0}, Lyads/z85;-><init>(Ljava/lang/Object;Lyads/wv;)V

    return-object v1

    :cond_21
    new-instance v0, Lyads/i4;

    sget-object v2, Lyads/o4;->k:Lyads/o4;

    invoke-direct {v0, v2, v1}, Lyads/i4;-><init>(Lyads/o4;Lyads/en4;)V

    new-instance v1, Lyads/z85;

    invoke-direct {v1, v0}, Lyads/z85;-><init>(Lyads/hi6;)V

    return-object v1

    :cond_22
    sget v0, Lyads/i4;->d:I

    invoke-static {v1}, Lyads/h4;->a(Lyads/en4;)Lyads/i4;

    move-result-object v0

    new-instance v1, Lyads/z85;

    invoke-direct {v1, v0}, Lyads/z85;-><init>(Lyads/hi6;)V

    return-object v1
.end method

.method public b(Lyads/en4;I)Z
    .locals 1

    const/16 p0, 0xc8

    const/4 v0, 0x0

    if-ne p0, p2, :cond_1

    .line 28
    iget-object p0, p1, Lyads/en4;->b:[B

    if-eqz p0, :cond_1

    array-length p0, p0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    xor-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    return v0
.end method

.method public final b()[B
    .locals 2

    invoke-virtual {p0}, Lyads/r75;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lyads/cp;->D:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Ljava/util/Map;
    .locals 4

    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    iget-object v1, p0, Lyads/cp;->F:Lyads/gj5;

    invoke-virtual {v1}, Lyads/gj5;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lyads/oa3;->D:Lyads/oa3;

    invoke-virtual {v2}, Lyads/oa3;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    sget-object v1, Lyads/oa3;->F:Lyads/oa3;

    invoke-virtual {v1}, Lyads/oa3;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyads/cp;->H:Lyads/d5;

    iget-object v3, p0, Lyads/cp;->I:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lyads/d5;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lyads/oa3;->G:Lyads/oa3;

    invoke-virtual {v1}, Lyads/oa3;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyads/cp;->H:Lyads/d5;

    iget-object v3, p0, Lyads/cp;->I:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lyads/d5;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lyads/cp;->B:Lyads/e4;

    invoke-virtual {v1}, Lyads/e4;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lyads/oa3;->b0:Lyads/oa3;

    invoke-virtual {v2}, Lyads/oa3;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    invoke-super {p0}, Lyads/r06;->d()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Luz4;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Luz4;->b()Luz4;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lyads/r75;->c:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lyads/cp;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lyads/cp;->B:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->b:Lyads/c40;

    iget-object v1, v1, Lyads/c40;->a:Lyads/vn2;

    iget-object v2, v1, Lyads/vn2;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v7, Lsi1;

    const/4 v1, 0x6

    invoke-direct {v7, v1}, Lsi1;-><init>(I)V

    const/4 v6, 0x0

    const/16 v8, 0x1e

    const-string v3, "&"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyads/r75;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
