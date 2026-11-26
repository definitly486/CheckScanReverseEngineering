.class public abstract Lfx0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfx0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Lfx0$f;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
