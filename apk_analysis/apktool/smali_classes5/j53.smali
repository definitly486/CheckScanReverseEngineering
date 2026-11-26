.class public final Lj53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem1;


# instance fields
.field public final a:Lh88;

.field public final b:Ldm1$a;


# direct methods
.method public constructor <init>(Lh88;Ldm1$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    iput-object p1, p0, Lj53;->a:Lh88;

    iput-object p2, p0, Lj53;->b:Ldm1$a;

    return-void
.end method


# virtual methods
.method public final b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;
    .locals 0
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

    new-instance p1, Li53;

    iget-object p2, p0, Lj53;->a:Lh88;

    iget-object p0, p0, Lj53;->b:Ldm1$a;

    invoke-direct {p1, p2, p0, p4}, Li53;-><init>(Lh88;Ldm1$a;[Lio/grpc/c;)V

    return-object p1
.end method

.method public final c()Lm94;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not a real transport"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
