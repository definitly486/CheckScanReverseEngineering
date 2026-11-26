.class public final Lio/grpc/h$i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/h$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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

.field public b:Lio/grpc/a;

.field public c:Ljava/lang/Object;


# virtual methods
.method public final a()Lio/grpc/h$i;
    .locals 3

    new-instance v0, Lio/grpc/h$i;

    iget-object v1, p0, Lio/grpc/h$i$a;->a:Ljava/util/List;

    iget-object v2, p0, Lio/grpc/h$i$a;->b:Lio/grpc/a;

    iget-object p0, p0, Lio/grpc/h$i$a;->c:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lio/grpc/h$i;-><init>(Ljava/util/List;Lio/grpc/a;Ljava/lang/Object;)V

    return-object v0
.end method
