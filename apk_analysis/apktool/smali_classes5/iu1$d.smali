.class public final Liu1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liu1$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liu1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Liu1$f<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ldy6;ILjava/lang/Object;I)I
    .locals 0

    check-cast p3, Ljava/io/OutputStream;

    invoke-interface {p1, p3, p2}, Ldy6;->s0(Ljava/io/OutputStream;I)V

    const/4 p0, 0x0

    return p0
.end method
