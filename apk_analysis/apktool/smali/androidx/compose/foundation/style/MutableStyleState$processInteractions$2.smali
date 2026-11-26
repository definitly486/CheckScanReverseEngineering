.class final Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/style/MutableStyleState;->processInteractions$foundation(Landroidx/compose/foundation/interaction/InteractionSource;Le02;)Ljava/lang/Object;
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
.field final synthetic $focusedInteractions:Landroidx/compose/foundation/style/InteractionSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/style/InteractionSet<",
            "Landroidx/compose/foundation/interaction/FocusInteraction$Focus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hoveredInteractions:Landroidx/compose/foundation/style/InteractionSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/style/InteractionSet<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pressedInteractions:Landroidx/compose/foundation/style/InteractionSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/style/InteractionSet<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/foundation/style/MutableStyleState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/style/InteractionSet;Landroidx/compose/foundation/style/MutableStyleState;Landroidx/compose/foundation/style/InteractionSet;Landroidx/compose/foundation/style/InteractionSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/style/InteractionSet<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;",
            "Landroidx/compose/foundation/style/MutableStyleState;",
            "Landroidx/compose/foundation/style/InteractionSet<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;",
            "Landroidx/compose/foundation/style/InteractionSet<",
            "Landroidx/compose/foundation/interaction/FocusInteraction$Focus;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$pressedInteractions:Landroidx/compose/foundation/style/InteractionSet;

    iput-object p2, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->this$0:Landroidx/compose/foundation/style/MutableStyleState;

    iput-object p3, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$hoveredInteractions:Landroidx/compose/foundation/style/InteractionSet;

    iput-object p4, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$focusedInteractions:Landroidx/compose/foundation/style/InteractionSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Landroidx/compose/foundation/interaction/Interaction;Le02;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;

    iget v1, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;-><init>(Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/style/MutableStyleState;

    iget-object v2, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/interaction/Interaction;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto/16 :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$pressedInteractions:Landroidx/compose/foundation/style/InteractionSet;

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/style/InteractionSet;->add(Landroidx/compose/foundation/interaction/Interaction;)V

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->this$0:Landroidx/compose/foundation/style/MutableStyleState;

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/style/MutableStyleState;->setPressed(Z)V

    goto/16 :goto_2

    :cond_3
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$pressedInteractions:Landroidx/compose/foundation/style/InteractionSet;

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Release;->getPress()Landroidx/compose/foundation/interaction/PressInteraction$Press;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/style/InteractionSet;->remove(Landroidx/compose/foundation/interaction/Interaction;)V

    iget-object p1, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->this$0:Landroidx/compose/foundation/style/MutableStyleState;

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$pressedInteractions:Landroidx/compose/foundation/style/InteractionSet;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/InteractionSet;->isNotEmpty()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/style/MutableStyleState;->setPressed(Z)V

    goto/16 :goto_2

    :cond_4
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$pressedInteractions:Landroidx/compose/foundation/style/InteractionSet;

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->getPress()Landroidx/compose/foundation/interaction/PressInteraction$Press;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/style/InteractionSet;->remove(Landroidx/compose/foundation/interaction/Interaction;)V

    iget-object p1, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->this$0:Landroidx/compose/foundation/style/MutableStyleState;

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$pressedInteractions:Landroidx/compose/foundation/style/InteractionSet;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/InteractionSet;->isNotEmpty()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/style/MutableStyleState;->setPressed(Z)V

    goto/16 :goto_2

    :cond_5
    instance-of p2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$hoveredInteractions:Landroidx/compose/foundation/style/InteractionSet;

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/style/InteractionSet;->add(Landroidx/compose/foundation/interaction/Interaction;)V

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->this$0:Landroidx/compose/foundation/style/MutableStyleState;

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/style/MutableStyleState;->setHovered(Z)V

    goto/16 :goto_2

    :cond_6
    instance-of p2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$hoveredInteractions:Landroidx/compose/foundation/style/InteractionSet;

    check-cast p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->getEnter()Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/style/InteractionSet;->remove(Landroidx/compose/foundation/interaction/Interaction;)V

    iget-object p1, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->this$0:Landroidx/compose/foundation/style/MutableStyleState;

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$hoveredInteractions:Landroidx/compose/foundation/style/InteractionSet;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/InteractionSet;->isNotEmpty()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/style/MutableStyleState;->setHovered(Z)V

    goto :goto_2

    :cond_7
    instance-of p2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz p2, :cond_8

    iget-object p2, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$focusedInteractions:Landroidx/compose/foundation/style/InteractionSet;

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/style/InteractionSet;->add(Landroidx/compose/foundation/interaction/Interaction;)V

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->this$0:Landroidx/compose/foundation/style/MutableStyleState;

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/style/MutableStyleState;->setFocused(Z)V

    goto :goto_2

    :cond_8
    instance-of p2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    if-eqz p2, :cond_9

    iget-object p2, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$focusedInteractions:Landroidx/compose/foundation/style/InteractionSet;

    check-cast p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->getFocus()Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/style/InteractionSet;->remove(Landroidx/compose/foundation/interaction/Interaction;)V

    iget-object p1, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->this$0:Landroidx/compose/foundation/style/MutableStyleState;

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->$focusedInteractions:Landroidx/compose/foundation/style/InteractionSet;

    invoke-virtual {p0}, Landroidx/compose/foundation/style/InteractionSet;->isNotEmpty()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/style/MutableStyleState;->setFocused(Z)V

    goto :goto_2

    :cond_9
    iget-object p2, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->this$0:Landroidx/compose/foundation/style/MutableStyleState;

    invoke-virtual {p2}, Landroidx/compose/foundation/style/MutableStyleState;->getCustomStates$foundation()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object p2

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->this$0:Landroidx/compose/foundation/style/MutableStyleState;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :cond_a
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/style/StyleStateKey;

    iput-object p1, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2$emit$1;->label:I

    invoke-virtual {v2, p1, p2, v0}, Landroidx/compose/foundation/style/StyleStateKey;->processInteractionAccess$foundation(Landroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/style/MutableStyleState;Le02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_b
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    .line 276
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;->emit(Landroidx/compose/foundation/interaction/Interaction;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
