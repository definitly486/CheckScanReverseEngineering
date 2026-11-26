.class public final Lc05;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Ld05$o;

.field public e:Ld05$o;

.field public f:Ln03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln03<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc05;->b:I

    iput v0, p0, Lc05;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ConcurrentMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lc05;->a:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lc05;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x10

    :cond_0
    iget p0, p0, Lc05;->c:I

    if-ne p0, v2, :cond_1

    const/4 p0, 0x4

    :cond_1
    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    :cond_2
    sget-object v0, Ld05;->k:Ld05$a;

    iget-object v0, p0, Lc05;->d:Ld05$o;

    sget-object v1, Ld05$o;->STRONG:Ld05$o;

    invoke-static {v0, v1}, Lod5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld05$o;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lc05;->e:Ld05$o;

    invoke-static {v0, v1}, Lod5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld05$o;

    if-ne v0, v1, :cond_3

    new-instance v0, Ld05;

    sget-object v1, Ld05$p$a;->a:Ld05$p$a;

    invoke-direct {v0, p0, v1}, Ld05;-><init>(Lc05;Ld05$j;)V

    return-object v0

    :cond_3
    iget-object v0, p0, Lc05;->d:Ld05$o;

    invoke-static {v0, v1}, Lod5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld05$o;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lc05;->e:Ld05$o;

    invoke-static {v0, v1}, Lod5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld05$o;

    sget-object v2, Ld05$o;->WEAK:Ld05$o;

    if-ne v0, v2, :cond_4

    new-instance v0, Ld05;

    sget-object v1, Ld05$r$a;->a:Ld05$r$a;

    invoke-direct {v0, p0, v1}, Ld05;-><init>(Lc05;Ld05$j;)V

    return-object v0

    :cond_4
    iget-object v0, p0, Lc05;->d:Ld05$o;

    invoke-static {v0, v1}, Lod5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld05$o;

    sget-object v2, Ld05$o;->WEAK:Ld05$o;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lc05;->e:Ld05$o;

    invoke-static {v0, v1}, Lod5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld05$o;

    if-ne v0, v1, :cond_5

    new-instance v0, Ld05;

    sget-object v1, Ld05$v$a;->a:Ld05$v$a;

    invoke-direct {v0, p0, v1}, Ld05;-><init>(Lc05;Ld05$j;)V

    return-object v0

    :cond_5
    iget-object v0, p0, Lc05;->d:Ld05$o;

    invoke-static {v0, v1}, Lod5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld05$o;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lc05;->e:Ld05$o;

    invoke-static {v0, v1}, Lod5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld05$o;

    if-ne v0, v2, :cond_6

    new-instance v0, Ld05;

    sget-object v1, Ld05$x$a;->a:Ld05$x$a;

    invoke-direct {v0, p0, v1}, Ld05;-><init>(Lc05;Ld05$j;)V

    return-object v0

    :cond_6
    invoke-static {}, Lxp;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    iget v1, p0, Lc05;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    invoke-virtual {v0, v1, v3}, Lod5$a;->a(ILjava/lang/String;)V

    :cond_0
    iget v1, p0, Lc05;->c:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v1, v2}, Lod5$a;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lc05;->d:Ld05$o;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgo2;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v1, v2}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lc05;->e:Ld05$o;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgo2;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v1, v2}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lc05;->f:Ln03;

    if-eqz p0, :cond_4

    new-instance p0, Lod5$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, v0, Lod5$a;->c:Lod5$a$b;

    iput-object p0, v1, Lod5$a$b;->c:Lod5$a$b;

    iput-object p0, v0, Lod5$a;->c:Lod5$a$b;

    const-string v1, "keyEquivalence"

    iput-object v1, p0, Lod5$a$b;->b:Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
