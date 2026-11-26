.class public final Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusOwnerImpl;-><init>(Landroidx/compose/ui/focus/PlatformFocusOwner;Landroidx/compose/ui/node/Owner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/FocusOwnerImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;->this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;->create()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;->this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getRootFocusNode$ui()Landroidx/compose/ui/focus/FocusTargetNode;

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

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;->this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getRootFocusNode$ui()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    const-string p0, "RootFocusTarget"

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;->update(Landroidx/compose/ui/focus/FocusTargetNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 0

    .line 6
    return-void
.end method
