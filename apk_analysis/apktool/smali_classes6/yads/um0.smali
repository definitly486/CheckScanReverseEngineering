.class public final Lyads/um0;
.super Lyads/tw3;
.source "SourceFile"


# static fields
.field public static final i:Lyads/xq4;

.field public static final j:Lyads/xq4;


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Lyads/nb;

.field public final e:Z

.field public final f:Lyads/mm0;

.field public final g:Lyads/pm0;

.field public h:Lyads/am;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljea;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lyads/p40;

    invoke-direct {v1, v0}, Lyads/p40;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lyads/um0;->i:Lyads/xq4;

    new-instance v0, Lkea;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lyads/p40;

    invoke-direct {v1, v0}, Lyads/p40;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lyads/um0;->j:Lyads/xq4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lyads/nb;

    invoke-direct {v0}, Lyads/nb;-><init>()V

    sget-object v1, Lyads/mm0;->R:Lyads/mm0;

    new-instance v1, Lyads/lm0;

    invoke-direct {v1, p1}, Lyads/lm0;-><init>(Landroid/content/Context;)V

    new-instance v2, Lyads/mm0;

    invoke-direct {v2, v1}, Lyads/mm0;-><init>(Lyads/lm0;)V

    invoke-direct {p0}, Lyads/tw3;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lyads/um0;->c:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    :cond_0
    iput-object v0, p0, Lyads/um0;->d:Lyads/nb;

    iput-object v2, p0, Lyads/um0;->f:Lyads/mm0;

    sget-object v0, Lyads/am;->h:Lyads/am;

    iput-object v0, p0, Lyads/um0;->h:Lyads/am;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lyads/u56;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lyads/um0;->e:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Lyads/pm0;->a(Landroid/content/Context;)Lyads/pm0;

    move-result-object v0

    iput-object v0, p0, Lyads/um0;->g:Lyads/pm0;

    :cond_2
    iget-boolean p0, v2, Lyads/mm0;->L:Z

    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    const-string p0, "DefaultTrackSelector"

    const-string p1, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p0, p1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static a(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    and-int/2addr p0, p1

    .line 288
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 240
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    .line 242
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static a(Lyads/vz2;Ljava/lang/String;Z)I
    .locals 2

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/vz2;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 279
    :cond_0
    invoke-static {p1}, Lyads/um0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 280
    iget-object p0, p0, Lyads/vz2;->d:Ljava/lang/String;

    invoke-static {p0}, Lyads/um0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 282
    :cond_2
    sget p2, Lyads/u56;->a:I

    .line 283
    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 284
    aget-object p0, p0, v0

    .line 285
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 286
    aget-object p1, p1, v0

    .line 287
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method public static a(ILyads/sw3;[[[ILyads/rm0;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 19

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lyads/sw3;->a:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    iget-object v5, v0, Lyads/sw3;->b:[I

    aget v5, v5, v4

    move/from16 v6, p0

    if-ne v6, v5, :cond_6

    iget-object v5, v0, Lyads/sw3;->c:[Lyads/g06;

    aget-object v5, v5, v4

    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Lyads/g06;->b:I

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v8

    aget-object v9, p2, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    invoke-interface {v10, v4, v8, v9}, Lyads/rm0;->a(ILyads/f06;[I)Ljava/util/List;

    move-result-object v9

    iget v11, v8, Lyads/f06;->b:I

    new-array v11, v11, [Z

    const/4 v12, 0x0

    :goto_2
    iget v13, v8, Lyads/f06;->b:I

    if-ge v12, v13, :cond_5

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/sm0;

    invoke-virtual {v13}, Lyads/sm0;->a()I

    move-result v14

    aget-boolean v15, v11, v12

    if-nez v15, :cond_0

    if-nez v14, :cond_1

    :cond_0
    move/from16 v18, v2

    goto :goto_6

    :cond_1
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v13

    :goto_3
    move/from16 v18, v2

    goto :goto_5

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v17, v15

    move/from16 v15, v16

    :goto_4
    iget v3, v8, Lyads/f06;->b:I

    if-ge v15, v3, :cond_4

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/sm0;

    invoke-virtual {v3}, Lyads/sm0;->a()I

    move-result v0

    move/from16 v18, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {v13, v3}, Lyads/sm0;->a(Lyads/sm0;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-boolean v17, v11, v15

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v18

    goto :goto_4

    :cond_4
    move-object v13, v14

    goto :goto_3

    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v18

    goto :goto_2

    :cond_5
    move/from16 v18, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v10, p3

    move/from16 v18, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/sm0;

    iget v3, v3, Lyads/sm0;->d:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/sm0;

    new-instance v3, Lyads/dr2;

    iget-object v4, v0, Lyads/sm0;->c:Lyads/f06;

    invoke-direct {v3, v2, v4, v1}, Lyads/dr2;-><init>(ILyads/f06;[I)V

    iget v0, v0, Lyads/sm0;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lyads/sw3;[[[ILyads/mm0;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1

    .line 265
    new-instance v0, Lnea;

    invoke-direct {v0, p2, p3}, Lnea;-><init>(Lyads/mm0;Ljava/lang/String;)V

    new-instance p2, Loea;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x3

    invoke-static {p3, p0, p1, v0, p2}, Lyads/um0;->a(ILyads/sw3;[[[ILyads/rm0;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/sw3;[[[I[ILyads/mm0;)Landroid/util/Pair;
    .locals 1

    .line 250
    new-instance v0, Llea;

    invoke-direct {v0, p3, p2}, Llea;-><init>(Lyads/mm0;[I)V

    new-instance p2, Lmea;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x2

    invoke-static {p3, p0, p1, v0, p2}, Lyads/um0;->a(ILyads/sw3;[[[ILyads/rm0;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 277
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lyads/mm0;Ljava/lang/String;ILyads/f06;[I)Ljava/util/List;
    .locals 0

    .line 266
    invoke-static {p0, p1, p2, p3, p4}, Lyads/qm0;->a(Lyads/mm0;Ljava/lang/String;ILyads/f06;[I)Lyads/k55;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lyads/mm0;[IILyads/f06;[I)Ljava/util/List;
    .locals 0

    .line 251
    aget p1, p1, p2

    invoke-static {p2, p3, p0, p4, p1}, Lyads/tm0;->a(ILyads/f06;Lyads/mm0;[II)Lyads/k55;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/g06;Lyads/mm0;Ljava/util/HashMap;)V
    .locals 3

    const/4 v0, 0x0

    .line 268
    :goto_0
    iget v1, p0, Lyads/g06;->b:I

    if-ge v0, v1, :cond_3

    .line 269
    invoke-virtual {p0, v0}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v1

    .line 270
    iget-object v2, p1, Lyads/o06;->z:Lyads/re3;

    invoke-virtual {v2, v1}, Lyads/re3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/m06;

    if-nez v1, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    iget-object v2, v1, Lyads/m06;->b:Lyads/f06;

    iget v2, v2, Lyads/f06;->d:I

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/m06;

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, v2, Lyads/m06;->c:Lyads/oe3;

    .line 274
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lyads/m06;->c:Lyads/oe3;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 275
    :cond_1
    iget-object v2, v1, Lyads/m06;->b:Lyads/f06;

    iget v2, v2, Lyads/f06;->d:I

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static a(IZ)Z
    .locals 1

    .line 267
    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 51
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lyads/sw3;[[[ILyads/mm0;)Landroid/util/Pair;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 235
    :goto_0
    iget v2, p1, Lyads/sw3;->a:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 236
    iget-object v2, p1, Lyads/sw3;->b:[I

    aget v2, v2, v1

    const/4 v4, 0x2

    if-ne v4, v2, :cond_0

    .line 237
    iget-object v2, p1, Lyads/sw3;->c:[Lyads/g06;

    aget-object v2, v2, v1

    .line 238
    iget v2, v2, Lyads/g06;->b:I

    if-lez v2, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_1
    :goto_1
    new-instance v1, Lpea;

    invoke-direct {v1, p0, p3, v0}, Lpea;-><init>(Lyads/um0;Lyads/mm0;Z)V

    new-instance p0, Lu38;

    invoke-direct {p0, v3}, Lu38;-><init>(I)V

    invoke-static {v3, p1, p2, v1, p0}, Lyads/um0;->a(ILyads/sw3;[[[ILyads/rm0;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic a(Lyads/mm0;ZILyads/f06;[I)Ljava/util/List;
    .locals 2

    move-object v0, p0

    move p0, p3

    move-object p3, p5

    .line 252
    new-instance p5, Lqea;

    invoke-direct {p5, v0}, Lqea;-><init>(Lyads/um0;)V

    move v1, p2

    move-object p2, p1

    move-object p1, p4

    move p4, v1

    invoke-static/range {p0 .. p5}, Lyads/jm0;->a(ILyads/f06;Lyads/mm0;[IZLyads/xx4;)Lyads/k55;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 3

    .line 243
    iget-object v0, p0, Lyads/um0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    sget v1, Lyads/u56;->a:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lyads/um0;->g:Lyads/pm0;

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1}, Lyads/pm0;->c()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 246
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lyads/p06;->a:Lyads/mq2;

    .line 248
    iput-object v0, p0, Lyads/p06;->b:Lyads/vn;

    return-void

    .line 249
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a(Lyads/vz2;)Z
    .locals 8

    .line 253
    iget-object v0, p0, Lyads/um0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lyads/um0;->f:Lyads/mm0;

    iget-boolean v1, v1, Lyads/mm0;->L:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lyads/um0;->e:Z

    if-nez v1, :cond_6

    iget v1, p1, Lyads/vz2;->z:I

    const/4 v3, 0x2

    if-le v1, v3, :cond_6

    .line 255
    iget-object v1, p1, Lyads/vz2;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-nez v1, :cond_0

    goto :goto_2

    .line 256
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v3, v7

    goto :goto_1

    :sswitch_0
    const-string v3, "audio/eac3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "audio/ac4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :sswitch_2
    const-string v3, "audio/ac3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :sswitch_3
    const-string v3, "audio/eac3-joc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 257
    :pswitch_0
    :try_start_1
    sget v1, Lyads/u56;->a:I

    if-lt v1, v5, :cond_6

    iget-object v1, p0, Lyads/um0;->g:Lyads/pm0;

    if-eqz v1, :cond_6

    .line 258
    iget-boolean v1, v1, Lyads/pm0;->b:Z

    if-eqz v1, :cond_6

    .line 259
    :goto_2
    sget v1, Lyads/u56;->a:I

    if-lt v1, v5, :cond_5

    iget-object v1, p0, Lyads/um0;->g:Lyads/pm0;

    if-eqz v1, :cond_5

    .line 260
    iget-boolean v3, v1, Lyads/pm0;->b:Z

    if-eqz v3, :cond_5

    .line 261
    invoke-virtual {v1}, Lyads/pm0;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lyads/um0;->g:Lyads/pm0;

    .line 262
    invoke-virtual {v1}, Lyads/pm0;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lyads/um0;->g:Lyads/pm0;

    iget-object p0, p0, Lyads/um0;->h:Lyads/am;

    .line 263
    invoke-virtual {v1, p0, p1}, Lyads/pm0;->a(Lyads/am;Lyads/vz2;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    move v2, v4

    :cond_6
    :goto_3
    monitor-exit v0

    return v2

    .line 264
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lyads/um0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/um0;->f:Lyads/mm0;

    iget-boolean v1, v1, Lyads/mm0;->L:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lyads/um0;->e:Z

    if-nez v1, :cond_0

    sget v1, Lyads/u56;->a:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lyads/um0;->g:Lyads/pm0;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lyads/pm0;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lyads/p06;->a:Lyads/mq2;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lyads/mq2;->i:Lyads/gu5;

    const/16 v0, 0xa

    iget-object p0, p0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
