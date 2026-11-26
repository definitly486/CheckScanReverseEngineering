.class public final Lp94$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# virtual methods
.method public final a()Lio/grpc/a;
    .locals 1

    iget-object v0, p0, Lp94$e;->a:Ljava/util/List;

    iget p0, p0, Lp94$e;->b:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/d;

    iget-object p0, p0, Lio/grpc/d;->b:Lio/grpc/a;

    return-object p0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp94$e;->b:I

    iput v0, p0, Lp94$e;->c:I

    return-void
.end method
