.class public final Lru/tinkoff/decoro/SlotsList$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/tinkoff/decoro/SlotsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lru/tinkoff/decoro/slots/Slot;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lru/tinkoff/decoro/slots/Slot;


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lru/tinkoff/decoro/SlotsList$b;->b:Lru/tinkoff/decoro/slots/Slot;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lru/tinkoff/decoro/SlotsList$b;->b:Lru/tinkoff/decoro/slots/Slot;

    iget-object v1, v0, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    iput-object v1, p0, Lru/tinkoff/decoro/SlotsList$b;->b:Lru/tinkoff/decoro/slots/Slot;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Mask cannot be modified from outside!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
