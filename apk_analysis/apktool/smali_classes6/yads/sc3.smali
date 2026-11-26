.class public final Lyads/sc3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/y74;

.field public final c:Lcl4;

.field public final d:Lcl4;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    new-instance v0, Lyads/y74;

    invoke-direct {v0}, Lyads/y74;-><init>()V

    .line 36
    invoke-direct {p0, p1, v0}, Lyads/sc3;-><init>(Landroid/content/Context;Lyads/y74;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/y74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sc3;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/sc3;->b:Lyads/y74;

    new-instance p1, Ld80;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ld80;-><init>(I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/sc3;->c:Lcl4;

    new-instance p1, Luj;

    const/16 p2, 0xa

    invoke-direct {p1, p0, p2}, Luj;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/sc3;->d:Lcl4;

    return-void
.end method

.method public static final a(Lyads/sc3;Lyads/zc3;Lyads/rd3;Lf02;)Ljava/lang/Object;
    .locals 11

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    instance-of v0, p3, Lyads/oc3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyads/oc3;

    iget v1, v0, Lyads/oc3;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/oc3;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/oc3;

    invoke-direct {v0, p0, p3}, Lyads/oc3;-><init>(Lyads/sc3;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyads/oc3;->b:Ljava/lang/Object;

    .line 138
    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    .line 139
    iget v2, v0, Lyads/oc3;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    .line 140
    iget-object v6, p2, Lyads/rd3;->c:Ljava/lang/String;

    .line 141
    invoke-virtual {p0, p2}, Lyads/sc3;->a(Lyads/rd3;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_2

    .line 142
    :cond_3
    :try_start_1
    iget v7, p2, Lyads/rd3;->a:I

    .line 143
    iget v8, p2, Lyads/rd3;->b:I

    .line 144
    iput v4, v0, Lyads/oc3;->d:I

    .line 145
    sget-object p2, Lqo2;->a:Loi2;

    .line 146
    sget-object p2, Luy4;->a:Lhu3;

    .line 147
    invoke-virtual {p2}, Lhu3;->k0()Lgu3;

    move-result-object p2

    .line 148
    new-instance v4, Lyads/qc3;

    const/4 v10, 0x0

    move-object v9, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lyads/qc3;-><init>(Lyads/zc3;Ljava/lang/String;IILyads/sc3;Le02;)V

    .line 149
    invoke-static {p2, v4, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 150
    :cond_4
    :goto_1
    check-cast p3, Lyads/ac3;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p3

    :catchall_0
    :goto_2
    return-object v3

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 151
    throw p0
.end method

.method public static final a(Ly22;)Ly22;
    .locals 1

    if-nez p0, :cond_0

    .line 152
    new-instance p0, Lyads/i90;

    invoke-direct {p0}, Lyads/i90;-><init>()V

    .line 153
    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v0

    .line 154
    invoke-static {v0, p0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final a(Lyads/sc3;)Lyads/un4;
    .locals 1

    .line 155
    sget-object v0, Lyads/un4;->d:Lyads/rn4;

    iget-object p0, p0, Lyads/sc3;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lyads/rn4;->a(Landroid/content/Context;)Lyads/un4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Set;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lyads/nc3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/nc3;

    iget v1, v0, Lyads/nc3;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/nc3;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/nc3;

    invoke-direct {v0, p0, p2}, Lyads/nc3;-><init>(Lyads/sc3;Lf02;)V

    :goto_0
    iget-object p2, v0, Lyads/nc3;->c:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/nc3;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lyads/nc3;->b:Lyads/sc3;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p0, Lyads/de3;

    sget-object p1, Lmx2;->b:Lmx2;

    invoke-direct {p0, p1}, Lyads/de3;-><init>(Ljava/util/Map;)V

    return-object p0

    :cond_3
    iput-object p0, v0, Lyads/nc3;->b:Lyads/sc3;

    iput v4, v0, Lyads/nc3;->e:I

    new-instance p2, Lyads/jc3;

    invoke-direct {p2, p0, p1, v3}, Lyads/jc3;-><init>(Lyads/sc3;Ljava/util/Set;Le02;)V

    invoke-static {p2, v0}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0xa

    invoke-static {p2, p0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-static {p0}, Lm05;->b(I)I

    move-result p0

    const/16 p1, 0x10

    if-ge p0, p1, :cond_5

    move p0, p1

    :cond_5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/ac3;

    iget-object v0, p2, Lyads/ac3;->a:Ljava/lang/String;

    iget-object p2, p2, Lyads/ac3;->b:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    new-instance p0, Lyads/de3;

    invoke-direct {p0, p1}, Lyads/de3;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public final a(Ljava/util/Set;Lyads/ce3;)V
    .locals 3

    .line 156
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object p0, Lmx2;->b:Lmx2;

    invoke-interface {p2, p0}, Lyads/ce3;->a(Ljava/util/Map;)V

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lyads/sc3;->c:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly22;

    .line 159
    new-instance v1, Lyads/mc3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lyads/mc3;-><init>(Lyads/sc3;Ljava/util/Set;Lyads/ce3;Le02;)V

    const/4 p0, 0x3

    .line 160
    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final a(Lyads/rd3;)Z
    .locals 2

    .line 161
    iget-object p0, p0, Lyads/sc3;->b:Lyads/y74;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/y74;->a()J

    move-result-wide v0

    .line 162
    invoke-virtual {p1}, Lyads/rd3;->a()I

    move-result p0

    invoke-virtual {p1}, Lyads/rd3;->b()I

    move-result p1

    mul-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x4

    int-to-float p0, p1

    const/high16 p1, 0x49800000    # 1048576.0f

    add-float/2addr p0, p1

    long-to-float p1, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
