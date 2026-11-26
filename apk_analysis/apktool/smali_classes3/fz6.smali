.class public final Lfz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le94$a;


# instance fields
.field public final a:Lb24;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le94;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lb24;

.field public final e:Lt18;

.field public final f:La13;

.field public final g:Z


# direct methods
.method public constructor <init>(Lb24;Ljava/util/List;ILb24;Lt18;La13;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb24;",
            "Ljava/util/List<",
            "+",
            "Le94;",
            ">;I",
            "Lb24;",
            "Lt18;",
            "La13;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfz6;->a:Lb24;

    iput-object p2, p0, Lfz6;->b:Ljava/util/List;

    iput p3, p0, Lfz6;->c:I

    iput-object p4, p0, Lfz6;->d:Lb24;

    iput-object p5, p0, Lfz6;->e:Lt18;

    iput-object p6, p0, Lfz6;->f:La13;

    iput-boolean p7, p0, Lfz6;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 14

    instance-of v0, p1, Ldz6;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ldz6;

    iget v1, v0, Ldz6;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ldz6;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Ldz6;

    invoke-direct {v0, p0, p1}, Ldz6;-><init>(Lfz6;Lf02;)V

    :goto_0
    iget-object p1, v0, Ldz6;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ldz6;->o:I

    const/4 v3, 0x0

    iget-object v5, p0, Lfz6;->a:Lb24;

    const/4 v12, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v12, :cond_1

    iget-object p0, v0, Ldz6;->l:Le94;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lfz6;->b:Ljava/util/List;

    iget v2, p0, Lfz6;->c:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le94;

    add-int/lit8 v7, v2, 0x1

    new-instance v4, Lfz6;

    iget-object v10, p0, Lfz6;->f:La13;

    iget-boolean v11, p0, Lfz6;->g:Z

    iget-object v6, p0, Lfz6;->b:Ljava/util/List;

    iget-object v8, p0, Lfz6;->d:Lb24;

    iget-object v9, p0, Lfz6;->e:Lt18;

    invoke-direct/range {v4 .. v11}, Lfz6;-><init>(Lb24;Ljava/util/List;ILb24;Lt18;La13;Z)V

    iput-object p1, v0, Ldz6;->l:Le94;

    iput v12, v0, Ldz6;->o:I

    invoke-interface {p1, v4, v0}, Le94;->a(Lfz6;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v13, p1

    move-object p1, p0

    move-object p0, v13

    :goto_1
    check-cast p1, Lg24;

    invoke-interface {p1}, Lg24;->getRequest()Lb24;

    move-result-object v0

    iget-object v1, v0, Lb24;->a:Landroid/content/Context;

    iget-object v2, v5, Lb24;->a:Landroid/content/Context;

    const-string v4, "Interceptor \'"

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lb24;->b:Ljava/lang/Object;

    sget-object v2, Lzp5;->a:Lzp5;

    if-eq v1, v2, :cond_6

    iget-object v1, v0, Lb24;->c:Lxk8;

    iget-object v2, v5, Lb24;->c:Lxk8;

    if-ne v1, v2, :cond_5

    iget-object v0, v0, Lb24;->o:Lw18;

    iget-object v1, v5, Lb24;->o:Lw18;

    if-ne v0, v1, :cond_4

    return-object p1

    :cond_4
    const-string p1, "\' cannot modify the request\'s size resolver. Use `Interceptor.Chain.withSize` instead."

    invoke-static {p0, v4, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_5
    const-string p1, "\' cannot modify the request\'s target."

    invoke-static {p0, v4, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_6
    const-string p1, "\' cannot set the request\'s data to null."

    invoke-static {p0, v4, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_7
    const-string p1, "\' cannot modify the request\'s context."

    invoke-static {p0, v4, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final getRequest()Lb24;
    .locals 0

    iget-object p0, p0, Lfz6;->d:Lb24;

    return-object p0
.end method
