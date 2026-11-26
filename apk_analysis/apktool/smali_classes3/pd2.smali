.class public final Lpd2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Li47<",
            "TDataType;TResourceType;>;>;"
        }
    .end annotation
.end field

.field public final c:Lv47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv47<",
            "TResourceType;TTranscode;>;"
        }
    .end annotation
.end field

.field public final d:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lv47;Landroidx/core/util/Pools$Pool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "+",
            "Li47<",
            "TDataType;TResourceType;>;>;",
            "Lv47<",
            "TResourceType;TTranscode;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpd2;->a:Ljava/lang/Class;

    iput-object p4, p0, Lpd2;->b:Ljava/util/List;

    iput-object p5, p0, Lpd2;->c:Lv47;

    iput-object p6, p0, Lpd2;->d:Landroidx/core/util/Pools$Pool;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Failed DecodePath{"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpd2;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(IILod2$b;Lxz5;Lcom/bumptech/glide/load/data/a;)Le47;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v6, p3

    iget-object v7, v0, Lpd2;->d:Landroidx/core/util/Pools$Pool;

    invoke-interface {v7}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "Argument must not be null"

    invoke-static {v1, v2}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v1, p5

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lpd2;->b(Lcom/bumptech/glide/load/data/a;IILxz5;Ljava/util/List;)Le47;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7, v5}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    iget-object v2, v6, Lod2$b;->b:Lod2;

    iget-object v3, v6, Lod2$b;->a:Ly82;

    iget-object v4, v2, Lod2;->b:Lmd2;

    invoke-interface {v1}, Le47;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v5, Ly82;->RESOURCE_DISK_CACHE:Ly82;

    if-eq v3, v5, :cond_0

    invoke-virtual {v4, v13}, Lmd2;->e(Ljava/lang/Class;)Ls19;

    move-result-object v5

    iget-object v7, v2, Lod2;->i:Lwq3;

    iget v8, v2, Lod2;->m:I

    iget v9, v2, Lod2;->n:I

    invoke-interface {v5, v7, v1, v8, v9}, Ls19;->b(Landroid/content/Context;Le47;II)Le47;

    move-result-object v7

    move-object v12, v5

    move-object v5, v7

    goto :goto_0

    :cond_0
    move-object v5, v1

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v1}, Le47;->recycle()V

    :cond_1
    iget-object v1, v4, Lmd2;->c:Lwq3;

    invoke-virtual {v1}, Lwq3;->a()Lcom/bumptech/glide/Registry;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/Registry;->d:Lm47;

    invoke-interface {v5}, Le47;->a()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Lm47;->a(Ljava/lang/Class;)Ll47;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v4, Lmd2;->c:Lwq3;

    invoke-virtual {v1}, Lwq3;->a()Lcom/bumptech/glide/Registry;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/Registry;->d:Lm47;

    invoke-interface {v5}, Le47;->a()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Lm47;->a(Ljava/lang/Class;)Ll47;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v7, v2, Lod2;->p:Lxz5;

    invoke-interface {v1, v7}, Ll47;->c(Lxz5;)Lrx2;

    move-result-object v7

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v5}, Le47;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_3
    sget-object v7, Lrx2;->NONE:Lrx2;

    const/4 v1, 0x0

    :goto_1
    iget-object v8, v2, Lod2;->z:Lkf4;

    invoke-virtual {v4}, Lmd2;->b()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v15, 0x0

    move v11, v15

    :goto_2
    const/4 v14, 0x1

    if-ge v11, v10, :cond_5

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 p1, 0x0

    move-object/from16 v6, v16

    check-cast v6, Lnc5$a;

    iget-object v6, v6, Lnc5$a;->a:Lkf4;

    invoke-interface {v6, v8}, Lkf4;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v14

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    const/16 p1, 0x0

    move v6, v15

    :goto_3
    xor-int/2addr v6, v14

    iget-object v8, v2, Lod2;->o:Lsn2;

    invoke-virtual {v8, v6, v3, v7}, Lsn2;->d(ZLy82;Lrx2;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    sget-object v3, Lod2$a;->c:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v14, :cond_7

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    new-instance v6, Lh47;

    iget-object v3, v4, Lmd2;->c:Lwq3;

    iget-object v7, v3, Lwq3;->a:Lpr;

    iget-object v8, v2, Lod2;->z:Lkf4;

    iget-object v9, v2, Lod2;->j:Lkf4;

    iget v10, v2, Lod2;->m:I

    iget v11, v2, Lod2;->n:I

    move v3, v14

    iget-object v14, v2, Lod2;->p:Lxz5;

    invoke-direct/range {v6 .. v14}, Lh47;-><init>(Lpr;Lkf4;Lkf4;IILs19;Ljava/lang/Class;Lxz5;)V

    goto :goto_4

    :cond_6
    const-string v0, "Unknown strategy: "

    invoke-static {v7, v0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_7
    move v3, v14

    new-instance v6, Lp82;

    iget-object v4, v2, Lod2;->z:Lkf4;

    iget-object v7, v2, Lod2;->j:Lkf4;

    invoke-direct {v6, v4, v7}, Lp82;-><init>(Lkf4;Lkf4;)V

    :goto_4
    sget-object v4, Lsu4;->f:Lf53$c;

    invoke-virtual {v4}, Lf53$c;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsu4;

    iput-boolean v15, v4, Lsu4;->e:Z

    iput-boolean v3, v4, Lsu4;->d:Z

    iput-object v5, v4, Lsu4;->c:Le47;

    iget-object v2, v2, Lod2;->g:Lod2$c;

    iput-object v6, v2, Lod2$c;->a:Lkf4;

    iput-object v1, v2, Lod2$c;->b:Ll47;

    iput-object v4, v2, Lod2$c;->c:Lsu4;

    move-object v5, v4

    goto :goto_5

    :cond_8
    new-instance v0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v5}, Le47;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_9
    :goto_5
    iget-object v0, v0, Lpd2;->c:Lv47;

    move-object/from16 v4, p4

    invoke-interface {v0, v5, v4}, Lv47;->a(Le47;Lxz5;)Le47;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v7, v5}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw v0
.end method

.method public final b(Lcom/bumptech/glide/load/data/a;IILxz5;Ljava/util/List;)Le47;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/a<",
            "TDataType;>;II",
            "Lxz5;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Le47<",
            "TResourceType;>;"
        }
    .end annotation

    iget-object v0, p0, Lpd2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li47;

    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/a;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, p4}, Li47;->b(Ljava/lang/Object;Lxz5;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/a;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, p2, p3, p4}, Li47;->a(Ljava/lang/Object;IILxz5;)Le47;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    :goto_1
    const/4 v6, 0x2

    const-string v7, "DecodePath"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failed to decode data for "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lpd2;->e:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DecodePath{ dataClass="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpd2;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpd2;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lpd2;->c:Lv47;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
