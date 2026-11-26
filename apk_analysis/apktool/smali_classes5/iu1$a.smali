.class public final Liu1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liu1$e;


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
        "Liu1$e<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ldy6;ILjava/lang/Object;I)I
    .locals 0

    check-cast p3, Ljava/lang/Void;

    invoke-interface {p1}, Ldy6;->readUnsignedByte()I

    move-result p0

    return p0
.end method
