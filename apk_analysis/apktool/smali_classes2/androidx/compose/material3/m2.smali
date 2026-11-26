.class public final synthetic Landroidx/compose/material3/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/material3/ModalBottomSheetProperties;

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Lll3;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/m2;->b:Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    iput-object p2, p0, Landroidx/compose/material3/m2;->c:Lll3;

    iput-object p3, p0, Landroidx/compose/material3/m2;->d:Landroidx/compose/material3/ModalBottomSheetProperties;

    iput-wide p4, p0, Landroidx/compose/material3/m2;->e:J

    iput-object p6, p0, Landroidx/compose/material3/m2;->f:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-wide v3, p0, Landroidx/compose/material3/m2;->e:J

    iget-object v5, p0, Landroidx/compose/material3/m2;->f:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v0, p0, Landroidx/compose/material3/m2;->b:Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    iget-object v1, p0, Landroidx/compose/material3/m2;->c:Lll3;

    iget-object v2, p0, Landroidx/compose/material3/m2;->d:Landroidx/compose/material3/ModalBottomSheetProperties;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->c(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Lll3;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroidx/compose/ui/unit/LayoutDirection;)Lj59;

    move-result-object p0

    return-object p0
.end method
