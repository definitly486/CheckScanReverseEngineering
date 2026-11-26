.class public final Landroidx/compose/material3/WideNavigationRailStateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/WideNavigationRailState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/WideNavigationRailStateImpl$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field private static final Collapsed:F = 0.0f

.field public static final Companion:Landroidx/compose/material3/WideNavigationRailStateImpl$Companion;

.field private static final Expanded:F = 1.0f


# instance fields
.field private final _currentVal:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material3/WideNavigationRailValue;",
            ">;"
        }
    .end annotation
.end field

.field private final animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private initialValue:Landroidx/compose/material3/WideNavigationRailValue;

.field private final internalState:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private final internalValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/WideNavigationRailStateImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/WideNavigationRailStateImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/material3/WideNavigationRailStateImpl;->Companion:Landroidx/compose/material3/WideNavigationRailStateImpl$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material3/WideNavigationRailStateImpl;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material3/WideNavigationRailValue;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/WideNavigationRailValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->initialValue:Landroidx/compose/material3/WideNavigationRailValue;

    iput-object p2, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-static {p1}, Landroidx/compose/material3/WideNavigationRailStateKt;->isExpanded(Landroidx/compose/material3/WideNavigationRailValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->internalValue:F

    new-instance v0, Landroidx/compose/animation/core/Animatable;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object p1, Lsc3;->a:Lsc3;

    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lsc3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILjh2;)V

    iput-object v0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->internalState:Landroidx/compose/animation/core/Animatable;

    new-instance p1, Lh67;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lh67;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lll3;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->_currentVal:Landroidx/compose/runtime/State;

    return-void
.end method

.method private static final _currentVal$lambda$0(Landroidx/compose/material3/WideNavigationRailStateImpl;)Landroidx/compose/material3/WideNavigationRailValue;
    .locals 1

    iget-object p0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->internalState:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/compose/material3/WideNavigationRailValue;->Expanded:Landroidx/compose/material3/WideNavigationRailValue;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/material3/WideNavigationRailValue;->Collapsed:Landroidx/compose/material3/WideNavigationRailValue;

    return-object p0
.end method

.method public static synthetic a(Landroidx/compose/material3/WideNavigationRailStateImpl;)Landroidx/compose/material3/WideNavigationRailValue;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailStateImpl;->_currentVal$lambda$0(Landroidx/compose/material3/WideNavigationRailStateImpl;)Landroidx/compose/material3/WideNavigationRailValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public collapse(Le02;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->internalState:Landroidx/compose/animation/core/Animatable;

    new-instance v1, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    iget-object v2, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public expand(Le02;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->internalState:Landroidx/compose/animation/core/Animatable;

    new-instance v1, Ljava/lang/Float;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    iget-object v2, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public getCurrentValue()Landroidx/compose/material3/WideNavigationRailValue;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->_currentVal:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/WideNavigationRailValue;

    return-object p0
.end method

.method public final getInitialValue()Landroidx/compose/material3/WideNavigationRailValue;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->initialValue:Landroidx/compose/material3/WideNavigationRailValue;

    return-object p0
.end method

.method public getTargetValue()Landroidx/compose/material3/WideNavigationRailValue;
    .locals 1

    iget-object p0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->internalState:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/compose/material3/WideNavigationRailValue;->Expanded:Landroidx/compose/material3/WideNavigationRailValue;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/material3/WideNavigationRailValue;->Collapsed:Landroidx/compose/material3/WideNavigationRailValue;

    return-object p0
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->internalState:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    move-result p0

    return p0
.end method

.method public final setInitialValue(Landroidx/compose/material3/WideNavigationRailValue;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->initialValue:Landroidx/compose/material3/WideNavigationRailValue;

    return-void
.end method

.method public snapTo(Landroidx/compose/material3/WideNavigationRailValue;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/WideNavigationRailValue;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Landroidx/compose/material3/WideNavigationRailStateKt;->isExpanded(Landroidx/compose/material3/WideNavigationRailValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->internalState:Landroidx/compose/animation/core/Animatable;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p0, v0, p2}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public toggle(Le02;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->internalState:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p0}, Landroidx/compose/material3/WideNavigationRailStateImpl;->getTargetValue()Landroidx/compose/material3/WideNavigationRailValue;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/material3/WideNavigationRailStateKt;->isExpanded(Landroidx/compose/material3/WideNavigationRailValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    iget-object p0, p0, Landroidx/compose/material3/WideNavigationRailStateImpl;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    move-object v1, v2

    move-object v2, p0

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
