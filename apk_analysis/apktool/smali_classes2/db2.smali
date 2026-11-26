.class public final synthetic Ldb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Lbm3;

.field public final synthetic g:Lnl3;

.field public final synthetic h:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic i:Ly74;

.field public final synthetic j:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic k:Landroidx/compose/material3/SelectableDates;

.field public final synthetic l:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic m:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;JILbm3;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb2;->b:Ljava/lang/Long;

    iput-object p2, p0, Ldb2;->c:Ljava/lang/Long;

    iput-wide p3, p0, Ldb2;->d:J

    iput p5, p0, Ldb2;->e:I

    iput-object p6, p0, Ldb2;->f:Lbm3;

    iput-object p7, p0, Ldb2;->g:Lnl3;

    iput-object p8, p0, Ldb2;->h:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p9, p0, Ldb2;->i:Ly74;

    iput-object p10, p0, Ldb2;->j:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p11, p0, Ldb2;->k:Landroidx/compose/material3/SelectableDates;

    iput-object p12, p0, Ldb2;->l:Landroidx/compose/material3/DatePickerColors;

    iput-object p13, p0, Ldb2;->m:Landroidx/compose/ui/focus/FocusRequester;

    iput p14, p0, Ldb2;->n:I

    iput p15, p0, Ldb2;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v1, v0, Ldb2;->b:Ljava/lang/Long;

    iget-object v2, v0, Ldb2;->c:Ljava/lang/Long;

    iget-wide v3, v0, Ldb2;->d:J

    iget v5, v0, Ldb2;->e:I

    iget-object v6, v0, Ldb2;->f:Lbm3;

    iget-object v7, v0, Ldb2;->g:Lnl3;

    iget-object v8, v0, Ldb2;->h:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v9, v0, Ldb2;->i:Ly74;

    iget-object v10, v0, Ldb2;->j:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v11, v0, Ldb2;->k:Landroidx/compose/material3/SelectableDates;

    iget-object v12, v0, Ldb2;->l:Landroidx/compose/material3/DatePickerColors;

    iget-object v13, v0, Ldb2;->m:Landroidx/compose/ui/focus/FocusRequester;

    iget v14, v0, Ldb2;->n:I

    iget v15, v0, Ldb2;->o:I

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/DateRangePickerKt;->f(Ljava/lang/Long;Ljava/lang/Long;JILbm3;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
