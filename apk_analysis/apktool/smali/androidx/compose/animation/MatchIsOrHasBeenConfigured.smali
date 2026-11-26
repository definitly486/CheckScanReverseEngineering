.class public abstract Landroidx/compose/animation/MatchIsOrHasBeenConfigured;
.super Landroidx/compose/animation/SharedTransitionStateMachine$State;
.source "SourceFile"


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;-><init>(Ljh2;)V

    return-void
.end method


# virtual methods
.method public abstract getCurrentBounds()Landroidx/compose/ui/geometry/Rect;
.end method

.method public getMatchIsOrHasBeenConfigured()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract getTargetData()Landroidx/compose/animation/TargetData;
.end method
