.class public Lo87;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lto1;

.field public final b:Ly57;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lto1;

    invoke-direct {v0}, Lto1;-><init>()V

    iput-object v0, p0, Lo87;->a:Lto1;

    new-instance v0, Ly57;

    invoke-direct {v0}, Ly57;-><init>()V

    iput-object v0, p0, Lo87;->b:Ly57;

    return-void
.end method


# virtual methods
.method public final a(Ldf7;)V
    .locals 2

    new-instance v0, Lc00;

    invoke-direct {v0, p1}, Lc00;-><init>(Ldf7;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lso1;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lo87;->b([Lso1;)V

    return-void
.end method

.method public final varargs b([Lso1;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lo87;->a:Lto1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lto1;->c:Landroid/os/Handler;

    new-instance v1, Luu;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Luu;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 3

    new-instance v0, Lvz;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lso1;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lo87;->b([Lso1;)V

    return-void
.end method

.method public final d(Ldf7;)V
    .locals 2

    new-instance v0, Lxi3;

    invoke-direct {v0, p1}, Lxi3;-><init>(Ldf7;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lso1;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lo87;->b([Lso1;)V

    return-void
.end method

.method public final varargs e([Ldf7;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    new-instance v5, Lxi3;

    invoke-direct {v5, v4}, Lxi3;-><init>(Ldf7;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Lxi3;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, [Lxi3;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lso1;

    invoke-virtual {p0, p1}, Lo87;->b([Lso1;)V

    return-void

    :cond_1
    const-string p0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs f([Ldf7;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    add-int/lit8 v6, v4, 0x1

    if-nez v4, :cond_0

    new-instance v4, Ll27;

    invoke-direct {v4, v5}, Ll27;-><init>(Ldf7;)V

    goto :goto_1

    :cond_0
    new-instance v4, Lxi3;

    invoke-direct {v4, v5}, Lxi3;-><init>(Ldf7;)V

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_1
    new-instance p1, Ll68;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Ll68;-><init>(I)V

    new-instance v1, Lc00;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lc00;-><init>(Ldf7;)V

    invoke-virtual {p1, v1}, Ll68;->a(Ljava/lang/Object;)V

    new-array v1, v2, [Lso1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ll68;->b(Ljava/lang/Object;)V

    iget-object p1, p1, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lso1;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lso1;

    invoke-virtual {p0, p1}, Lo87;->b([Lso1;)V

    return-void

    :cond_2
    const-string p0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ldf7;)V
    .locals 3

    new-instance v0, Lc00;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc00;-><init>(Ldf7;)V

    new-instance v1, Ll27;

    invoke-direct {v1, p1}, Ll27;-><init>(Ldf7;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lso1;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lo87;->b([Lso1;)V

    return-void
.end method

.method public final h(Ldf7;)V
    .locals 2

    new-instance v0, Ll27;

    invoke-direct {v0, p1}, Ll27;-><init>(Ldf7;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lso1;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lo87;->b([Lso1;)V

    return-void
.end method
