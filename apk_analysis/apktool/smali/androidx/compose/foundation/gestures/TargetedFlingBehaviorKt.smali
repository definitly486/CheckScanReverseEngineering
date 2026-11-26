.class public final Landroidx/compose/foundation/gestures/TargetedFlingBehaviorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NoOnReport:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Float;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lco;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/gestures/TargetedFlingBehaviorKt;->NoOnReport:Lnl3;

    return-void
.end method

.method private static final NoOnReport$lambda$0(F)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(F)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/TargetedFlingBehaviorKt;->NoOnReport$lambda$0(F)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNoOnReport$p()Lnl3;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/TargetedFlingBehaviorKt;->NoOnReport:Lnl3;

    return-object v0
.end method
