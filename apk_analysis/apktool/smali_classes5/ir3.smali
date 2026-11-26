.class public final Lir3;
.super Ljj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir3$b;
    }
.end annotation


# instance fields
.field public final f:Lir3$a;

.field public final g:Lio/grpc/h$e;

.field public h:Lio/grpc/h$c;

.field public i:Lio/grpc/h;

.field public j:Lio/grpc/h$c;

.field public k:Lio/grpc/h;

.field public l:Lcx1;

.field public m:Lio/grpc/h$k;

.field public n:Z


# direct methods
.method public constructor <init>(Lio/grpc/h$e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lir3$a;

    invoke-direct {v0, p0}, Lir3$a;-><init>(Lir3;)V

    iput-object v0, p0, Lir3;->f:Lir3$a;

    iput-object v0, p0, Lir3;->i:Lio/grpc/h;

    iput-object v0, p0, Lir3;->k:Lio/grpc/h;

    const-string v0, "helper"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lir3;->g:Lio/grpc/h$e;

    return-void
.end method

.method public static e(Ljava/util/List;)Lio/grpc/l$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Lio/grpc/l$b;"
        }
    .end annotation

    invoke-static {}, Lio/grpc/j;->a()Lio/grpc/j;

    move-result-object v0

    invoke-static {p0}, Lsq7;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lsq7;->c(Ljava/util/List;Lio/grpc/j;)Lio/grpc/l$b;

    move-result-object p0

    iget-object v0, p0, Lio/grpc/l$b;->a:Lh88;

    if-eqz v0, :cond_1

    sget-object p0, Lh88;->m:Lh88;

    iget-object v1, v0, Lh88;->c:Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    iget-object v0, v0, Lh88;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    const-string v0, "Failed to select child config"

    invoke-virtual {p0, v0}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p0

    new-instance v0, Lio/grpc/l$b;

    invoke-direct {v0, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    return-object v0

    :cond_1
    iget-object p0, p0, Lio/grpc/l$b;->b:Ljava/lang/Object;

    check-cast p0, Lsq7$b;

    iget-object v0, p0, Lsq7$b;->a:Lio/grpc/i;

    iget-object p0, p0, Lsq7$b;->b:Ljava/lang/Object;

    new-instance v1, Lir3$b;

    invoke-direct {v1, v0, p0}, Lir3$b;-><init>(Lio/grpc/i;Ljava/lang/Object;)V

    new-instance p0, Lio/grpc/l$b;

    invoke-direct {p0, v1}, Lio/grpc/l$b;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lh88;->m:Lh88;

    const-string v0, "No child LB config specified"

    invoke-virtual {p0, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    new-instance v0, Lio/grpc/l$b;

    invoke-direct {v0, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lio/grpc/h$i;)Lh88;
    .locals 5

    iget-object v0, p1, Lio/grpc/h$i;->c:Ljava/lang/Object;

    check-cast v0, Lir3$b;

    iget-object v1, v0, Lir3$b;->a:Lio/grpc/h$c;

    iget-object v2, p0, Lir3;->j:Lio/grpc/h$c;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lir3;->f:Lir3$a;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lir3;->k:Lio/grpc/h;

    invoke-virtual {v2}, Lio/grpc/h;->d()V

    iput-object v3, p0, Lir3;->k:Lio/grpc/h;

    const/4 v2, 0x0

    iput-object v2, p0, Lir3;->j:Lio/grpc/h$c;

    sget-object v2, Lcx1;->CONNECTING:Lcx1;

    iput-object v2, p0, Lir3;->l:Lcx1;

    new-instance v2, Lio/grpc/h$d;

    sget-object v4, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-direct {v2, v4}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    iput-object v2, p0, Lir3;->m:Lio/grpc/h$k;

    iget-object v2, p0, Lir3;->h:Lio/grpc/h$c;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljr3;

    invoke-direct {v2, p0}, Ljr3;-><init>(Lir3;)V

    invoke-virtual {v1, v2}, Lio/grpc/h$c;->a(Lio/grpc/h$e;)Lio/grpc/h;

    move-result-object v4

    iput-object v4, v2, Ljr3;->a:Lio/grpc/h;

    iput-object v4, p0, Lir3;->k:Lio/grpc/h;

    iput-object v1, p0, Lir3;->j:Lio/grpc/h$c;

    iget-boolean v1, p0, Lir3;->n:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lir3;->f()V

    :cond_2
    :goto_0
    iget-object v1, p0, Lir3;->k:Lio/grpc/h;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lir3;->i:Lio/grpc/h;

    :cond_3
    invoke-virtual {p1}, Lio/grpc/h$i;->a()Lio/grpc/h$i$a;

    move-result-object p0

    iget-object p1, v0, Lir3$b;->b:Ljava/lang/Object;

    iput-object p1, p0, Lio/grpc/h$i$a;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lio/grpc/h$i$a;->a()Lio/grpc/h$i;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/grpc/h;->a(Lio/grpc/h$i;)Lh88;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lir3;->k:Lio/grpc/h;

    invoke-virtual {v0}, Lio/grpc/h;->d()V

    iget-object p0, p0, Lir3;->i:Lio/grpc/h;

    invoke-virtual {p0}, Lio/grpc/h;->d()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lir3;->l:Lcx1;

    iget-object v1, p0, Lir3;->m:Lio/grpc/h$k;

    iget-object v2, p0, Lir3;->g:Lio/grpc/h$e;

    invoke-virtual {v2, v0, v1}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    iget-object v0, p0, Lir3;->i:Lio/grpc/h;

    invoke-virtual {v0}, Lio/grpc/h;->d()V

    iget-object v0, p0, Lir3;->k:Lio/grpc/h;

    iput-object v0, p0, Lir3;->i:Lio/grpc/h;

    iget-object v0, p0, Lir3;->j:Lio/grpc/h$c;

    iput-object v0, p0, Lir3;->h:Lio/grpc/h$c;

    iget-object v0, p0, Lir3;->f:Lir3$a;

    iput-object v0, p0, Lir3;->k:Lio/grpc/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lir3;->j:Lio/grpc/h$c;

    return-void
.end method
