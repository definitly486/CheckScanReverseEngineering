.class public final Lyads/dz4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lyads/fz4;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lyads/n70;

.field public final synthetic g:Lyads/sl5;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(JLandroid/content/Context;Ljava/util/List;Le02;Lyads/n70;Lyads/fz4;Lyads/sl5;)V
    .locals 0

    iput-object p4, p0, Lyads/dz4;->c:Ljava/util/List;

    iput-object p7, p0, Lyads/dz4;->d:Lyads/fz4;

    iput-object p3, p0, Lyads/dz4;->e:Landroid/content/Context;

    iput-object p6, p0, Lyads/dz4;->f:Lyads/n70;

    iput-object p8, p0, Lyads/dz4;->g:Lyads/sl5;

    iput-wide p1, p0, Lyads/dz4;->h:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 9

    new-instance v0, Lyads/dz4;

    iget-object v4, p0, Lyads/dz4;->c:Ljava/util/List;

    iget-object v7, p0, Lyads/dz4;->d:Lyads/fz4;

    iget-object v3, p0, Lyads/dz4;->e:Landroid/content/Context;

    iget-object v6, p0, Lyads/dz4;->f:Lyads/n70;

    iget-object v8, p0, Lyads/dz4;->g:Lyads/sl5;

    iget-wide v1, p0, Lyads/dz4;->h:J

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lyads/dz4;-><init>(JLandroid/content/Context;Ljava/util/List;Le02;Lyads/n70;Lyads/fz4;Lyads/sl5;)V

    iput-object p1, v0, Lyads/dz4;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/dz4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/dz4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/dz4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/dz4;->b:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v0, p0, Lyads/dz4;->c:Ljava/util/List;

    iget-object v2, p0, Lyads/dz4;->d:Lyads/fz4;

    iget-object v4, p0, Lyads/dz4;->e:Landroid/content/Context;

    iget-object v5, p0, Lyads/dz4;->f:Lyads/n70;

    iget-object v8, p0, Lyads/dz4;->g:Lyads/sl5;

    iget-wide v6, p0, Lyads/dz4;->h:J

    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/l74;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/az4;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lyads/az4;-><init>(Lyads/fz4;Lyads/l74;Landroid/content/Context;Lyads/n70;JLyads/sl5;Le02;)V

    const/4 v3, 0x3

    invoke-static {p1, v9, v9, v1, v3}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method
