.class public final Lcom/google/protobuf/u$a;
.super Lcom/google/protobuf/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/u$a;->c:Ljava/lang/Class;

    return-void
.end method

.method public static d(IJLjava/lang/Object;)Ljava/util/List;
    .locals 3

    invoke-static {p3, p1, p2}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Loo4;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/protobuf/t;

    invoke-direct {v0, p0}, Lcom/google/protobuf/t;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Leg6;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/protobuf/q$j;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/protobuf/q$j;

    invoke-interface {v0, p0}, Lcom/google/protobuf/q$j;->mutableCopyWithCapacity(I)Lcom/google/protobuf/q$j;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-static {p3, p1, p2, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v0

    :cond_2
    sget-object v1, Lcom/google/protobuf/u$a;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p3, p1, p2, v1}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v1

    :cond_3
    instance-of v1, v0, Lz69;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/google/protobuf/t;

    check-cast v0, Lz69;

    invoke-virtual {v0}, Lz69;->size()I

    move-result v2

    add-int/2addr v2, p0

    invoke-direct {v1, v2}, Lcom/google/protobuf/t;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/google/protobuf/t;->addAll(Ljava/util/Collection;)Z

    invoke-static {p3, p1, p2, v1}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v1

    :cond_4
    instance-of v1, v0, Leg6;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/google/protobuf/q$j;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/q$j;

    invoke-interface {v1}, Lcom/google/protobuf/q$j;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p0

    invoke-interface {v1, v0}, Lcom/google/protobuf/q$j;->mutableCopyWithCapacity(I)Lcom/google/protobuf/q$j;

    move-result-object p0

    invoke-static {p3, p1, p2, p0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object p0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 2

    invoke-static {p1, p2, p3}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Loo4;

    if-eqz v0, :cond_0

    check-cast p0, Loo4;

    invoke-interface {p0}, Loo4;->getUnmodifiableView()Loo4;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/protobuf/u$a;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Leg6;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/google/protobuf/q$j;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/protobuf/q$j;

    invoke-interface {p0}, Lcom/google/protobuf/q$j;->isModifiable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/google/protobuf/q$j;->makeImmutable()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_1
    invoke-static {p1, p2, p3, p0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p2, p3, p4}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2, p3, p4, p1}, Lcom/google/protobuf/u$a;->d(IJLjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-lez v0, :cond_1

    move-object p0, p2

    :cond_1
    invoke-static {p1, p3, p4, p0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 p0, 0xa

    invoke-static {p0, p2, p3, p1}, Lcom/google/protobuf/u$a;->d(IJLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
