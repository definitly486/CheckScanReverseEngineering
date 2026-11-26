.class final Landroidx/compose/ui/input/key/KeyInputElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/input/key/KeyInputNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final onKeyEvent:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onPreKeyEvent:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onKeyEvent:Lnl3;

    iput-object p2, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onPreKeyEvent:Lnl3;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/input/key/KeyInputElement;->create()Landroidx/compose/ui/input/key/KeyInputNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/input/key/KeyInputNode;
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/key/KeyInputNode;

    iget-object v1, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onKeyEvent:Lnl3;

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onPreKeyEvent:Lnl3;

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/input/key/KeyInputNode;-><init>(Lnl3;Lnl3;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/input/key/KeyInputElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onKeyEvent:Lnl3;

    check-cast p1, Landroidx/compose/ui/input/key/KeyInputElement;

    iget-object v3, p1, Landroidx/compose/ui/input/key/KeyInputElement;->onKeyEvent:Lnl3;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onPreKeyEvent:Lnl3;

    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyInputElement;->onPreKeyEvent:Lnl3;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getOnKeyEvent()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onKeyEvent:Lnl3;

    return-object p0
.end method

.method public final getOnPreKeyEvent()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onPreKeyEvent:Lnl3;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onKeyEvent:Lnl3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onPreKeyEvent:Lnl3;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onKeyEvent:Lnl3;

    if-eqz v0, :cond_0

    const-string v1, "onKeyEvent"

    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onPreKeyEvent:Lnl3;

    if-eqz p0, :cond_1

    const-string v0, "onPreviewKeyEvent"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 11
    check-cast p1, Landroidx/compose/ui/input/key/KeyInputNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/key/KeyInputElement;->update(Landroidx/compose/ui/input/key/KeyInputNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/input/key/KeyInputNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onKeyEvent:Lnl3;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/input/key/KeyInputNode;->setOnEvent(Lnl3;)V

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyInputElement;->onPreKeyEvent:Lnl3;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/input/key/KeyInputNode;->setOnPreEvent(Lnl3;)V

    return-void
.end method
