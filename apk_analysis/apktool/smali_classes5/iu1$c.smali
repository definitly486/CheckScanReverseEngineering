.class public final Liu1$c;
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
        "[B>;"
    }
.end annotation


# virtual methods
.method public final a(Ldy6;ILjava/lang/Object;I)I
    .locals 0

    check-cast p3, [B

    invoke-interface {p1, p3, p4, p2}, Ldy6;->G([BII)V

    add-int/2addr p4, p2

    return p4
.end method
