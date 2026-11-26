.class public final synthetic Lou8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TimePickerDialogDefaults;

.field public final synthetic c:Lll3;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TimePickerDialogDefaults;Lll3;ILandroidx/compose/ui/Modifier;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lou8;->b:Landroidx/compose/material3/TimePickerDialogDefaults;

    iput-object p2, p0, Lou8;->c:Lll3;

    iput p3, p0, Lou8;->d:I

    iput-object p4, p0, Lou8;->e:Landroidx/compose/ui/Modifier;

    iput p5, p0, Lou8;->f:I

    iput p6, p0, Lou8;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lou8;->b:Landroidx/compose/material3/TimePickerDialogDefaults;

    iget-object v1, p0, Lou8;->c:Lll3;

    iget v2, p0, Lou8;->d:I

    iget-object v3, p0, Lou8;->e:Landroidx/compose/ui/Modifier;

    iget v4, p0, Lou8;->f:I

    iget v5, p0, Lou8;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/TimePickerDialogDefaults;->b(Landroidx/compose/material3/TimePickerDialogDefaults;Lll3;ILandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
