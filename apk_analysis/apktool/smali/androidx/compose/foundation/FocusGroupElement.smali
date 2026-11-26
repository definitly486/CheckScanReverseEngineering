.class final Landroidx/compose/foundation/FocusGroupElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/FocusGroupNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/FocusGroupElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/FocusGroupElement;

    invoke-direct {v0}, Landroidx/compose/foundation/FocusGroupElement;-><init>()V

    sput-object v0, Landroidx/compose/foundation/FocusGroupElement;->INSTANCE:Landroidx/compose/foundation/FocusGroupElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/FocusGroupNode;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/FocusGroupNode;

    invoke-direct {p0}, Landroidx/compose/foundation/FocusGroupNode;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 6
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusGroupElement;->create()Landroidx/compose/foundation/FocusGroupNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const p0, -0x3f680779

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    const-string p0, "focusGroup"

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/FocusGroupNode;)V
    .locals 0

    .line 6
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/FocusGroupNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusGroupElement;->update(Landroidx/compose/foundation/FocusGroupNode;)V

    return-void
.end method
