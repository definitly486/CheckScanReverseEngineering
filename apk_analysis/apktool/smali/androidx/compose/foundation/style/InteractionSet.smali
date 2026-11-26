.class final Landroidx/compose/foundation/style/InteractionSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/compose/foundation/interaction/Interaction;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private setOrValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Landroidx/compose/foundation/interaction/Interaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/style/InteractionSet;->setOrValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/style/InteractionSet;->setOrValue:Ljava/lang/Object;

    return-void

    :cond_0
    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    invoke-static {v0, p1}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/style/InteractionSet;->setOrValue:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final isNotEmpty()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/InteractionSet;->setOrValue:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final remove(Landroidx/compose/foundation/interaction/Interaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/style/InteractionSet;->setOrValue:Ljava/lang/Object;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Landroidx/compose/foundation/style/InteractionSet;->setOrValue:Ljava/lang/Object;

    return-void

    :cond_0
    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->getSize()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->first()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/style/InteractionSet;->setOrValue:Ljava/lang/Object;

    return-void

    :cond_2
    iput-object v2, p0, Landroidx/compose/foundation/style/InteractionSet;->setOrValue:Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method
