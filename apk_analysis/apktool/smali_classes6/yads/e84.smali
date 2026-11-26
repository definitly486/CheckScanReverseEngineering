.class public final Lyads/e84;
.super Lyads/h50;
.source "SourceFile"


# static fields
.field public static final r:Lyads/p04;


# instance fields
.field public final k:[Lyads/cs;

.field public final l:[Lyads/kx5;

.field public final m:Ljava/util/ArrayList;

.field public final n:Lyads/dk0;

.field public o:I

.field public p:[[J

.field public q:Lyads/d84;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lyads/e04;

    invoke-direct {v0}, Lyads/e04;-><init>()V

    sget-object v1, Lyads/oe3;->c:Lyads/le3;

    sget-object v1, Lyads/k55;->f:Lyads/k55;

    sget-object v8, Lyads/m04;->d:Lyads/m04;

    new-instance v2, Lyads/p04;

    new-instance v4, Lyads/g04;

    invoke-direct {v4, v0}, Lyads/g04;-><init>(Lyads/e04;)V

    new-instance v6, Lyads/j04;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const v16, -0x800001

    const v17, -0x800001

    move-object v9, v6

    invoke-direct/range {v9 .. v17}, Lyads/j04;-><init>(JJJFF)V

    sget-object v7, Lyads/t04;->H:Lyads/t04;

    const-string v3, "MergingMediaSource"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lyads/p04;-><init>(Ljava/lang/String;Lyads/g04;Lyads/k04;Lyads/j04;Lyads/t04;Lyads/m04;)V

    sput-object v2, Lyads/e84;->r:Lyads/p04;

    return-void
.end method

.method public varargs constructor <init>([Lyads/cs;)V
    .locals 2

    new-instance v0, Lyads/dk0;

    invoke-direct {v0}, Lyads/dk0;-><init>()V

    invoke-direct {p0}, Lyads/h50;-><init>()V

    iput-object p1, p0, Lyads/e84;->k:[Lyads/cs;

    iput-object v0, p0, Lyads/e84;->n:Lyads/dk0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lyads/e84;->m:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lyads/e84;->o:I

    array-length p1, p1

    new-array p1, p1, [Lyads/kx5;

    iput-object p1, p0, Lyads/e84;->l:[Lyads/kx5;

    const/4 p1, 0x0

    new-array p1, p1, [[J

    iput-object p1, p0, Lyads/e84;->p:[[J

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 p0, 0x8

    const-string p1, "expectedKeys"

    invoke-static {p0, p1}, Lyads/h20;->a(ILjava/lang/String;)I

    new-instance p0, Lyads/bd4;

    invoke-direct {p0}, Lyads/bd4;-><init>()V

    invoke-virtual {p0}, Lyads/fd4;->a()Lyads/ed4;

    move-result-object p0

    invoke-virtual {p0}, Lyads/ed4;->a()Lyads/gd4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lyads/h14;)Lyads/h14;
    .locals 0

    .line 68
    check-cast p1, Ljava/lang/Integer;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lyads/h14;Lyads/aj0;J)Lyads/z04;
    .locals 9

    iget-object v0, p0, Lyads/e84;->k:[Lyads/cs;

    array-length v0, v0

    new-array v1, v0, [Lyads/z04;

    iget-object v2, p0, Lyads/e84;->l:[Lyads/kx5;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lyads/e84;->l:[Lyads/kx5;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lyads/kx5;->a(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lyads/h14;->a(Ljava/lang/Object;)Lyads/h14;

    move-result-object v4

    iget-object v5, p0, Lyads/e84;->k:[Lyads/cs;

    aget-object v5, v5, v3

    iget-object v6, p0, Lyads/e84;->p:[[J

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    sub-long v6, p3, v7

    invoke-virtual {v5, v4, p2, v6, v7}, Lyads/cs;->a(Lyads/h14;Lyads/aj0;J)Lyads/z04;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lyads/c84;

    iget-object p2, p0, Lyads/e84;->n:Lyads/dk0;

    iget-object p0, p0, Lyads/e84;->p:[[J

    aget-object p0, p0, v2

    invoke-direct {p1, p2, p0, v1}, Lyads/c84;-><init>(Lyads/dk0;[J[Lyads/z04;)V

    return-object p1
.end method

.method public final a(Lyads/p16;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lyads/h50;->j:Lyads/p16;

    const/4 p1, 0x0

    .line 64
    invoke-static {p1}, Lyads/u56;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 65
    iput-object p1, p0, Lyads/h50;->i:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 66
    :goto_0
    iget-object v0, p0, Lyads/e84;->k:[Lyads/cs;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lyads/e84;->k:[Lyads/cs;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lyads/h50;->a(Ljava/lang/Object;Lyads/cs;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lyads/z04;)V
    .locals 4

    .line 70
    check-cast p1, Lyads/c84;

    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object v1, p0, Lyads/e84;->k:[Lyads/cs;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 72
    aget-object v1, v1, v0

    .line 73
    iget-object v2, p1, Lyads/c84;->b:[Lyads/z04;

    .line 74
    aget-object v2, v2, v0

    instance-of v3, v2, Lyads/a84;

    if-eqz v3, :cond_0

    .line 75
    check-cast v2, Lyads/a84;

    iget-object v2, v2, Lyads/a84;->b:Lyads/z04;

    .line 76
    :cond_0
    invoke-virtual {v1, v2}, Lyads/cs;->a(Lyads/z04;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/Object;Lyads/cs;Lyads/kx5;)V
    .locals 5

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lyads/e84;->q:Lyads/d84;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lyads/e84;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Lyads/kx5;->a()I

    move-result v0

    iput v0, p0, Lyads/e84;->o:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lyads/kx5;->a()I

    move-result v0

    iget v1, p0, Lyads/e84;->o:I

    if-eq v0, v1, :cond_2

    new-instance p1, Lyads/d84;

    invoke-direct {p1}, Lyads/d84;-><init>()V

    iput-object p1, p0, Lyads/e84;->q:Lyads/d84;

    return-void

    :cond_2
    move v0, v1

    :goto_0
    iget-object v1, p0, Lyads/e84;->p:[[J

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lyads/e84;->l:[Lyads/kx5;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lyads/e84;->p:[[J

    :cond_3
    iget-object v0, p0, Lyads/e84;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lyads/e84;->l:[Lyads/kx5;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    iget-object p1, p0, Lyads/e84;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lyads/e84;->l:[Lyads/kx5;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lyads/cs;->a(Lyads/kx5;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final c()Lyads/p04;
    .locals 1

    iget-object p0, p0, Lyads/e84;->k:[Lyads/cs;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lyads/cs;->c()Lyads/p04;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lyads/e84;->r:Lyads/p04;

    return-object p0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lyads/e84;->q:Lyads/d84;

    if-nez v0, :cond_0

    invoke-super {p0}, Lyads/h50;->d()V

    return-void

    :cond_0
    throw v0
.end method

.method public final e()V
    .locals 2

    invoke-super {p0}, Lyads/h50;->e()V

    iget-object v0, p0, Lyads/e84;->l:[Lyads/kx5;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lyads/e84;->o:I

    iput-object v1, p0, Lyads/e84;->q:Lyads/d84;

    iget-object v0, p0, Lyads/e84;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lyads/e84;->m:Ljava/util/ArrayList;

    iget-object p0, p0, Lyads/e84;->k:[Lyads/cs;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method
