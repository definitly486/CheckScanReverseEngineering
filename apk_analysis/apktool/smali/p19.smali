.class public final synthetic Lp19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm3;


# instance fields
.field public final synthetic b:Ldm3;


# direct methods
.method public synthetic constructor <init>(Ldm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp19;->b:Ldm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    check-cast p3, Landroidx/compose/ui/geometry/Offset;

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    iget-object p0, p0, Lp19;->b:Ldm3;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/TransformableStateKt;->b(Ldm3;Landroidx/compose/ui/geometry/Offset;FLandroidx/compose/ui/geometry/Offset;F)Lj59;

    move-result-object p0

    return-object p0
.end method
