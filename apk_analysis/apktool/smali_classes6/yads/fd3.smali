.class public final Lyads/fd3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/b05;

.field public final b:Lyads/fe5;

.field public final c:Lyads/bd3;


# direct methods
.method public constructor <init>(Lyads/b05;Lyads/fe5;)V
    .locals 1

    new-instance v0, Lyads/bd3;

    invoke-direct {v0}, Lyads/bd3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/fd3;->a:Lyads/b05;

    iput-object p2, p0, Lyads/fd3;->b:Lyads/fe5;

    iput-object v0, p0, Lyads/fd3;->c:Lyads/bd3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lyads/cd3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/cd3;

    iget v1, v0, Lyads/cd3;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/cd3;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/cd3;

    invoke-direct {v0, p0, p2}, Lyads/cd3;-><init>(Lyads/fd3;Lf02;)V

    :goto_0
    iget-object p2, v0, Lyads/cd3;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/cd3;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Lyads/ed3;

    invoke-direct {p2, p1, p0, v3}, Lyads/ed3;-><init>(Ljava/util/ArrayList;Lyads/fd3;Le02;)V

    iput v4, v0, Lyads/cd3;->d:I

    invoke-static {p2, v0}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb36;

    iget-object v0, p2, Lb36;->b:Ljava/lang/Object;

    check-cast v0, Lyads/rd3;

    iget-object p2, p2, Lb36;->c:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    iget-object v1, p0, Lyads/fd3;->a:Lyads/b05;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/b05;->b(Lyads/rd3;)Lyads/a05;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v1, Lyads/b05;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
