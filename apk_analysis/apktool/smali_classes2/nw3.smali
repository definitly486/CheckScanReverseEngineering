.class public final synthetic Lnw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public synthetic constructor <init>(FFFLandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnw3;->b:F

    iput p2, p0, Lnw3;->c:F

    iput p3, p0, Lnw3;->d:F

    iput-object p4, p0, Lnw3;->e:Landroidx/compose/ui/layout/Placeable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lnw3;->e:Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget v1, p0, Lnw3;->b:F

    iget v2, p0, Lnw3;->c:F

    iget p0, p0, Lnw3;->d:F

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/material3/HorizontalCenterOpticallyKt;->c(FFFLandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
