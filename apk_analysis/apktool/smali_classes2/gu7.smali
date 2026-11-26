.class public final synthetic Lgu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/unit/Density;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgu7;->b:Landroidx/compose/ui/unit/Density;

    iput p2, p0, Lgu7;->c:F

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgu7;->b:Landroidx/compose/ui/unit/Density;

    iget p0, p0, Lgu7;->c:F

    invoke-static {v0, p0}, Landroidx/compose/material3/SheetDefaultsKt;->e(Landroidx/compose/ui/unit/Density;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
