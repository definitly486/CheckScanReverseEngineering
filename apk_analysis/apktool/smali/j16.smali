.class public final synthetic Lj16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj16;->b:F

    iput p2, p0, Lj16;->c:F

    iput p3, p0, Lj16;->d:F

    iput p4, p0, Lj16;->e:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lj16;->e:F

    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    iget v1, p0, Lj16;->b:F

    iget v2, p0, Lj16;->c:F

    iget p0, p0, Lj16;->d:F

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/layout/PaddingKt;->b(FFFFLandroidx/compose/ui/platform/InspectorInfo;)Lj59;

    move-result-object p0

    return-object p0
.end method
