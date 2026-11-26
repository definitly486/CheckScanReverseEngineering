.class public final Lvs3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvs3;->e(Lio/grpc/h$g;Z)Lem1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/grpc/c$a;

.field public final synthetic b:Lem1;


# direct methods
.method public constructor <init>(Lio/grpc/c$a;Lem1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvs3$e;->a:Lio/grpc/c$a;

    iput-object p2, p0, Lvs3$e;->b:Lem1;

    return-void
.end method


# virtual methods
.method public final b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lra5<",
            "**>;",
            "Lla5;",
            "Lio/grpc/b;",
            "[",
            "Lio/grpc/c;",
            ")",
            "Lcm1;"
        }
    .end annotation

    sget-object v0, Lio/grpc/b;->h:Lio/grpc/b;

    const-string v0, "callOptions cannot be null"

    invoke-static {p3, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lio/grpc/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, v1, v1}, Lio/grpc/c$b;-><init>(Lio/grpc/b;IZZ)V

    iget-object v2, p0, Lvs3$e;->a:Lio/grpc/c$a;

    invoke-virtual {v2, v0, p2}, Lio/grpc/c$a;->a(Lio/grpc/c$b;Lla5;)Lio/grpc/c;

    move-result-object v0

    array-length v2, p4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, p4, v2

    sget-object v4, Lvs3;->o:Lvs3$a;

    if-ne v2, v4, :cond_0

    move v1, v3

    :cond_0
    const-string v2, "lb tracer already assigned"

    invoke-static {v1, v2}, Lo8;->s(ZLjava/lang/Object;)V

    array-length v1, p4

    sub-int/2addr v1, v3

    aput-object v0, p4, v1

    iget-object p0, p0, Lvs3$e;->b:Lem1;

    invoke-interface {p0, p1, p2, p3, p4}, Lem1;->b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lm94;
    .locals 0

    iget-object p0, p0, Lvs3$e;->b:Lem1;

    invoke-interface {p0}, Ll94;->c()Lm94;

    move-result-object p0

    return-object p0
.end method
