.class public final Le86;
.super Lio/grpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le86$c;,
        Le86$d;
    }
.end annotation


# instance fields
.field public final f:Lio/grpc/h$e;

.field public g:Lio/grpc/h$j;

.field public h:Lcx1;


# direct methods
.method public constructor <init>(Lio/grpc/h$e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcx1;->IDLE:Lcx1;

    iput-object v0, p0, Le86;->h:Lcx1;

    const-string v0, "helper"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Le86;->f:Lio/grpc/h$e;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$i;)Lh88;
    .locals 4

    iget-object v0, p1, Lio/grpc/h$i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lh88;->m:Lh88;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", attrs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/grpc/h$i;->b:Lio/grpc/a;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    invoke-virtual {p0, p1}, Le86;->b(Lh88;)V

    return-object p1

    :cond_0
    iget-object p1, p1, Lio/grpc/h$i;->c:Ljava/lang/Object;

    instance-of v1, p1, Le86$c;

    if-eqz v1, :cond_1

    check-cast p1, Le86$c;

    iget-object p1, p1, Le86$c;->a:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-static {v0, p1}, Ld86;->g(Ljava/util/List;Ljava/util/Random;)Ljava/util/AbstractList;

    move-result-object v0

    :cond_1
    iget-object p1, p0, Le86;->g:Lio/grpc/h$j;

    if-nez p1, :cond_2

    new-instance p1, Lio/grpc/h$b$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lio/grpc/a;->b:Lio/grpc/a;

    iput-object v1, p1, Lio/grpc/h$b$a;->b:Lio/grpc/a;

    sget-object v1, Lio/grpc/h$b$a;->d:[[Ljava/lang/Object;

    iput-object v1, p1, Lio/grpc/h$b$a;->c:[[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/grpc/h$b$a;->b(Ljava/util/List;)V

    new-instance v0, Lio/grpc/h$b;

    iget-object v1, p1, Lio/grpc/h$b$a;->a:Ljava/util/List;

    iget-object v2, p1, Lio/grpc/h$b$a;->b:Lio/grpc/a;

    iget-object p1, p1, Lio/grpc/h$b$a;->c:[[Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lio/grpc/h$b;-><init>(Ljava/util/List;Lio/grpc/a;[[Ljava/lang/Object;)V

    iget-object p1, p0, Le86;->f:Lio/grpc/h$e;

    invoke-virtual {p1, v0}, Lio/grpc/h$e;->a(Lio/grpc/h$b;)Lio/grpc/h$j;

    move-result-object v0

    new-instance v1, Le86$a;

    invoke-direct {v1, p0, v0}, Le86$a;-><init>(Le86;Lio/grpc/h$j;)V

    invoke-virtual {v0, v1}, Lio/grpc/h$j;->h(Lio/grpc/h$l;)V

    iput-object v0, p0, Le86;->g:Lio/grpc/h$j;

    sget-object v1, Lcx1;->CONNECTING:Lcx1;

    new-instance v2, Lio/grpc/h$d;

    sget-object v3, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-direct {v2, v3}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    iput-object v1, p0, Le86;->h:Lcx1;

    invoke-virtual {p1, v1, v2}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    invoke-virtual {v0}, Lio/grpc/h$j;->f()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lio/grpc/h$j;->i(Ljava/util/List;)V

    :goto_0
    sget-object p0, Lh88;->e:Lh88;

    return-object p0
.end method

.method public final b(Lh88;)V
    .locals 2

    iget-object v0, p0, Le86;->g:Lio/grpc/h$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/h$j;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Le86;->g:Lio/grpc/h$j;

    :cond_0
    sget-object v0, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    new-instance v1, Lio/grpc/h$d;

    invoke-static {p1}, Lio/grpc/h$g;->a(Lh88;)Lio/grpc/h$g;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    iput-object v0, p0, Le86;->h:Lcx1;

    iget-object p0, p0, Le86;->f:Lio/grpc/h$e;

    invoke-virtual {p0, v0, v1}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Le86;->g:Lio/grpc/h$j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/grpc/h$j;->f()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Le86;->g:Lio/grpc/h$j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/grpc/h$j;->g()V

    :cond_0
    return-void
.end method
