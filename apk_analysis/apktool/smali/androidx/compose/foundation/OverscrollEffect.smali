.class public interface abstract Landroidx/compose/foundation/OverscrollEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic getEffectModifier$annotations()V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-void
.end method


# virtual methods
.method public abstract applyToFling-BMRW4eQ(JLbm3;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            "-",
            "Le02<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract applyToScroll-Rhakbz0(JILnl3;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)J"
        }
    .end annotation
.end method

.method public getEffectModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    return-object p0
.end method

.method public getNode()Landroidx/compose/ui/node/DelegatableNode;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/OverscrollEffect$node$1;

    invoke-direct {p0}, Landroidx/compose/foundation/OverscrollEffect$node$1;-><init>()V

    return-object p0
.end method

.method public abstract isInProgress()Z
.end method
