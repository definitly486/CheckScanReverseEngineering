.class public final Lf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk5;


# instance fields
.field public final a:Luo1;

.field public final b:Lf3;

.field public final c:Lz68;


# direct methods
.method public constructor <init>(Luo1;Lf3;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf6;->a:Luo1;

    iput-object p2, p0, Lf6;->b:Lf3;

    invoke-interface {p3}, Ljf6;->L()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lf6;->c:Lz68;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lf02;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Lt5;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lt5;

    iget v1, v0, Lt5;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lt5;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lt5;

    invoke-direct {v0, p0, p3}, Lt5;-><init>(Lf6;Lf02;)V

    :goto_0
    iget-object p3, v0, Lt5;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lt5;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p3, Ll6;

    invoke-direct {p3, p1, p2}, Ll6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v0, Lt5;->n:I

    iget-object p0, p0, Lf6;->b:Lf3;

    invoke-interface {p0, p3, v0}, Lf3;->c(Ll6;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lp6;

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p0

    invoke-virtual {p0}, Lr6;->a()Ljava/lang/String;

    move-result-object v5

    new-instance p0, Lxp6;

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p1

    invoke-virtual {p1}, Lr6;->c()J

    move-result-wide p1

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lxp6;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p0

    invoke-virtual {p0}, Lr6;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p0

    invoke-virtual {p0}, Lr6;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p0

    invoke-virtual {p0}, Lr6;->f()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lq6$a;

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p0

    invoke-virtual {p0}, Lr6;->b()Lr6$a;

    move-result-object p0

    invoke-virtual {p0}, Lr6$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p1

    invoke-virtual {p1}, Lr6;->b()Lr6$a;

    move-result-object p1

    invoke-virtual {p1}, Lr6$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v10, p0, p1}, Lq6$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p0

    invoke-virtual {p0}, Lr6;->d()Lr6$a;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v3, Lq6$a;

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p0

    invoke-virtual {p0}, Lr6;->d()Lr6$a;

    move-result-object p0

    invoke-virtual {p0}, Lr6$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lp6;->b()Lr6;

    move-result-object p1

    invoke-virtual {p1}, Lr6;->d()Lr6$a;

    move-result-object p1

    invoke-virtual {p1}, Lr6$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p0, p1}, Lq6$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v11, v3

    new-instance v4, Lq6;

    invoke-direct/range {v4 .. v11}, Lq6;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lq6$a;Lq6$a;)V

    return-object v4

    :cond_5
    invoke-virtual {p3}, Lp6;->a()Ln6;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance p0, Lm6;

    invoke-virtual {p3}, Lp6;->a()Ln6;

    move-result-object p1

    invoke-virtual {p1}, Ln6;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lp6;->a()Ln6;

    move-result-object p2

    invoke-virtual {p2}, Ln6;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lp6;->a()Ln6;

    move-result-object p3

    invoke-virtual {p3}, Ln6;->a()Ln6$a;

    move-result-object p3

    invoke-virtual {p3}, Ln6$a;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lm6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_6
    return-object v3
.end method

.method public final b(Ljava/lang/String;Ljava/io/File;Lf02;)Ljava/lang/Enum;
    .locals 5

    instance-of v0, p3, Lc6;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lc6;

    iget v1, v0, Lc6;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc6;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc6;

    invoke-direct {v0, p0, p3}, Lc6;-><init>(Lf6;Lf02;)V

    :goto_0
    iget-object p3, v0, Lc6;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lc6;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lj95;->e:Ljava/util/regex/Pattern;

    const-string v2, "image/*"

    invoke-static {v2}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object v2

    new-instance v4, Ld37;

    invoke-direct {v4, v2, p2}, Ld37;-><init>(Lj95;Ljava/io/File;)V

    invoke-static {p1, p3, v4}, Llg5$c$a;->a(Ljava/lang/String;Ljava/lang/String;Ld37;)Llg5$c;

    move-result-object p1

    iput v3, v0, Lc6;->n:I

    iget-object p0, p0, Lf6;->b:Lf3;

    invoke-interface {p0, p1, v0}, Lf3;->b(Llg5$c;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, La57;

    iget-object p0, p3, La57;->a:Lz47;

    iget p0, p0, Lz47;->e:I

    const/16 p1, 0xc8

    if-gt p1, p0, :cond_4

    const/16 p1, 0x12c

    if-ge p0, p1, :cond_4

    sget-object p0, Llz;->NewAvatarSent:Llz;

    return-object p0

    :cond_4
    const/16 p1, 0x19d

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 p1, 0x190

    if-ne p0, p1, :cond_6

    :goto_2
    sget-object p0, Llz;->LargeFile:Llz;

    return-object p0

    :cond_6
    const/16 p1, 0x1f4

    if-gt p1, p0, :cond_7

    const/16 p1, 0x258

    if-ge p0, p1, :cond_7

    sget-object p0, Llz;->BackendError:Llz;

    return-object p0

    :cond_7
    sget-object p0, Llz;->Error:Llz;

    return-object p0
.end method

.method public final c(Lb89;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf6;->a:Luo1;

    invoke-interface {p0, p1}, Luo1;->c(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lf02;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf6;->a:Luo1;

    invoke-interface {p0, p1}, Luo1;->b(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lgy6;
    .locals 0

    iget-object p0, p0, Lf6;->c:Lz68;

    invoke-static {p0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Ly5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ly5;

    iget v1, v0, Ly5;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ly5;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Ly5;

    invoke-direct {v0, p0, p1}, Ly5;-><init>(Lf6;Lf02;)V

    :goto_0
    iget-object p1, v0, Ly5;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ly5;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Ly5;->n:I

    iget-object p0, p0, Lf6;->b:Lf3;

    invoke-interface {p0, v0}, Lf3;->a(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    const-string p0, "<body>"

    const-string v0, ""

    invoke-static {p1, p0, v0}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "</body>"

    invoke-static {p0, p1, v0}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-static {p0, p1, v0}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lf6;->c:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
