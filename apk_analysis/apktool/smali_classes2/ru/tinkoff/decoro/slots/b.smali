.class public final Lru/tinkoff/decoro/slots/b;
.super Ljava/util/HashSet;
.source "SourceFile"

# interfaces
.implements Lru/tinkoff/decoro/slots/Slot$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lru/tinkoff/decoro/slots/Slot$b;",
        ">;",
        "Lru/tinkoff/decoro/slots/Slot$b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final l(C)Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/tinkoff/decoro/slots/Slot$b;

    invoke-interface {v0, p1}, Lru/tinkoff/decoro/slots/Slot$b;->l(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
