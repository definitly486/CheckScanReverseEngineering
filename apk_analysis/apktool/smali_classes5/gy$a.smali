.class public final Lgy$a;
.super Lio/grpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final f:Lio/grpc/h$e;

.field public g:Lio/grpc/h;

.field public h:Lio/grpc/i;

.field public final synthetic i:Lgy;


# direct methods
.method public constructor <init>(Lgy;Lio/grpc/h$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgy$a;->i:Lgy;

    iput-object p2, p0, Lgy$a;->f:Lio/grpc/h$e;

    iget-object p1, p1, Lgy;->c:Lio/grpc/i;

    iput-object p1, p0, Lgy$a;->h:Lio/grpc/i;

    invoke-virtual {p1, p2}, Lio/grpc/h$c;->a(Lio/grpc/h$e;)Lio/grpc/h;

    move-result-object p1

    iput-object p1, p0, Lgy$a;->g:Lio/grpc/h;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$i;)Lh88;
    .locals 6

    iget-object v0, p1, Lio/grpc/h$i;->c:Ljava/lang/Object;

    check-cast v0, Lsq7$b;

    if-nez v0, :cond_0

    new-instance v0, Lsq7$b;

    iget-object v1, p0, Lgy$a;->i:Lgy;

    iget-object v1, v1, Lgy;->c:Lio/grpc/i;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsq7$b;-><init>(Lio/grpc/i;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lsq7$b;->b:Ljava/lang/Object;

    iget-object v0, v0, Lsq7$b;->a:Lio/grpc/i;

    iget-object v2, p0, Lgy$a;->h:Lio/grpc/i;

    iget-object v3, p0, Lgy$a;->f:Lio/grpc/h$e;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lio/grpc/i;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lgy$a;->h:Lio/grpc/i;

    invoke-virtual {v4}, Lio/grpc/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lcx1;->CONNECTING:Lcx1;

    new-instance v4, Lio/grpc/h$d;

    sget-object v5, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-direct {v4, v5}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {v3, v2, v4}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    iget-object v2, p0, Lgy$a;->g:Lio/grpc/h;

    invoke-virtual {v2}, Lio/grpc/h;->d()V

    iput-object v0, p0, Lgy$a;->h:Lio/grpc/i;

    iget-object v2, p0, Lgy$a;->g:Lio/grpc/h;

    invoke-virtual {v0, v3}, Lio/grpc/h$c;->a(Lio/grpc/h$e;)Lio/grpc/h;

    move-result-object v0

    iput-object v0, p0, Lgy$a;->g:Lio/grpc/h;

    invoke-virtual {v3}, Lio/grpc/h$e;->b()Ln91;

    move-result-object v0

    sget-object v4, Ln91$a;->INFO:Ln91$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lgy$a;->g:Lio/grpc/h;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Load balancer changed from {0} to {1}"

    invoke-virtual {v0, v4, v5, v2}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lio/grpc/h$e;->b()Ln91;

    move-result-object v0

    sget-object v2, Ln91$a;->DEBUG:Ln91$a;

    const-string v3, "Load-balancing config: {0}"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lgy$a;->g:Lio/grpc/h;

    sget-object v0, Lio/grpc/a;->b:Lio/grpc/a;

    iget-object v0, p1, Lio/grpc/h$i;->a:Ljava/util/List;

    iget-object p1, p1, Lio/grpc/h$i;->b:Lio/grpc/a;

    new-instance v2, Lio/grpc/h$i;

    invoke-direct {v2, v0, p1, v1}, Lio/grpc/h$i;-><init>(Ljava/util/List;Lio/grpc/a;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lio/grpc/h;->a(Lio/grpc/h$i;)Lh88;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lh88;)V
    .locals 0

    iget-object p0, p0, Lgy$a;->g:Lio/grpc/h;

    invoke-virtual {p0, p1}, Lio/grpc/h;->b(Lh88;)V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lgy$a;->g:Lio/grpc/h;

    invoke-virtual {p0}, Lio/grpc/h;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lgy$a;->g:Lio/grpc/h;

    invoke-virtual {v0}, Lio/grpc/h;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgy$a;->g:Lio/grpc/h;

    return-void
.end method
