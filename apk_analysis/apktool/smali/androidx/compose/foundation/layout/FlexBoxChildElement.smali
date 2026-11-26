.class public final Landroidx/compose/foundation/layout/FlexBoxChildElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/FlexBoxChildDataNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final config:Landroidx/compose/foundation/layout/FlexConfig;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/FlexConfig;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlexBoxChildElement;->config:Landroidx/compose/foundation/layout/FlexConfig;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/FlexBoxChildDataNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/FlexBoxChildDataNode;

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlexBoxChildElement;->config:Landroidx/compose/foundation/layout/FlexConfig;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/FlexBoxChildDataNode;-><init>(Landroidx/compose/foundation/layout/FlexConfig;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FlexBoxChildElement;->create()Landroidx/compose/foundation/layout/FlexBoxChildDataNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/FlexBoxChildElement;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlexBoxChildElement;->config:Landroidx/compose/foundation/layout/FlexConfig;

    check-cast p1, Landroidx/compose/foundation/layout/FlexBoxChildElement;

    iget-object p1, p1, Landroidx/compose/foundation/layout/FlexBoxChildElement;->config:Landroidx/compose/foundation/layout/FlexConfig;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getConfig()Landroidx/compose/foundation/layout/FlexConfig;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlexBoxChildElement;->config:Landroidx/compose/foundation/layout/FlexConfig;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlexBoxChildElement;->config:Landroidx/compose/foundation/layout/FlexConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "flex"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "config"

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlexBoxChildElement;->config:Landroidx/compose/foundation/layout/FlexConfig;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/FlexBoxChildDataNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlexBoxChildElement;->config:Landroidx/compose/foundation/layout/FlexConfig;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/FlexBoxChildDataNode;->setConfig(Landroidx/compose/foundation/layout/FlexConfig;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/FlexBoxChildDataNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/FlexBoxChildElement;->update(Landroidx/compose/foundation/layout/FlexBoxChildDataNode;)V

    return-void
.end method
