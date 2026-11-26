.class public final Lr67;
.super Lnj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr67$b;,
        Lr67$a;
    }
.end annotation


# instance fields
.field public final c:Lk00;


# direct methods
.method public constructor <init>(Lio/grpc/l;Lk00;Lch8;)V
    .locals 0

    invoke-direct {p0, p1}, Lnj3;-><init>(Lio/grpc/l;)V

    iput-object p2, p0, Lr67;->c:Lk00;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    invoke-super {p0}, Lnj3;->c()V

    iget-object p0, p0, Lr67;->c:Lk00;

    iget-object v0, p0, Lk00;->b:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    new-instance v1, Lj00;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lj00;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Lio/grpc/l$d;)V
    .locals 1

    new-instance v0, Lr67$b;

    invoke-direct {v0, p0, p1}, Lr67$b;-><init>(Lr67;Lio/grpc/l$d;)V

    invoke-super {p0, v0}, Lnj3;->d(Lio/grpc/l$d;)V

    return-void
.end method
