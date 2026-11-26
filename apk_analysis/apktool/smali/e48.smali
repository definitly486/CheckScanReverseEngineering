.class public final synthetic Le48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lo07;

.field public final synthetic d:Landroidx/compose/foundation/gestures/ScrollScope;

.field public final synthetic e:Lnl3;


# direct methods
.method public synthetic constructor <init>(FLo07;Landroidx/compose/foundation/gestures/ScrollScope;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le48;->b:F

    iput-object p2, p0, Le48;->c:Lo07;

    iput-object p3, p0, Le48;->d:Landroidx/compose/foundation/gestures/ScrollScope;

    iput-object p4, p0, Le48;->e:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le48;->e:Lnl3;

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget v1, p0, Le48;->b:F

    iget-object v2, p0, Le48;->c:Lo07;

    iget-object p0, p0, Le48;->d:Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->a(FLo07;Landroidx/compose/foundation/gestures/ScrollScope;Lnl3;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
