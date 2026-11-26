.class final Landroidx/compose/ui/spatial/RectListDebuggerModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/spatial/RectListDebuggerModifierElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/spatial/RectListDebuggerModifierElement;

    invoke-direct {v0}, Landroidx/compose/ui/spatial/RectListDebuggerModifierElement;-><init>()V

    sput-object v0, Landroidx/compose/ui/spatial/RectListDebuggerModifierElement;->INSTANCE:Landroidx/compose/ui/spatial/RectListDebuggerModifierElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/spatial/RectListDebuggerModifierElement;->create()Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;
    .locals 0

    new-instance p0, Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;

    invoke-direct {p0}, Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;-><init>()V

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

    const/16 p0, 0x7b

    return p0
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/spatial/RectListDebuggerModifierElement;->update(Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/spatial/RectListDebuggerModifierNode;)V
    .locals 0

    .line 6
    return-void
.end method
