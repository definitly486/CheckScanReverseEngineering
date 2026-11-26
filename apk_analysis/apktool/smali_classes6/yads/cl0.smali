.class public final Lyads/cl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/g1;

.field public final b:Lqm3;


# direct methods
.method public constructor <init>(Lyads/g1;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cl0;->a:Lyads/g1;

    check-cast p2, Lqm3;

    iput-object p2, p0, Lyads/cl0;->b:Lqm3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/n8;JLf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p4, Lyads/bl0;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lyads/bl0;

    iget v1, v0, Lyads/bl0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/bl0;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/bl0;

    invoke-direct {v0, p0, p4}, Lyads/bl0;-><init>(Lyads/cl0;Lf02;)V

    :goto_0
    iget-object p4, v0, Lyads/bl0;->d:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/bl0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-wide p2, v0, Lyads/bl0;->c:J

    iget-object p1, v0, Lyads/bl0;->b:Lyads/n8;

    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p4, p0, Lyads/cl0;->b:Lqm3;

    iput-object p1, v0, Lyads/bl0;->b:Lyads/n8;

    iput-wide p2, v0, Lyads/bl0;->c:J

    iput v4, v0, Lyads/bl0;->f:I

    invoke-interface {p4, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    return-object p4

    :cond_5
    iget-object p4, p0, Lyads/cl0;->a:Lyads/g1;

    iget-object v2, p4, Lyads/g1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p4, p4, Lyads/g1;->b:Lyads/l13;

    invoke-virtual {p4, p1}, Lyads/l13;->a(Lyads/n8;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    return-object v5

    :cond_6
    iget-object p0, p0, Lyads/cl0;->a:Lyads/g1;

    iput-object v5, v0, Lyads/bl0;->b:Lyads/n8;

    iput v3, v0, Lyads/bl0;->f:I

    iget-object p4, p0, Lyads/g1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lyads/g1;->b:Lyads/l13;

    invoke-virtual {p0, p1}, Lyads/l13;->a(Lyads/n8;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxp1;

    if-nez p0, :cond_7

    move-object p4, v5

    goto :goto_2

    :cond_7
    new-instance p1, Lyads/f1;

    invoke-direct {p1, p0, v5}, Lyads/f1;-><init>(Lxp1;Le02;)V

    invoke-static {p2, p3, p1, v0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    move-object p4, p0

    :goto_2
    if-ne p4, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    :goto_4
    if-nez p4, :cond_9

    return-object v5

    :cond_9
    return-object p4
.end method
