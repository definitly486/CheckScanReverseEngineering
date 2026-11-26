.class final Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field final synthetic $$this$launch:Ly22;

.field final synthetic this$0:Landroidx/compose/material/ripple/RippleNode;


# direct methods
.method public constructor <init>(Landroidx/compose/material/ripple/RippleNode;Ly22;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Landroidx/compose/material/ripple/RippleNode;

    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ly22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Landroidx/compose/foundation/interaction/Interaction;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction;

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Landroidx/compose/material/ripple/RippleNode;

    if-eqz p2, :cond_1

    invoke-static {v0}, Landroidx/compose/material/ripple/RippleNode;->access$getHasValidSize$p(Landroidx/compose/material/ripple/RippleNode;)Z

    move-result p2

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Landroidx/compose/material/ripple/RippleNode;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction;

    invoke-static {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->access$handlePressInteraction(Landroidx/compose/material/ripple/RippleNode;Landroidx/compose/foundation/interaction/PressInteraction;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/material/ripple/RippleNode;->access$getPendingInteractions$p(Landroidx/compose/material/ripple/RippleNode;)Landroidx/collection/MutableObjectList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ly22;

    invoke-static {v0, p1, p0}, Landroidx/compose/material/ripple/RippleNode;->access$updateStateLayer(Landroidx/compose/material/ripple/RippleNode;Landroidx/compose/foundation/interaction/Interaction;Ly22;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->emit(Landroidx/compose/foundation/interaction/Interaction;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
