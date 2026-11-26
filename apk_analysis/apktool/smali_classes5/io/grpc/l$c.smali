.class public abstract Lio/grpc/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# virtual methods
.method public a(La99;Lio/grpc/l$a;)Lio/grpc/l;
    .locals 0

    invoke-virtual {p1}, La99;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/grpc/l$c;->b(Ljava/net/URI;Lio/grpc/l$a;)Lio/grpc/l;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Ljava/net/URI;Lio/grpc/l$a;)Lio/grpc/l;
.end method
