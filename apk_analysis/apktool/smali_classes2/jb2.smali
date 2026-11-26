.class public final synthetic Ljb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DateRangePickerState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic e:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Lbm3;

.field public final synthetic h:Z

.field public final synthetic i:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Lbm3;Lbm3;ZLandroidx/compose/ui/focus/FocusRequester;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljb2;->b:Landroidx/compose/material3/DateRangePickerState;

    iput-object p2, p0, Ljb2;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Ljb2;->d:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p4, p0, Ljb2;->e:Landroidx/compose/material3/DatePickerColors;

    iput-object p5, p0, Ljb2;->f:Lbm3;

    iput-object p6, p0, Ljb2;->g:Lbm3;

    iput-boolean p7, p0, Ljb2;->h:Z

    iput-object p8, p0, Ljb2;->i:Landroidx/compose/ui/focus/FocusRequester;

    iput p9, p0, Ljb2;->j:I

    iput p10, p0, Ljb2;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Ljb2;->b:Landroidx/compose/material3/DateRangePickerState;

    iget-object v1, p0, Ljb2;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Ljb2;->d:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v3, p0, Ljb2;->e:Landroidx/compose/material3/DatePickerColors;

    iget-object v4, p0, Ljb2;->f:Lbm3;

    iget-object v5, p0, Ljb2;->g:Lbm3;

    iget-boolean v6, p0, Ljb2;->h:Z

    iget-object v7, p0, Ljb2;->i:Landroidx/compose/ui/focus/FocusRequester;

    iget v8, p0, Ljb2;->j:I

    iget v9, p0, Ljb2;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/DateRangePickerKt;->e(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Lbm3;Lbm3;ZLandroidx/compose/ui/focus/FocusRequester;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
