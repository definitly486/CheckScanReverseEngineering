.class final Landroidx/compose/foundation/layout/IntrinsicHeightElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/IntrinsicHeightNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final enforceIncoming:Z

.field private final height:Landroidx/compose/foundation/layout/IntrinsicSize;

.field private final inspectorInfo:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/IntrinsicSize;ZLnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/IntrinsicSize;",
            "Z",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->enforceIncoming:Z

    iput-object p3, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->inspectorInfo:Lnl3;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/IntrinsicHeightNode;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicHeightNode;

    iget-object v1, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->enforceIncoming:Z

    invoke-direct {v0, v1, p0}, Landroidx/compose/foundation/layout/IntrinsicHeightNode;-><init>(Landroidx/compose/foundation/layout/IntrinsicSize;Z)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->create()Landroidx/compose/foundation/layout/IntrinsicHeightNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/IntrinsicHeightElement;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/IntrinsicHeightElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    iget-object v3, p1, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    if-ne v2, v3, :cond_3

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->enforceIncoming:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->enforceIncoming:Z

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final getEnforceIncoming()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->enforceIncoming:Z

    return p0
.end method

.method public final getHeight()Landroidx/compose/foundation/layout/IntrinsicSize;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    return-object p0
.end method

.method public final getInspectorInfo()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->inspectorInfo:Lnl3;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->enforceIncoming:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->inspectorInfo:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/IntrinsicHeightNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/IntrinsicHeightNode;->setHeight(Landroidx/compose/foundation/layout/IntrinsicSize;)V

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->enforceIncoming:Z

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/IntrinsicHeightNode;->setEnforceIncoming(Z)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 11
    check-cast p1, Landroidx/compose/foundation/layout/IntrinsicHeightNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->update(Landroidx/compose/foundation/layout/IntrinsicHeightNode;)V

    return-void
.end method
