.class final Landroidx/compose/ui/KeepScreenOnElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/KeepScreenOnNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/KeepScreenOnElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/KeepScreenOnElement;

    invoke-direct {v0}, Landroidx/compose/ui/KeepScreenOnElement;-><init>()V

    sput-object v0, Landroidx/compose/ui/KeepScreenOnElement;->INSTANCE:Landroidx/compose/ui/KeepScreenOnElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/ui/KeepScreenOnNode;
    .locals 0

    new-instance p0, Landroidx/compose/ui/KeepScreenOnNode;

    invoke-direct {p0}, Landroidx/compose/ui/KeepScreenOnNode;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/KeepScreenOnElement;->create()Landroidx/compose/ui/KeepScreenOnNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Landroidx/compose/ui/KeepScreenOnElement;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 0

    const p0, -0x502f12d

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    const-string p0, "keepScreenOn"

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "KeepScreenOnElement"

    return-object p0
.end method

.method public update(Landroidx/compose/ui/KeepScreenOnNode;)V
    .locals 0

    .line 6
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/ui/KeepScreenOnNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/KeepScreenOnElement;->update(Landroidx/compose/ui/KeepScreenOnNode;)V

    return-void
.end method
