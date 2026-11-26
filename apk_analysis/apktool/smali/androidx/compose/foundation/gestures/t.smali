.class public final synthetic Landroidx/compose/foundation/gestures/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lo07;

.field public final synthetic c:Landroidx/compose/foundation/gestures/ScrollScope;


# direct methods
.method public synthetic constructor <init>(Lo07;Landroidx/compose/foundation/gestures/ScrollScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/t;->b:Lo07;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/t;->c:Landroidx/compose/foundation/gestures/ScrollScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/t;->b:Lo07;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/t;->c:Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->g(Lo07;Landroidx/compose/foundation/gestures/ScrollScope;FF)Lj59;

    move-result-object p0

    return-object p0
.end method
