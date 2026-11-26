.class final Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/VeilModifierNode;->draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroidx/compose/animation/EnterExitState;",
        "Landroidx/compose/ui/graphics/Color;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/animation/VeilModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/VeilModifierNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;->this$0:Landroidx/compose/animation/VeilModifierNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/animation/EnterExitState;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;->invoke-vNxB06k(Landroidx/compose/animation/EnterExitState;)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-vNxB06k(Landroidx/compose/animation/EnterExitState;)J
    .locals 1

    sget-object v0, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;->this$0:Landroidx/compose/animation/VeilModifierNode;

    invoke-virtual {p0}, Landroidx/compose/animation/VeilModifierNode;->getExit()Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/ExitTransition;->getData$animation()Landroidx/compose/animation/TransitionData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/TransitionData;->getVeil()Landroidx/compose/animation/Veil;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/Veil;->getTargetColor-0d7_KjU()J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_2
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;->this$0:Landroidx/compose/animation/VeilModifierNode;

    invoke-virtual {p0}, Landroidx/compose/animation/VeilModifierNode;->getEnter()Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/EnterTransition;->getData$animation()Landroidx/compose/animation/TransitionData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/TransitionData;->getVeil()Landroidx/compose/animation/Veil;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/animation/Veil;->getInitialColor-0d7_KjU()J

    move-result-wide p0

    return-wide p0

    :cond_3
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide p0

    return-wide p0

    :cond_4
    iget-object p1, p0, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;->this$0:Landroidx/compose/animation/VeilModifierNode;

    invoke-virtual {p1}, Landroidx/compose/animation/VeilModifierNode;->getEnter()Landroidx/compose/animation/EnterTransition;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/EnterTransition;->getData$animation()Landroidx/compose/animation/TransitionData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/TransitionData;->getVeil()Landroidx/compose/animation/Veil;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/compose/animation/Veil;->getTargetColor-0d7_KjU()J

    move-result-wide p0

    return-wide p0

    :cond_5
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;->this$0:Landroidx/compose/animation/VeilModifierNode;

    invoke-virtual {p0}, Landroidx/compose/animation/VeilModifierNode;->getExit()Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/ExitTransition;->getData$animation()Landroidx/compose/animation/TransitionData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/TransitionData;->getVeil()Landroidx/compose/animation/Veil;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroidx/compose/animation/Veil;->getInitialColor-0d7_KjU()J

    move-result-wide p0

    return-wide p0

    :cond_6
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide p0

    return-wide p0
.end method
