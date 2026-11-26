.class public final Landroidx/compose/ui/draw/BlockDropShadowElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/draw/BlockDropShadowNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final block:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/draw/DropShadowScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Shape;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/draw/DropShadowScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p2, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->block:Lnl3;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/draw/BlockDropShadowElement;->create()Landroidx/compose/ui/draw/BlockDropShadowNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/draw/BlockDropShadowNode;
    .locals 2

    new-instance v0, Landroidx/compose/ui/draw/BlockDropShadowNode;

    iget-object v1, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object p0, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->block:Lnl3;

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/draw/BlockDropShadowNode;-><init>(Landroidx/compose/ui/graphics/Shape;Lnl3;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/draw/BlockDropShadowElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->shape:Landroidx/compose/ui/graphics/Shape;

    check-cast p1, Landroidx/compose/ui/draw/BlockDropShadowElement;

    iget-object v3, p1, Landroidx/compose/ui/draw/BlockDropShadowElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->block:Lnl3;

    iget-object p1, p1, Landroidx/compose/ui/draw/BlockDropShadowElement;->block:Lnl3;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBlock()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/draw/DropShadowScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->block:Lnl3;

    return-object p0
.end method

.method public final getShape()Landroidx/compose/ui/graphics/Shape;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->block:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "dropShadow"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "shape"

    iget-object v2, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "block"

    iget-object p0, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->block:Lnl3;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 8
    check-cast p1, Landroidx/compose/ui/draw/BlockDropShadowNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/draw/BlockDropShadowElement;->update(Landroidx/compose/ui/draw/BlockDropShadowNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/draw/BlockDropShadowNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object p0, p0, Landroidx/compose/ui/draw/BlockDropShadowElement;->block:Lnl3;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/draw/BlockDropShadowNode;->update(Landroidx/compose/ui/graphics/Shape;Lnl3;)V

    return-void
.end method
