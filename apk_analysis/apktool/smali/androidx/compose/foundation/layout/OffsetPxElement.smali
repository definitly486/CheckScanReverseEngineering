.class final Landroidx/compose/foundation/layout/OffsetPxElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/OffsetPxNode;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final offset:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final rtlAware:Z


# direct methods
.method public constructor <init>(Lnl3;ZLnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;Z",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->offset:Lnl3;

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->rtlAware:Z

    iput-object p3, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->inspectorInfo:Lnl3;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/OffsetPxNode;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/OffsetPxNode;

    iget-object v1, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->offset:Lnl3;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->rtlAware:Z

    invoke-direct {v0, v1, p0}, Landroidx/compose/foundation/layout/OffsetPxNode;-><init>(Lnl3;Z)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/OffsetPxElement;->create()Landroidx/compose/foundation/layout/OffsetPxNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/OffsetPxElement;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/OffsetPxElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->offset:Lnl3;

    iget-object v3, p1, Landroidx/compose/foundation/layout/OffsetPxElement;->offset:Lnl3;

    if-ne v2, v3, :cond_3

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->rtlAware:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/OffsetPxElement;->rtlAware:Z

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
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

    iget-object p0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->inspectorInfo:Lnl3;

    return-object p0
.end method

.method public final getOffset()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->offset:Lnl3;

    return-object p0
.end method

.method public final getRtlAware()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->rtlAware:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->offset:Lnl3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->rtlAware:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->inspectorInfo:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OffsetPxModifier(offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->offset:Lnl3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rtlAware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->rtlAware:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroidx/compose/foundation/layout/OffsetPxNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->offset:Lnl3;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/OffsetPxElement;->rtlAware:Z

    invoke-virtual {p1, v0, p0}, Landroidx/compose/foundation/layout/OffsetPxNode;->update(Lnl3;Z)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 8
    check-cast p1, Landroidx/compose/foundation/layout/OffsetPxNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/OffsetPxElement;->update(Landroidx/compose/foundation/layout/OffsetPxNode;)V

    return-void
.end method
