.class public final Llz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/grpc/ManagedChannelProvider;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/ManagedChannelProvider;

    check-cast p2, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->b()I

    move-result p0

    invoke-virtual {p2}, Lio/grpc/ManagedChannelProvider;->b()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
