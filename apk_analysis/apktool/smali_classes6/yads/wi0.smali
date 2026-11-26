.class public final Lyads/wi0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/lf4;

.field public final b:Lyads/nk4;

.field public final c:Lyads/hy4;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/l00;Lyads/lf4;Lyads/h16;Lyads/nk4;)V
    .locals 6

    new-instance v0, Lyads/hy4;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lyads/hy4;-><init>(Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/h16;Lyads/l00;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lyads/wi0;->a:Lyads/lf4;

    iput-object p7, p0, Lyads/wi0;->b:Lyads/nk4;

    iput-object v0, p0, Lyads/wi0;->c:Lyads/hy4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/pi0;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lyads/vi0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyads/vi0;

    iget v1, v0, Lyads/vi0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/vi0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/vi0;

    invoke-direct {v0, p0, p3}, Lyads/vi0;-><init>(Lyads/wi0;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyads/vi0;->c:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/vi0;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lyads/vi0;->b:Lyads/pi0;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p3, p2, Lyads/pi0;->d:Ljava/util/List;

    iget-object v2, p0, Lyads/wi0;->c:Lyads/hy4;

    iput-object p2, v0, Lyads/vi0;->b:Lyads/pi0;

    iput v3, v0, Lyads/vi0;->e:I

    invoke-virtual {v2, p1, p3, v0}, Lyads/hy4;->a(Landroid/content/Context;Ljava/util/List;Lf02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lyads/by4;

    if-eqz p3, :cond_4

    iget-object p0, p0, Lyads/wi0;->a:Lyads/lf4;

    iget-object p1, p0, Lyads/lf4;->a:Lyads/nf4;

    invoke-virtual {p1}, Lyads/nf4;->b()V

    iget-object p0, p0, Lyads/lf4;->b:Lyads/o1;

    iget-object p0, p0, Lyads/o1;->f:Lyads/n1;

    invoke-virtual {p0}, Lyads/n1;->c()V

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lyads/wi0;->b:Lyads/nk4;

    iget-object p1, p2, Lyads/pi0;->b:Ljava/lang/String;

    iget-object p2, p2, Lyads/pi0;->c:Ljava/util/List;

    if-nez p2, :cond_5

    sget-object p2, Lkx2;->b:Lkx2;

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, v4

    :goto_2
    sget-object v0, Lmx2;->b:Lmx2;

    if-eqz p1, :cond_8

    iget-object v1, p0, Lyads/nk4;->a:Lyads/lk4;

    iget-object v2, v1, Lyads/lk4;->b:Lyads/zv3;

    invoke-virtual {v2, p1, v0}, Lyads/zv3;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v1, v1, Lyads/lk4;->a:Lyads/gv5;

    invoke-interface {v1, p1}, Lyads/gv5;->a(Ljava/lang/String;)Lyads/fv5;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance p1, Lyads/dv5;

    sget-object v1, Lyads/d75;->e:Lyads/d75;

    invoke-direct {p1, v1}, Lyads/dv5;-><init>(Lyads/d75;)V

    goto :goto_3

    :cond_8
    move-object p1, v4

    :goto_3
    invoke-static {v4, p1}, Lyads/pe4;->a(Lyads/by4;Lyads/fv5;)Lyads/zz;

    move-result-object v1

    iget-object p0, p0, Lyads/nk4;->b:Lyads/h16;

    invoke-virtual {p0, p2, v1, v0}, Lyads/h16;->a(Ljava/util/List;Lyads/zz;Ljava/util/Map;)V

    move-object v4, p1

    :goto_4
    new-instance p0, Lyads/n83;

    invoke-direct {p0, p3, v4}, Lyads/n83;-><init>(Lyads/by4;Lyads/fv5;)V

    return-object p0
.end method
