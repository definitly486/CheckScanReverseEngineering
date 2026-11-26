.class final Landroidx/compose/ui/platform/MotionDurationScaleImpl$startObservingSystemScaleFactor$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/MotionDurationScaleImpl$startObservingSystemScaleFactor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic this$0:Landroidx/compose/ui/platform/MotionDurationScaleImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/MotionDurationScaleImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl$startObservingSystemScaleFactor$1$1;->this$0:Landroidx/compose/ui/platform/MotionDurationScaleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(FLe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 11
    iget-object p0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl$startObservingSystemScaleFactor$1$1;->this$0:Landroidx/compose/ui/platform/MotionDurationScaleImpl;

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->access$set_scaleFactor(Landroidx/compose/ui/platform/MotionDurationScaleImpl;F)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/MotionDurationScaleImpl$startObservingSystemScaleFactor$1$1;->emit(FLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
