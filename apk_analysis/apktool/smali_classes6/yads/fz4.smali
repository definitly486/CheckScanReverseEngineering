.class public final Lyads/fz4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/n00;

.field public final b:Lyads/m00;

.field public final c:Lyads/e34;

.field public final d:Lyads/uy4;

.field public final e:Lyads/vy4;


# direct methods
.method public constructor <init>(Lyads/l34;Lyads/n00;)V
    .locals 3

    new-instance v0, Lyads/m00;

    invoke-direct {v0}, Lyads/m00;-><init>()V

    new-instance v1, Lyads/e34;

    invoke-direct {v1, p1}, Lyads/e34;-><init>(Lyads/l34;)V

    new-instance p1, Lyads/uy4;

    invoke-direct {p1}, Lyads/uy4;-><init>()V

    new-instance v2, Lyads/vy4;

    invoke-direct {v2}, Lyads/vy4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/fz4;->a:Lyads/n00;

    iput-object v0, p0, Lyads/fz4;->b:Lyads/m00;

    iput-object v1, p0, Lyads/fz4;->c:Lyads/e34;

    iput-object p1, p0, Lyads/fz4;->d:Lyads/uy4;

    iput-object v2, p0, Lyads/fz4;->e:Lyads/vy4;

    return-void
.end method

.method public static final a(Lyads/fz4;Landroid/content/Context;Lyads/n70;Lyads/sl5;Ljava/util/List;JLf02;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lyads/cz4;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lyads/cz4;

    iget v2, v1, Lyads/cz4;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lyads/cz4;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lyads/cz4;

    invoke-direct {v1, p0, v0}, Lyads/cz4;-><init>(Lyads/fz4;Lf02;)V

    :goto_0
    iget-object v0, v1, Lyads/cz4;->b:Ljava/lang/Object;

    sget-object v11, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v1, Lyads/cz4;->d:I

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v14, :cond_2

    if-ne v2, v13, :cond_1

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v12

    :cond_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lyads/iy4;->d:Lyads/iy4;

    invoke-static {}, Lyads/q54;->a()Lyads/qy4;

    move-result-object v0

    new-instance v1, Lyads/ly4;

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lyads/ly4;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_4
    new-instance v2, Lyads/dz4;

    const/4 v7, 0x0

    move-object v9, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move-object/from16 v6, p4

    move-wide/from16 v3, p5

    invoke-direct/range {v2 .. v10}, Lyads/dz4;-><init>(JLandroid/content/Context;Ljava/util/List;Le02;Lyads/n70;Lyads/fz4;Lyads/sl5;)V

    iput v14, v1, Lyads/cz4;->d:I

    invoke-static {v2, v1}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast v0, Ljava/util/List;

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    new-instance v3, Lyads/ez4;

    invoke-direct {v3, v0, v12}, Lyads/ez4;-><init>(Ljava/util/List;Le02;)V

    iput v13, v1, Lyads/cz4;->d:I

    invoke-static {v2, v3, v1}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_6

    :goto_2
    return-object v11

    :cond_6
    :goto_3
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lyads/iy4;->d:Lyads/iy4;

    invoke-static {}, Lyads/q54;->a()Lyads/qy4;

    move-result-object v0

    new-instance v1, Lyads/ly4;

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lyads/ly4;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_7
    new-instance v1, Lyads/ly4;

    invoke-direct {v1, v0}, Lyads/ly4;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static final a(Lyads/fz4;Lyads/x54;)V
    .locals 4

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    iget-object p0, p1, Lyads/x54;->b:Ljava/lang/String;

    .line 161
    const-string v0, "LevelPlay"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 162
    const-string p0, "app_key"

    const-string v0, "placement_name"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 165
    iget-object v3, p1, Lyads/x54;->c:Ljava/util/Map;

    .line 166
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 169
    :cond_2
    const-string p0, "Required configuration parameters are missing"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
