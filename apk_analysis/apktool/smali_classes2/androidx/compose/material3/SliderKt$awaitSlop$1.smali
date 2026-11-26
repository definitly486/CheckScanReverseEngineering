.class final Landroidx/compose/material3/SliderKt$awaitSlop$1;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.material3.SliderKt"
    f = "Slider.kt"
    l = {
        0x88c
    }
    m = "awaitSlop-8vUncbI"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt;->awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILe02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/compose/material3/SliderKt$awaitSlop$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$awaitSlop$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/material3/SliderKt$awaitSlop$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/material3/SliderKt$awaitSlop$1;->label:I

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p1, p0}, Landroidx/compose/material3/SliderKt;->access$awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
