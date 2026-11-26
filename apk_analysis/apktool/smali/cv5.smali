.class public final synthetic Lcv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcv5;->b:F

    iput p2, p0, Lcv5;->c:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcv5;->c:F

    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    iget p0, p0, Lcv5;->b:F

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/layout/OffsetKt;->a(FFLandroidx/compose/ui/platform/InspectorInfo;)Lj59;

    move-result-object p0

    return-object p0
.end method
