.class public interface abstract Landroidx/compose/ui/focus/FocusTargetModifierNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/DelegatableNode;


# direct methods
.method public static synthetic requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusTargetModifierNode;IILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result p1

    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->requestFocus-3ESFkO8(I)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: requestFocus-3ESFkO8"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract getFocusState()Landroidx/compose/ui/focus/FocusState;
.end method

.method public abstract getFocusability-LCbbffg()I
.end method

.method public abstract synthetic requestFocus()Z
    .annotation runtime Lul2;
    .end annotation
.end method

.method public abstract requestFocus-3ESFkO8(I)Z
.end method

.method public abstract setFocusability-josRg5g(I)V
.end method
