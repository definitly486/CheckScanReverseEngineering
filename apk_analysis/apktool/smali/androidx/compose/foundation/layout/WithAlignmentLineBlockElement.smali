.class public final Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final block:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;->block:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;

    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;->block:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;-><init>(Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;->create()Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;->block:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    iget-object p1, p1, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;->block:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final getBlock()Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;->block:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;->block:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "alignBy"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;->block:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;->block:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;->setBlock(Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;->update(Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;)V

    return-void
.end method
