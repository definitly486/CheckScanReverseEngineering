.class public final Lyads/wo5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ef2;

.field public final b:Lyads/oi1;

.field public final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lyads/ef2;Lyads/oi1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wo5;->a:Lyads/ef2;

    iput-object p2, p0, Lyads/wo5;->b:Lyads/oi1;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyads/wo5;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public static a(ILyads/x72;Lyads/fs2;)I
    .locals 7

    .line 2276
    iget-object v0, p1, Lyads/x72;->f:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2277
    iget-object p1, p1, Lyads/x72;->d:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/w72;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-wide/16 v2, -0x1

    const/16 p2, 0x1f

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_3

    const/4 v6, 0x1

    if-ne p1, v6, :cond_2

    int-to-long p0, p0

    sub-long/2addr p0, v0

    shr-long v0, p0, p2

    cmp-long p2, v0, v4

    if-eqz p2, :cond_1

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p0, p0, v4

    if-lez p0, :cond_5

    goto :goto_1

    :cond_1
    :goto_0
    long-to-int p0, p0

    return p0

    .line 2278
    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_3
    shr-long p0, v0, p2

    cmp-long p2, p0, v4

    if-eqz p2, :cond_6

    cmp-long p0, p0, v2

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    cmp-long p0, v0, v4

    if-lez p0, :cond_5

    :goto_1
    const p0, 0x7fffffff

    return p0

    :cond_5
    const/high16 p0, -0x80000000

    return p0

    :cond_6
    :goto_2
    long-to-int p0, v0

    return p0
.end method

.method public static final a(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 0

    .line 2279
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/tt;Lyads/an2;Landroid/text/SpannableStringBuilder;Lyads/xv5;Lyads/x72;)Lyads/nd3;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 2280
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 2281
    iget-object v6, v0, Lyads/tt;->a:Lyads/vq0;

    .line 2282
    iget-object v7, v0, Lyads/tt;->b:Lyads/fs2;

    .line 2283
    iget v8, v3, Lyads/xv5;->j:I

    .line 2284
    invoke-static {v8, v4, v7}, Lyads/wo5;->a(ILyads/x72;Lyads/fs2;)I

    move-result v8

    .line 2285
    iget-object v9, v4, Lyads/x72;->j:Lyads/af1;

    .line 2286
    invoke-static {v9, v5, v7}, Lyads/uq;->a(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v11

    .line 2287
    iget-object v9, v4, Lyads/x72;->c:Lyads/af1;

    .line 2288
    invoke-static {v9, v5, v7}, Lyads/uq;->a(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v12

    .line 2289
    iget-object v3, v3, Lyads/xv5;->h:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 2290
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v13, v3

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 2291
    :goto_0
    iget-object v3, v4, Lyads/x72;->b:Lyads/as2;

    invoke-virtual {v3, v7}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/d82;

    .line 2292
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v14, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v14, :cond_3

    if-eq v3, v10, :cond_2

    if-eq v3, v9, :cond_1

    .line 2293
    sget-object v3, Lyads/iw5;->d:Lyads/iw5;

    goto :goto_1

    .line 2294
    :cond_1
    sget-object v3, Lyads/iw5;->d:Lyads/iw5;

    goto :goto_1

    .line 2295
    :cond_2
    sget-object v3, Lyads/iw5;->e:Lyads/iw5;

    goto :goto_1

    .line 2296
    :cond_3
    sget-object v3, Lyads/iw5;->c:Lyads/iw5;

    goto :goto_1

    .line 2297
    :cond_4
    sget-object v3, Lyads/iw5;->b:Lyads/iw5;

    .line 2298
    :goto_1
    iget-object v4, v4, Lyads/x72;->a:Lyads/u72;

    const/16 v16, 0x0

    if-eqz v4, :cond_e

    .line 2299
    iget-object v15, v4, Lyads/u72;->b:Lyads/t72;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eq v15, v14, :cond_8

    const-class v17, Landroid/widget/ImageView;

    if-eq v15, v10, :cond_7

    if-eq v15, v9, :cond_6

    const/4 v9, 0x4

    if-eq v15, v9, :cond_5

    move-object/from16 v9, v16

    goto :goto_2

    .line 2300
    :cond_5
    invoke-static/range {v17 .. v17}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v9

    .line 2301
    invoke-virtual {v9}, Lzk1;->a()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 2302
    :cond_6
    const-class v9, Landroid/widget/TextView;

    invoke-static {v9}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v9

    .line 2303
    invoke-virtual {v9}, Lzk1;->a()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 2304
    :cond_7
    invoke-static/range {v17 .. v17}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v9

    .line 2305
    invoke-virtual {v9}, Lzk1;->a()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 2306
    :cond_8
    const-class v9, Landroid/widget/Button;

    invoke-static {v9}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v9

    .line 2307
    invoke-virtual {v9}, Lzk1;->a()Ljava/lang/String;

    move-result-object v9

    .line 2308
    :goto_2
    iget-object v4, v4, Lyads/u72;->a:Lyads/as2;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v7}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object/from16 v4, v16

    :goto_3
    add-int/lit8 v7, v8, 0x1

    .line 2309
    const-class v10, Lyads/yt4;

    invoke-virtual {v2, v8, v7, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 2310
    check-cast v7, [Lyads/yt4;

    .line 2311
    array-length v10, v7

    if-le v10, v14, :cond_a

    .line 2312
    iget-object v10, v0, Lyads/tt;->a:Lyads/vq0;

    .line 2313
    new-instance v15, Ljava/lang/Throwable;

    const/16 p3, 0x0

    const-string v5, "Two or more clickable ranges intersect."

    invoke-direct {v15, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v15}, Lyads/o01;->b(Lyads/vq0;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    const/16 p3, 0x0

    .line 2314
    :goto_4
    array-length v5, v7

    if-nez v5, :cond_b

    move-object/from16 v5, v16

    goto :goto_5

    :cond_b
    aget-object v5, v7, p3

    :goto_5
    if-eqz v5, :cond_c

    .line 2315
    iget-object v5, v5, Lyads/yt4;->c:Ljava/util/List;

    goto :goto_6

    :cond_c
    move-object/from16 v5, v16

    :goto_6
    if-eqz v5, :cond_d

    .line 2316
    new-instance v7, Lnga;

    invoke-direct {v7, v6, v0, v1, v5}, Lnga;-><init>(Lyads/vq0;Lyads/tt;Lyads/an2;Ljava/util/List;)V

    goto :goto_7

    :cond_d
    move-object/from16 v7, v16

    .line 2317
    :goto_7
    new-instance v0, Lyads/ld3;

    invoke-direct {v0, v9, v4, v7}, Lyads/ld3;-><init>(Ljava/lang/String;Ljava/lang/String;Lyads/md3;)V

    move-object v15, v0

    goto :goto_8

    :cond_e
    move-object/from16 v15, v16

    .line 2318
    :goto_8
    new-instance v10, Lyads/nd3;

    move v0, v14

    move-object v14, v3

    invoke-direct/range {v10 .. v15}, Lyads/nd3;-><init>(IIILyads/iw5;Lyads/ld3;)V

    add-int/lit8 v3, v8, 0x1

    const/16 v4, 0x21

    .line 2319
    invoke-virtual {v2, v10, v8, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2320
    instance-of v2, v1, Lyads/zo1;

    if-eqz v2, :cond_f

    check-cast v1, Lyads/zo1;

    goto :goto_9

    :cond_f
    move-object/from16 v1, v16

    :goto_9
    if-eqz v1, :cond_14

    .line 2321
    sget-object v2, Lyads/s0;->a:Ljava/lang/Boolean;

    .line 2322
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2323
    iget-object v2, v1, Lyads/nw5;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2324
    iget-object v2, v10, Lyads/nd3;->f:Lyads/ld3;

    if-eqz v2, :cond_10

    .line 2325
    iget-object v3, v2, Lyads/ld3;->b:Ljava/lang/String;

    goto :goto_a

    :cond_10
    move-object/from16 v3, v16

    :goto_a
    if-nez v3, :cond_12

    if-eqz v2, :cond_11

    .line 2326
    iget-object v2, v2, Lyads/ld3;->c:Lyads/md3;

    move-object/from16 v16, v2

    :cond_11
    if-eqz v16, :cond_13

    .line 2327
    :cond_12
    iget-object v2, v1, Lyads/nw5;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2328
    :cond_13
    iget-object v2, v1, Lyads/nw5;->p:Lyads/lw5;

    if-eqz v2, :cond_14

    iget-object v1, v1, Lyads/nw5;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    :cond_14
    return-object v10
.end method

.method public static final a(Lyads/vq0;Lyads/tt;Landroid/widget/TextView;Ljava/util/List;)V
    .locals 0

    .line 2180
    iget-object p0, p0, Lyads/vq0;->n:Lyads/nq0;

    .line 2181
    iget-object p0, p0, Lyads/nq0;->G:Lcl4;

    .line 2182
    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/bt0;

    .line 2183
    invoke-virtual {p0, p1, p2, p3}, Lyads/bt0;->a(Lyads/tt;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/tt;Lyads/an2;Lyads/b82;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnl3;)Landroid/text/SpannableStringBuilder;
    .locals 73

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lyads/tt;->a()Lyads/vq0;

    move-result-object v8

    invoke-virtual {v2}, Lyads/tt;->b()Lyads/fs2;

    move-result-object v9

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "\u200b"

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    :goto_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v2}, Lyads/tt;->b()Lyads/fs2;

    move-result-object v10

    iget-object v11, v1, Lyads/b82;->v:Lyads/as2;

    invoke-virtual {v11, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    const/16 v13, 0x1f

    shr-long v14, v11, v13

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    const v19, 0x7fffffff

    const-wide/16 v20, -0x1

    const/high16 v22, -0x80000000

    if-eqz v18, :cond_3

    cmp-long v14, v14, v20

    if-nez v14, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v11, v11, v16

    if-lez v11, :cond_2

    move/from16 v26, v19

    goto :goto_2

    :cond_2
    move/from16 v26, v22

    goto :goto_2

    :cond_3
    :goto_1
    long-to-int v11, v11

    move/from16 v26, v11

    :goto_2
    iget-object v11, v1, Lyads/b82;->w:Lyads/as2;

    invoke-virtual {v11, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyads/g12;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12, v5, v11}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v25

    iget-object v12, v1, Lyads/b82;->y:Lyads/as2;

    if-eqz v12, :cond_4

    invoke-virtual {v12, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/tf1;

    move-object/from16 v29, v12

    goto :goto_3

    :cond_4
    const/16 v29, 0x0

    :goto_3
    iget-object v12, v1, Lyads/b82;->z:Lyads/as2;

    if-eqz v12, :cond_8

    invoke-virtual {v12, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    move v15, v13

    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    shr-long v23, v13, v15

    cmp-long v12, v23, v16

    if-eqz v12, :cond_7

    cmp-long v12, v23, v20

    if-nez v12, :cond_5

    goto :goto_4

    :cond_5
    cmp-long v12, v13, v16

    if-lez v12, :cond_6

    move/from16 v12, v19

    goto :goto_5

    :cond_6
    move/from16 v12, v22

    goto :goto_5

    :cond_7
    :goto_4
    long-to-int v12, v13

    :goto_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v30, v12

    goto :goto_6

    :cond_8
    move v15, v13

    const/16 v18, 0x0

    move-object/from16 v30, v18

    :goto_6
    iget-object v12, v1, Lyads/b82;->t:Lyads/as2;

    if-eqz v12, :cond_9

    invoke-virtual {v12, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v28, v12

    goto :goto_7

    :cond_9
    move-object/from16 v28, v18

    :goto_7
    iget-object v12, v1, Lyads/b82;->I:Lyads/as2;

    if-eqz v12, :cond_d

    invoke-virtual {v12, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    shr-long v23, v12, v15

    cmp-long v14, v23, v16

    if-eqz v14, :cond_c

    cmp-long v14, v23, v20

    if-nez v14, :cond_a

    goto :goto_8

    :cond_a
    cmp-long v12, v12, v16

    if-lez v12, :cond_b

    move/from16 v12, v19

    goto :goto_9

    :cond_b
    move/from16 v12, v22

    goto :goto_9

    :cond_c
    :goto_8
    long-to-int v12, v12

    :goto_9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12, v5, v11}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v31, v5

    goto :goto_a

    :cond_d
    move-object/from16 v31, v18

    :goto_a
    iget-object v1, v1, Lyads/b82;->Z:Lyads/as2;

    invoke-virtual {v1, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v32

    new-instance v23, Lyads/xv5;

    move-object/from16 v24, p4

    move-object/from16 v27, v11

    invoke-direct/range {v23 .. v32}, Lyads/xv5;-><init>(Ljava/lang/String;IILyads/g12;Ljava/lang/String;Lyads/tf1;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    move-object/from16 v10, v23

    invoke-virtual {v10}, Lyads/xv5;->b()I

    move-result v1

    invoke-virtual {v10}, Lyads/xv5;->a()Ljava/lang/Integer;

    move-result-object v5

    sget-object v11, Lkx2;->b:Lkx2;

    const/4 v12, 0x0

    if-nez v5, :cond_f

    if-eqz p5, :cond_e

    invoke-interface/range {p5 .. p5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    move v5, v1

    move-object/from16 v69, v6

    move-object/from16 v70, v8

    move-object/from16 v71, v9

    move-object v3, v11

    move-object/from16 v46, v3

    move/from16 v45, v15

    goto/16 :goto_32

    :cond_f
    invoke-virtual {v2}, Lyads/tt;->b()Lyads/fs2;

    move-result-object v5

    invoke-virtual {v10}, Lyads/xv5;->b()I

    move-result v14

    if-eqz p5, :cond_10

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v23

    :goto_b
    move/from16 v45, v15

    goto :goto_c

    :cond_10
    move/from16 v23, v12

    goto :goto_b

    :goto_c
    new-array v15, v12, [Ljava/lang/Integer;

    const/16 p3, 0x1

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v15, v13}, Lyr;->c0([Ljava/lang/Object;Ljava/util/AbstractSet;)V

    new-instance v15, Ljava/util/ArrayList;

    move/from16 p4, v12

    add-int/lit8 v12, v23, 0x1

    invoke-direct {v15, v12}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p5, :cond_3a

    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v4

    move-object/from16 v4, v23

    check-cast v4, Lyads/y72;

    move-object/from16 v46, v11

    iget-object v11, v4, Lyads/y72;->q:Lyads/as2;

    invoke-virtual {v11, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    move-object/from16 v23, v12

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    shr-long v25, v11, v45

    cmp-long v27, v25, v16

    if-eqz v27, :cond_13

    cmp-long v25, v25, v20

    if-nez v25, :cond_11

    goto :goto_e

    :cond_11
    cmp-long v11, v11, v16

    if-lez v11, :cond_12

    move/from16 v11, v19

    goto :goto_f

    :cond_12
    move/from16 v11, v22

    goto :goto_f

    :cond_13
    :goto_e
    long-to-int v11, v11

    :goto_f
    if-le v11, v14, :cond_14

    move v11, v14

    :cond_14
    iget-object v12, v4, Lyads/y72;->f:Lyads/as2;

    if-eqz v12, :cond_18

    invoke-virtual {v12, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    move-object/from16 v25, v5

    move-object/from16 v69, v6

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    shr-long v26, v5, v45

    cmp-long v12, v26, v16

    if-eqz v12, :cond_17

    cmp-long v12, v26, v20

    if-nez v12, :cond_15

    goto :goto_10

    :cond_15
    cmp-long v5, v5, v16

    if-lez v5, :cond_16

    move/from16 v5, v19

    goto :goto_11

    :cond_16
    move/from16 v5, v22

    goto :goto_11

    :cond_17
    :goto_10
    long-to-int v5, v5

    :goto_11
    if-le v5, v14, :cond_19

    goto :goto_12

    :cond_18
    move-object/from16 v25, v5

    move-object/from16 v69, v6

    :goto_12
    move v5, v14

    :cond_19
    if-ge v11, v5, :cond_39

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v2}, Lyads/tt;->b()Lyads/fs2;

    move-result-object v12

    move/from16 v49, v5

    iget v5, v10, Lyads/xv5;->c:I

    move/from16 v26, v5

    iget-object v5, v4, Lyads/y72;->i:Lyads/as2;

    if-eqz v5, :cond_1d

    invoke-virtual {v5, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    move-object/from16 v70, v8

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    shr-long v27, v7, v45

    cmp-long v5, v27, v16

    if-eqz v5, :cond_1c

    cmp-long v5, v27, v20

    if-nez v5, :cond_1a

    goto :goto_13

    :cond_1a
    cmp-long v5, v7, v16

    if-lez v5, :cond_1b

    move/from16 v5, v19

    goto :goto_14

    :cond_1b
    move/from16 v5, v22

    goto :goto_14

    :cond_1c
    :goto_13
    long-to-int v5, v7

    :goto_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_15

    :cond_1d
    move-object/from16 v70, v8

    move-object/from16 v5, v18

    :goto_15
    iget-object v7, v4, Lyads/y72;->j:Lyads/as2;

    invoke-virtual {v7, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/g12;

    new-instance v47, Lyads/ro5;

    iget-object v8, v4, Lyads/y72;->b:Lyads/as2;

    if-eqz v8, :cond_1e

    invoke-virtual {v8, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/d82;

    move-object/from16 v50, v8

    goto :goto_16

    :cond_1e
    move-object/from16 v50, v18

    :goto_16
    iget-object v8, v4, Lyads/y72;->d:Lyads/as2;

    invoke-virtual {v8, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-static {v8, v6, v7}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v51

    iget-object v8, v4, Lyads/y72;->g:Lyads/as2;

    if-eqz v8, :cond_1f

    invoke-virtual {v8, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v52, v8

    goto :goto_17

    :cond_1f
    move-object/from16 v52, v18

    :goto_17
    iget-object v8, v4, Lyads/y72;->h:Lyads/as2;

    if-eqz v8, :cond_20

    invoke-virtual {v8, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v53, v8

    goto :goto_18

    :cond_20
    move-object/from16 v53, v18

    :goto_18
    if-eqz v5, :cond_21

    invoke-static {v5, v6, v7}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v54, v8

    goto :goto_19

    :cond_21
    move-object/from16 v54, v18

    :goto_19
    iget-object v8, v4, Lyads/y72;->l:Lyads/as2;

    if-eqz v8, :cond_22

    invoke-virtual {v8, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/tf1;

    move-object/from16 v56, v8

    goto :goto_1a

    :cond_22
    move-object/from16 v56, v18

    :goto_1a
    iget-object v8, v4, Lyads/y72;->m:Lyads/as2;

    if-eqz v8, :cond_26

    invoke-virtual {v8, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    move-object/from16 v71, v9

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    shr-long v27, v8, v45

    cmp-long v29, v27, v16

    if-eqz v29, :cond_25

    cmp-long v27, v27, v20

    if-nez v27, :cond_23

    goto :goto_1b

    :cond_23
    cmp-long v8, v8, v16

    if-lez v8, :cond_24

    move/from16 v8, v19

    goto :goto_1c

    :cond_24
    move/from16 v8, v22

    goto :goto_1c

    :cond_25
    :goto_1b
    long-to-int v8, v8

    :goto_1c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v57, v8

    goto :goto_1d

    :cond_26
    move-object/from16 v71, v9

    move-object/from16 v57, v18

    :goto_1d
    iget-object v8, v4, Lyads/y72;->k:Lyads/as2;

    if-eqz v8, :cond_27

    invoke-virtual {v8, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    move-object/from16 v58, v8

    goto :goto_1e

    :cond_27
    move-object/from16 v58, v18

    :goto_1e
    iget-object v8, v4, Lyads/y72;->n:Lyads/as2;

    if-eqz v8, :cond_29

    invoke-virtual {v8, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    if-eqz v5, :cond_28

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1f
    move-wide/from16 v26, v8

    goto :goto_20

    :cond_28
    move/from16 v5, v26

    goto :goto_1f

    :goto_20
    int-to-double v8, v5

    div-double v8, v26, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v59, v5

    goto :goto_21

    :cond_29
    move-object/from16 v59, v18

    :goto_21
    iget-object v5, v4, Lyads/y72;->o:Lyads/as2;

    if-eqz v5, :cond_2a

    invoke-virtual {v5, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5, v6, v7}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v60, v5

    goto :goto_22

    :cond_2a
    move-object/from16 v60, v18

    :goto_22
    iget-object v5, v4, Lyads/y72;->p:Lyads/aa2;

    if-nez v5, :cond_2b

    move/from16 v48, v11

    move/from16 v34, v14

    move-object/from16 v72, v15

    move-object/from16 v61, v18

    goto/16 :goto_23

    :cond_2b
    iget-object v8, v2, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    move/from16 v48, v11

    instance-of v11, v5, Lyads/y92;

    if-eqz v11, :cond_2c

    check-cast v5, Lyads/y92;

    iget-object v5, v5, Lyads/y92;->a:Lyads/ka2;

    iget-object v11, v5, Lyads/ka2;->e:Lyads/af1;

    iget-object v11, v11, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v11, v8}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v26

    iget-object v11, v5, Lyads/ka2;->e:Lyads/af1;

    iget-object v11, v11, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v11, v8}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyads/g12;

    new-instance v28, Lyads/zw3;

    move/from16 v34, v14

    iget-object v14, v5, Lyads/ka2;->a:Lyads/as2;

    invoke-virtual {v14, v8}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v29

    iget-object v14, v5, Lyads/ka2;->b:Lyads/as2;

    invoke-virtual {v14, v8}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    move-object/from16 v72, v15

    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    double-to-float v14, v14

    iget-object v15, v5, Lyads/ka2;->c:Lyads/as2;

    invoke-virtual {v15, v8}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    iget-object v5, v5, Lyads/ka2;->d:Lyads/as2;

    invoke-virtual {v5, v8}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5, v9, v11}, Lyads/pq;->b(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)F

    move-result v33

    move/from16 v30, v14

    invoke-direct/range {v28 .. v33}, Lyads/zw3;-><init>(IFZZF)V

    move-object/from16 v61, v28

    goto :goto_23

    :cond_2c
    move/from16 v34, v14

    move-object/from16 v72, v15

    instance-of v9, v5, Lyads/z92;

    if-eqz v9, :cond_38

    check-cast v5, Lyads/z92;

    iget-object v5, v5, Lyads/z92;->a:Lyads/qa2;

    new-instance v9, Lyads/ax3;

    iget-object v11, v5, Lyads/qa2;->a:Lyads/as2;

    invoke-virtual {v11, v8}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    iget-object v5, v5, Lyads/qa2;->b:Lyads/as2;

    invoke-virtual {v5, v8}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v9, v11, v5}, Lyads/ax3;-><init>(IZ)V

    move-object/from16 v61, v9

    :goto_23
    iget-object v5, v4, Lyads/y72;->r:Lyads/as2;

    if-eqz v5, :cond_2d

    invoke-virtual {v5, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/bp1;

    move-object/from16 v62, v5

    goto :goto_24

    :cond_2d
    move-object/from16 v62, v18

    :goto_24
    iget-object v5, v4, Lyads/y72;->s:Lyads/as2;

    if-eqz v5, :cond_2e

    invoke-virtual {v5, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object/from16 v63, v5

    goto :goto_25

    :cond_2e
    move-object/from16 v63, v18

    :goto_25
    iget-object v5, v4, Lyads/y72;->t:Lyads/xz1;

    iget v8, v10, Lyads/xv5;->i:I

    if-nez v5, :cond_2f

    move v5, v1

    move-object/from16 v64, v18

    goto :goto_26

    :cond_2f
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget-object v11, v2, Lyads/tt;->b:Lyads/fs2;

    ushr-int/lit8 v8, v8, 0x18

    iget-object v14, v5, Lyads/xz1;->b:Lyads/as2;

    invoke-virtual {v14, v11}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-static {v14, v9}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v14

    iget-object v15, v5, Lyads/xz1;->d:Lyads/nv1;

    iget-object v15, v15, Lyads/nv1;->a:Lyads/ac1;

    invoke-static {v15, v9, v11}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v15

    int-to-float v15, v15

    iget-object v3, v5, Lyads/xz1;->d:Lyads/nv1;

    iget-object v3, v3, Lyads/nv1;->b:Lyads/ac1;

    invoke-static {v3, v9, v11}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v3

    int-to-float v3, v3

    iget-object v9, v0, Lyads/wo5;->c:Landroid/graphics/Paint;

    iget-object v2, v5, Lyads/xz1;->c:Lyads/as2;

    invoke-virtual {v2, v11}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v5, Lyads/xz1;->a:Lyads/as2;

    invoke-virtual {v2, v11}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v26

    move v5, v1

    int-to-double v1, v8

    mul-double v1, v1, v26

    double-to-int v1, v1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    new-instance v2, Lyads/yj5;

    invoke-direct {v2, v15, v3, v14, v1}, Lyads/yj5;-><init>(FFFI)V

    move-object/from16 v64, v2

    :goto_26
    iget-object v1, v4, Lyads/y72;->u:Lyads/as2;

    if-eqz v1, :cond_33

    invoke-virtual {v1, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    shr-long v8, v1, v45

    cmp-long v3, v8, v16

    if-eqz v3, :cond_32

    cmp-long v3, v8, v20

    if-nez v3, :cond_30

    goto :goto_27

    :cond_30
    cmp-long v1, v1, v16

    if-lez v1, :cond_31

    move/from16 v1, v19

    goto :goto_28

    :cond_31
    move/from16 v1, v22

    goto :goto_28

    :cond_32
    :goto_27
    long-to-int v1, v1

    :goto_28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v6, v7}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v65, v1

    goto :goto_29

    :cond_33
    move-object/from16 v65, v18

    :goto_29
    iget-object v1, v4, Lyads/y72;->u:Lyads/as2;

    if-eqz v1, :cond_34

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v66, v1

    goto :goto_2a

    :cond_34
    move-object/from16 v66, v18

    :goto_2a
    iget-object v1, v4, Lyads/y72;->u:Lyads/as2;

    if-eqz v1, :cond_35

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v67, v1

    goto :goto_2b

    :cond_35
    move-object/from16 v67, v18

    :goto_2b
    iget-object v1, v4, Lyads/y72;->v:Lyads/as2;

    if-eqz v1, :cond_36

    invoke-virtual {v1, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/bp1;

    move-object/from16 v68, v1

    :goto_2c
    move-object/from16 v55, v7

    goto :goto_2d

    :cond_36
    move-object/from16 v68, v18

    goto :goto_2c

    :goto_2d
    invoke-direct/range {v47 .. v68}, Lyads/ro5;-><init>(IILyads/d82;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lyads/g12;Lyads/tf1;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Double;Ljava/lang/Integer;Lyads/bx3;Lyads/bp1;Ljava/lang/Integer;Lyads/yj5;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lyads/bp1;)V

    move-object/from16 v1, v47

    iget-object v2, v1, Lyads/ro5;->d:Lyads/d82;

    if-nez v2, :cond_37

    iget v2, v1, Lyads/ro5;->e:I

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->f:Ljava/lang/String;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->g:Ljava/lang/String;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->h:Ljava/lang/Integer;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->i:Lyads/g12;

    sget-object v3, Lyads/ro5;->w:Lyads/g12;

    if-ne v2, v3, :cond_37

    iget-object v2, v1, Lyads/ro5;->j:Lyads/tf1;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->k:Ljava/lang/Integer;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->m:Ljava/lang/Double;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->n:Ljava/lang/Integer;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->o:Lyads/bx3;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->p:Lyads/bp1;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->q:Ljava/lang/Integer;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->r:Lyads/yj5;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->s:Ljava/lang/Integer;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->t:Ljava/lang/Integer;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->u:Ljava/lang/Integer;

    if-nez v2, :cond_37

    iget-object v2, v1, Lyads/ro5;->v:Lyads/bp1;

    if-nez v2, :cond_37

    move-object/from16 v2, p1

    move v1, v5

    move-object/from16 v12, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move/from16 v14, v34

    move-object/from16 v11, v46

    move-object/from16 v6, v69

    move-object/from16 v8, v70

    move-object/from16 v9, v71

    move-object/from16 v15, v72

    goto/16 :goto_d

    :cond_37
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v72

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v2

    move v1, v5

    move-object/from16 v12, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move/from16 v14, v34

    move-object/from16 v11, v46

    move-object/from16 v6, v69

    move-object/from16 v8, v70

    move-object/from16 v9, v71

    move-object/from16 v2, p1

    goto/16 :goto_d

    :cond_38
    invoke-static {}, Lme0;->e()V

    return-object v18

    :cond_39
    move-object/from16 v2, p1

    move-object/from16 v12, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v11, v46

    move-object/from16 v6, v69

    goto/16 :goto_d

    :cond_3a
    move v5, v1

    move-object/from16 v69, v6

    move-object/from16 v70, v8

    move-object/from16 v71, v9

    move-object/from16 v46, v11

    move/from16 v34, v14

    move-object v2, v15

    invoke-static {v2}, Lnn1;->I(Ljava/util/List;)V

    invoke-virtual {v10}, Lyads/xv5;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    new-instance v23, Lyads/ro5;

    sget-object v31, Lyads/ro5;->w:Lyads/g12;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v25, v34

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-direct/range {v23 .. v44}, Lyads/ro5;-><init>(IILyads/d82;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lyads/g12;Lyads/tf1;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Double;Ljava/lang/Integer;Lyads/bx3;Lyads/bp1;Ljava/lang/Integer;Lyads/yj5;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lyads/bp1;)V

    move/from16 v3, p4

    move-object/from16 v1, v23

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    move-object/from16 v3, v46

    goto/16 :goto_32

    :cond_3c
    invoke-static {v13}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v8, p3

    if-ne v7, v8, :cond_3e

    sget-object v1, Lyads/ro5;->w:Lyads/g12;

    invoke-static {v6, v6}, Lyads/qo5;->a(II)Lyads/ro5;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/ro5;

    invoke-virtual {v1, v4, v6, v6}, Lyads/ro5;->a(Lyads/ro5;II)Lyads/ro5;

    move-result-object v1

    goto :goto_2e

    :cond_3d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_3e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    :goto_2f
    if-ge v8, v7, :cond_43

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_30
    if-ge v12, v11, :cond_40

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/ro5;

    invoke-virtual {v13}, Lyads/ro5;->a()I

    move-result v14

    if-lt v9, v14, :cond_40

    invoke-virtual {v13}, Lyads/ro5;->a()I

    move-result v14

    if-le v9, v14, :cond_3f

    iget v14, v13, Lyads/ro5;->c:I

    if-gt v9, v14, :cond_3f

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v12, v12, 0x1

    goto :goto_30

    :cond_40
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_42

    sget-object v11, Lyads/ro5;->w:Lyads/g12;

    invoke-static {v6, v9}, Lyads/qo5;->a(II)Lyads/ro5;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_31
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_41

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/ro5;

    invoke-virtual {v11, v13, v6, v9}, Lyads/ro5;->a(Lyads/ro5;II)Lyads/ro5;

    move-result-object v11

    goto :goto_31

    :cond_41
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v8, v8, 0x1

    move v6, v9

    goto :goto_2f

    :cond_43
    :goto_32
    if-eqz p6, :cond_46

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p6 .. p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lyads/x72;

    iget-object v6, v6, Lyads/x72;->f:Lyads/as2;

    move-object/from16 v7, v71

    invoke-virtual {v6, v7}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    iget v6, v10, Lyads/xv5;->j:I

    int-to-long v11, v6

    cmp-long v6, v8, v11

    if-gtz v6, :cond_44

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    move-object/from16 v71, v7

    goto :goto_33

    :cond_45
    move-object/from16 v7, v71

    new-instance v2, Lyads/vo5;

    invoke-direct {v2, v0, v10, v7}, Lyads/vo5;-><init>(Lyads/wo5;Lyads/xv5;Lyads/fs2;)V

    invoke-static {v1, v2}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v11

    :goto_34
    move-object/from16 v8, p2

    goto :goto_35

    :cond_46
    move-object/from16 v7, v71

    move-object/from16 v11, v46

    goto :goto_34

    :goto_35
    instance-of v1, v8, Lyads/zo1;

    if-eqz v1, :cond_47

    move-object v14, v8

    check-cast v14, Lyads/zo1;

    goto :goto_36

    :cond_47
    move-object/from16 v14, v18

    :goto_36
    if-eqz v14, :cond_49

    iget-object v2, v14, Lyads/nw5;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v14, Lyads/nw5;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v14, Lyads/nw5;->p:Lyads/lw5;

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_48
    invoke-virtual {v14}, Lyads/nw5;->h()V

    iget-object v2, v14, Lyads/zo1;->t:Lyads/za2;

    if-eqz v2, :cond_49

    iget-object v2, v2, Lyads/za2;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_49
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ro5;

    move-object/from16 v4, v69

    invoke-virtual {v0, v8, v4, v10, v3}, Lyads/wo5;->a(Lyads/an2;Landroid/text/SpannableStringBuilder;Lyads/xv5;Lyads/ro5;)V

    goto :goto_37

    :cond_4a
    move-object/from16 v4, v69

    const/16 v2, 0x21

    if-eqz p5, :cond_4b

    invoke-interface/range {p5 .. p5}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4c

    :cond_4b
    move-object/from16 v15, p1

    goto/16 :goto_42

    :cond_4c
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/y72;

    iget-object v9, v6, Lyads/y72;->a:Ljava/util/List;

    if-nez v9, :cond_4e

    iget-object v9, v6, Lyads/y72;->c:Lyads/h92;

    if-nez v9, :cond_4e

    iget-object v6, v6, Lyads/y72;->e:Lyads/o92;

    if-eqz v6, :cond_4d

    :cond_4e
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/y72;

    iget-object v9, v6, Lyads/y72;->q:Lyads/as2;

    invoke-virtual {v9, v7}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    shr-long v14, v12, v45

    cmp-long v9, v14, v16

    if-eqz v9, :cond_51

    cmp-long v9, v14, v20

    if-nez v9, :cond_4f

    goto :goto_39

    :cond_4f
    cmp-long v9, v12, v16

    if-lez v9, :cond_50

    move/from16 v9, v19

    goto :goto_3a

    :cond_50
    move/from16 v9, v22

    goto :goto_3a

    :cond_51
    :goto_39
    long-to-int v9, v12

    :goto_3a
    if-le v9, v5, :cond_52

    move v9, v5

    :cond_52
    iget-object v12, v6, Lyads/y72;->f:Lyads/as2;

    if-eqz v12, :cond_56

    invoke-virtual {v12, v7}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    shr-long v14, v12, v45

    cmp-long v18, v14, v16

    if-eqz v18, :cond_55

    cmp-long v14, v14, v20

    if-nez v14, :cond_53

    goto :goto_3b

    :cond_53
    cmp-long v12, v12, v16

    if-lez v12, :cond_54

    move/from16 v12, v19

    goto :goto_3c

    :cond_54
    move/from16 v12, v22

    goto :goto_3c

    :cond_55
    :goto_3b
    long-to-int v12, v12

    :goto_3c
    if-le v12, v5, :cond_57

    :cond_56
    move v12, v5

    :cond_57
    iget-object v13, v6, Lyads/y72;->a:Ljava/util/List;

    if-eqz v13, :cond_58

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_59

    :cond_58
    move-object/from16 v15, p1

    goto :goto_3d

    :cond_59
    sget-object v14, Lyads/oi5;->a:Lyads/oi5;

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v14, Lyads/yt4;

    move-object/from16 v15, p1

    invoke-direct {v14, v15, v13}, Lyads/yt4;-><init>(Lyads/tt;Ljava/util/List;)V

    invoke-virtual {v4, v14, v9, v12, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->enableAccessibleClickableSpanSupport(Landroid/view/View;)V

    :goto_3d
    iget-object v13, v6, Lyads/y72;->e:Lyads/o92;

    iget-object v6, v6, Lyads/y72;->c:Lyads/h92;

    if-nez v13, :cond_5a

    if-nez v6, :cond_5a

    goto :goto_38

    :cond_5a
    iget-object v14, v15, Lyads/tt;->b:Lyads/fs2;

    new-instance v2, Lyads/i41;

    invoke-direct {v2, v13, v6}, Lyads/i41;-><init>(Lyads/o92;Lyads/h92;)V

    if-eqz v1, :cond_5f

    move-object v6, v8

    check-cast v6, Lyads/zo1;

    iget-object v13, v6, Lyads/zo1;->t:Lyads/za2;

    if-nez v13, :cond_5c

    new-instance v13, Lyads/za2;

    invoke-direct {v13, v6, v14}, Lyads/za2;-><init>(Lyads/zo1;Lyads/fs2;)V

    invoke-virtual {v6, v13}, Lyads/zo1;->setTextRoundedBgHelper$mobileads_externalRelease(Lyads/za2;)V

    :cond_5b
    :goto_3e
    move/from16 v18, v1

    move-object/from16 p5, v3

    const/16 v1, 0x21

    goto :goto_41

    :cond_5c
    iget-object v13, v13, Lyads/za2;->c:Ljava/util/ArrayList;

    if-eqz v13, :cond_5d

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5d

    goto :goto_3e

    :cond_5d
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/i41;

    move/from16 v18, v1

    iget-object v1, v14, Lyads/i41;->b:Lyads/o92;

    move-object/from16 p5, v3

    iget-object v3, v2, Lyads/i41;->b:Lyads/o92;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, v14, Lyads/i41;->c:Lyads/h92;

    iget-object v3, v2, Lyads/i41;->c:Lyads/h92;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ne v12, v1, :cond_60

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ne v9, v1, :cond_60

    :cond_5e
    :goto_40
    move-object/from16 v3, p5

    move/from16 v1, v18

    :cond_5f
    const/16 v2, 0x21

    goto/16 :goto_38

    :cond_60
    move-object/from16 v3, p5

    move/from16 v1, v18

    goto :goto_3f

    :goto_41
    invoke-virtual {v4, v2, v9, v12, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v6, Lyads/zo1;->t:Lyads/za2;

    if-eqz v1, :cond_5e

    iget-object v1, v1, Lyads/za2;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :goto_42
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz p7, :cond_61

    invoke-interface/range {p7 .. p7}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_62

    :cond_61
    const/4 v9, 0x0

    goto :goto_43

    :cond_62
    sget-object v2, Lyads/oi5;->a:Lyads/oi5;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v2, Lyads/yt4;

    move-object/from16 v3, p7

    invoke-direct {v2, v15, v3}, Lyads/yt4;-><init>(Lyads/tt;Ljava/util/List;)V

    const/16 v3, 0x21

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v9, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->enableAccessibleClickableSpanSupport(Landroid/view/View;)V

    :goto_43
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_68

    :goto_44
    add-int/lit8 v12, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/x72;

    invoke-virtual {v10}, Lyads/xv5;->b()I

    move-result v2

    invoke-static {v2, v3, v7}, Lyads/wo5;->a(ILyads/x72;Lyads/fs2;)I

    move-result v2

    if-lez v1, :cond_63

    invoke-virtual {v10}, Lyads/xv5;->b()I

    move-result v5

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/x72;

    invoke-static {v5, v1, v7}, Lyads/wo5;->a(ILyads/x72;Lyads/fs2;)I

    move-result v1

    goto :goto_45

    :cond_63
    move/from16 v1, v22

    :goto_45
    const-string v5, "#"

    invoke-virtual {v4, v2, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {v15, v8, v4, v10, v3}, Lyads/wo5;->a(Lyads/tt;Lyads/an2;Landroid/text/SpannableStringBuilder;Lyads/xv5;Lyads/x72;)Lyads/nd3;

    move-result-object v5

    const/4 v13, 0x1

    add-int/2addr v1, v13

    if-ne v1, v2, :cond_64

    move v1, v13

    goto :goto_46

    :cond_64
    move v1, v9

    :goto_46
    if-lez v2, :cond_65

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lga1;->e(C)Z

    move-result v6

    if-nez v6, :cond_65

    move v6, v13

    goto :goto_47

    :cond_65
    move v6, v9

    :goto_47
    if-nez v1, :cond_66

    if-eqz v6, :cond_66

    const-string v1, "\u2060"

    invoke-virtual {v4, v2, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_66
    iget-object v14, v0, Lyads/wo5;->b:Lyads/oi1;

    iget-object v1, v3, Lyads/x72;->i:Lyads/as2;

    invoke-virtual {v1, v7}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    new-instance v1, Lyads/uo5;

    move-object v6, v15

    move-object v15, v2

    move-object v2, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lyads/uo5;-><init>(Lyads/tt;Lyads/x72;Lyads/nd3;Landroid/text/SpannableStringBuilder;Lnl3;)V

    move-object v4, v5

    invoke-interface {v14, v15, v1}, Lyads/oi1;->b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object v1

    move-object/from16 v2, v70

    invoke-virtual {v2, v1}, Lyads/vq0;->a(Lyads/du3;)V

    if-gez v12, :cond_67

    goto :goto_48

    :cond_67
    move-object/from16 v15, p1

    move-object/from16 v70, v2

    move v1, v12

    goto :goto_44

    :cond_68
    move-object/from16 v6, p8

    :goto_48
    if-eqz v6, :cond_69

    invoke-interface {v6, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_69
    return-object v4
.end method

.method public final a(Lyads/an2;Landroid/text/SpannableStringBuilder;Lyads/xv5;Lyads/ro5;)V
    .locals 9

    .line 2184
    iget v0, p4, Lyads/ro5;->b:I

    .line 2185
    iget v1, p4, Lyads/ro5;->c:I

    if-le v0, v1, :cond_0

    goto/16 :goto_e

    .line 2186
    :cond_0
    iget-object v2, p4, Lyads/ro5;->d:Lyads/d82;

    if-nez v2, :cond_1

    .line 2187
    sget-object v2, Lyads/d82;->h:Lyads/d82;

    .line 2188
    :cond_1
    iget v3, p4, Lyads/ro5;->e:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x21

    if-eqz v3, :cond_4

    .line 2189
    new-instance v2, Lyads/rs;

    .line 2190
    iget-object v7, p4, Lyads/ro5;->n:Ljava/lang/Integer;

    if-eqz v7, :cond_2

    goto :goto_0

    .line 2191
    :cond_2
    iget-object v7, p3, Lyads/xv5;->h:Ljava/lang/Integer;

    if-eqz v7, :cond_3

    .line 2192
    :goto_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_3
    move v7, v5

    .line 2193
    :goto_1
    invoke-direct {v2, v3, v7}, Lyads/rs;-><init>(II)V

    .line 2194
    invoke-virtual {p2, v2, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 2195
    :cond_4
    sget-object v3, Lyads/d82;->h:Lyads/d82;

    if-eq v2, v3, :cond_a

    .line 2196
    new-instance v3, Lyads/n96;

    .line 2197
    iget-object v7, p4, Lyads/ro5;->h:Ljava/lang/Integer;

    if-eqz v7, :cond_5

    .line 2198
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_5
    move v7, v5

    .line 2199
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_9

    if-eq v2, v4, :cond_8

    const/4 v8, 0x2

    if-eq v2, v8, :cond_7

    const/4 v8, 0x3

    if-eq v2, v8, :cond_6

    .line 2200
    sget-object v2, Lyads/iw5;->d:Lyads/iw5;

    goto :goto_3

    .line 2201
    :cond_6
    sget-object v2, Lyads/iw5;->d:Lyads/iw5;

    goto :goto_3

    .line 2202
    :cond_7
    sget-object v2, Lyads/iw5;->e:Lyads/iw5;

    goto :goto_3

    .line 2203
    :cond_8
    sget-object v2, Lyads/iw5;->c:Lyads/iw5;

    goto :goto_3

    .line 2204
    :cond_9
    sget-object v2, Lyads/iw5;->b:Lyads/iw5;

    .line 2205
    :goto_3
    new-instance v8, Loga;

    invoke-direct {v8, p1}, Loga;-><init>(Lyads/an2;)V

    .line 2206
    invoke-direct {v3, v7, v2, v8}, Lyads/n96;-><init>(ILyads/iw5;Lws6;)V

    .line 2207
    invoke-virtual {p2, v3, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2208
    :cond_a
    :goto_4
    iget-object v2, p4, Lyads/ro5;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 2209
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 2210
    new-instance v3, Lyads/hz2;

    .line 2211
    iget-object v7, p4, Lyads/ro5;->n:Ljava/lang/Integer;

    if-eqz v7, :cond_b

    goto :goto_5

    .line 2212
    :cond_b
    iget-object v7, p3, Lyads/xv5;->h:Ljava/lang/Integer;

    if-eqz v7, :cond_c

    .line 2213
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_6

    :cond_c
    move v7, v5

    .line 2214
    :goto_6
    invoke-direct {v3, v2, v7}, Lyads/hz2;-><init>(II)V

    .line 2215
    invoke-virtual {p2, v3, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2216
    :cond_d
    iget-object v2, p4, Lyads/ro5;->g:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 2217
    new-instance v3, Lyads/wy2;

    invoke-direct {v3, v2}, Lyads/wy2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2218
    :cond_e
    iget-object v2, p4, Lyads/ro5;->q:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    .line 2219
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 2220
    new-instance v3, Lyads/wv5;

    invoke-direct {v3, v2}, Lyads/wv5;-><init>(I)V

    invoke-virtual {p2, v3, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2221
    :cond_f
    iget-object v2, p4, Lyads/ro5;->m:Ljava/lang/Double;

    if-eqz v2, :cond_10

    .line 2222
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 2223
    new-instance v7, Lyads/as3;

    double-to-float v2, v2

    invoke-direct {v7, v2}, Lyads/as3;-><init>(F)V

    .line 2224
    invoke-virtual {p2, v7, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2225
    :cond_10
    iget-object v2, p4, Lyads/ro5;->p:Lyads/bp1;

    if-eqz v2, :cond_13

    .line 2226
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_12

    if-eq v2, v4, :cond_11

    goto :goto_7

    .line 2227
    :cond_11
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p2, v2, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    .line 2228
    :cond_12
    new-instance v2, Lyads/go4;

    invoke-direct {v2}, Lyads/go4;-><init>()V

    invoke-virtual {p2, v2, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2229
    :cond_13
    :goto_7
    iget-object v2, p4, Lyads/ro5;->v:Lyads/bp1;

    if-eqz v2, :cond_16

    .line 2230
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_15

    if-eq v2, v4, :cond_14

    goto :goto_8

    .line 2231
    :cond_14
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2, v2, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    .line 2232
    :cond_15
    new-instance v2, Lyads/ho4;

    invoke-direct {v2}, Lyads/ho4;-><init>()V

    invoke-virtual {p2, v2, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2233
    :cond_16
    :goto_8
    iget-object p0, p0, Lyads/wo5;->a:Lyads/ef2;

    .line 2234
    iget-object v2, p4, Lyads/ro5;->f:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 2235
    iget-object v2, p3, Lyads/xv5;->e:Ljava/lang/String;

    .line 2236
    :cond_17
    invoke-virtual {p0, v2}, Lyads/ef2;->a(Ljava/lang/String;)Lyads/cf2;

    move-result-object p0

    .line 2237
    iget-object v2, p4, Lyads/ro5;->f:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 2238
    iget-object v2, p4, Lyads/ro5;->j:Lyads/tf1;

    if-nez v2, :cond_18

    .line 2239
    iget-object v2, p4, Lyads/ro5;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_1c

    .line 2240
    :cond_18
    iget-object v2, p4, Lyads/ro5;->j:Lyads/tf1;

    if-nez v2, :cond_1a

    .line 2241
    iget-object v3, p4, Lyads/ro5;->k:Ljava/lang/Integer;

    if-eqz v3, :cond_19

    goto :goto_9

    .line 2242
    :cond_19
    iget-object v2, p3, Lyads/xv5;->f:Lyads/tf1;

    .line 2243
    iget-object v3, p3, Lyads/xv5;->g:Ljava/lang/Integer;

    .line 2244
    invoke-static {v2, v3}, Lyads/gf2;->a(Lyads/tf1;Ljava/lang/Integer;)I

    move-result v2

    goto :goto_a

    .line 2245
    :cond_1a
    :goto_9
    iget-object v3, p4, Lyads/ro5;->k:Ljava/lang/Integer;

    .line 2246
    invoke-static {v2, v3}, Lyads/gf2;->a(Lyads/tf1;Ljava/lang/Integer;)I

    move-result v2

    .line 2247
    :goto_a
    new-instance v3, Lyads/x36;

    .line 2248
    invoke-interface {p0, v2}, Lyads/cf2;->a(I)Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_1b

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 2249
    :cond_1b
    invoke-direct {v3, v2}, Lyads/x36;-><init>(Landroid/graphics/Typeface;)V

    .line 2250
    invoke-virtual {p2, v3, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2251
    :cond_1c
    invoke-static {}, Lyads/kw5;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2252
    :cond_1d
    iget-object p0, p4, Lyads/ro5;->n:Ljava/lang/Integer;

    if-nez p0, :cond_1e

    .line 2253
    iget-object v2, p4, Lyads/ro5;->s:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    .line 2254
    :cond_1e
    iget-object p3, p3, Lyads/xv5;->h:Ljava/lang/Integer;

    .line 2255
    invoke-static {p0, p3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/16 p0, 0x12

    goto :goto_b

    :cond_1f
    move p0, v6

    .line 2256
    :goto_b
    new-instance p3, Lyads/dt3;

    .line 2257
    iget-object v2, p4, Lyads/ro5;->s:Ljava/lang/Integer;

    if-eqz v2, :cond_20

    .line 2258
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_c

    :cond_20
    move v2, v5

    .line 2259
    :goto_c
    iget-object v3, p4, Lyads/ro5;->n:Ljava/lang/Integer;

    if-eqz v3, :cond_21

    .line 2260
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2261
    :cond_21
    iget-object v3, p4, Lyads/ro5;->t:Ljava/lang/Integer;

    if-eqz v3, :cond_22

    .line 2262
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_d

    :cond_22
    move v3, v0

    .line 2263
    :goto_d
    invoke-direct {p3, v2, v5, v3}, Lyads/dt3;-><init>(III)V

    .line 2264
    invoke-virtual {p2, p3, v0, v1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2265
    :cond_23
    iget-object p0, p4, Lyads/ro5;->r:Lyads/yj5;

    if-eqz p0, :cond_24

    .line 2266
    new-instance p3, Lyads/zj5;

    invoke-direct {p3, p0}, Lyads/zj5;-><init>(Lyads/yj5;)V

    invoke-virtual {p2, p3, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2267
    :cond_24
    iget-object p0, p4, Lyads/ro5;->o:Lyads/bx3;

    if-eqz p0, :cond_28

    .line 2268
    instance-of p3, p0, Lyads/zw3;

    const/4 p4, 0x0

    if-eqz p3, :cond_26

    .line 2269
    move-object p3, p0

    check-cast p3, Lyads/zw3;

    .line 2270
    iget-boolean p3, p3, Lyads/zw3;->d:Z

    if-eqz p3, :cond_28

    .line 2271
    new-instance p3, Lyads/dx3;

    instance-of v2, p1, Lyads/zo1;

    if-eqz v2, :cond_25

    move-object p4, p1

    check-cast p4, Lyads/zo1;

    :cond_25
    invoke-direct {p3, p0, p4}, Lyads/dx3;-><init>(Lyads/bx3;Lyads/zo1;)V

    invoke-virtual {p2, p3, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void

    .line 2272
    :cond_26
    instance-of p3, p0, Lyads/ax3;

    if-eqz p3, :cond_28

    .line 2273
    move-object p3, p0

    check-cast p3, Lyads/ax3;

    .line 2274
    iget-boolean p3, p3, Lyads/ax3;->b:Z

    if-eqz p3, :cond_28

    .line 2275
    new-instance p3, Lyads/dx3;

    instance-of v2, p1, Lyads/zo1;

    if-eqz v2, :cond_27

    move-object p4, p1

    check-cast p4, Lyads/zo1;

    :cond_27
    invoke-direct {p3, p0, p4}, Lyads/dx3;-><init>(Lyads/bx3;Lyads/zo1;)V

    invoke-virtual {p2, p3, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_28
    :goto_e
    return-void
.end method
