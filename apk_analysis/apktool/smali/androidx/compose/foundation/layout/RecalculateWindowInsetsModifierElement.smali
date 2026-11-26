.class final Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierElement;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierElement;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierElement;->INSTANCE:Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;

    invoke-direct {p0}, Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 6
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierElement;->create()Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;

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

    const/4 p0, 0x0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    const-string p0, "recalculateWindowInsets"

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;)V
    .locals 0

    .line 6
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierElement;->update(Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;)V

    return-void
.end method
