.class public final Lp94$c;
.super Ldj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lmw1;

.field public final b:Lpy0;


# direct methods
.method public constructor <init>(Lmw1;Lpy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp94$c;->a:Lmw1;

    iput-object p2, p0, Lp94$c;->b:Lpy0;

    return-void
.end method


# virtual methods
.method public final a()Lmw1;
    .locals 0

    iget-object p0, p0, Lp94$c;->a:Lmw1;

    return-object p0
.end method

.method public final b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;
    .locals 1
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

    iget-object v0, p0, Lp94$c;->a:Lmw1;

    invoke-interface {v0, p1, p2, p3, p4}, Lem1;->b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;

    move-result-object p1

    new-instance p2, Lp94$c$a;

    invoke-direct {p2, p0, p1}, Lp94$c$a;-><init>(Lp94$c;Lcm1;)V

    return-object p2
.end method
