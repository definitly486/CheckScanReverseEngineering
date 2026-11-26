.class public final synthetic Lka2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:Lnl3;

.field public final synthetic f:Lnl3;

.field public final synthetic g:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic h:Ly74;

.field public final synthetic i:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic j:Landroidx/compose/material3/SelectableDates;

.field public final synthetic k:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic l:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic m:I

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;JILnl3;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lka2;->b:Ljava/lang/Long;

    iput-wide p2, p0, Lka2;->c:J

    iput p4, p0, Lka2;->d:I

    iput-object p5, p0, Lka2;->e:Lnl3;

    iput-object p6, p0, Lka2;->f:Lnl3;

    iput-object p7, p0, Lka2;->g:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p8, p0, Lka2;->h:Ly74;

    iput-object p9, p0, Lka2;->i:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p10, p0, Lka2;->j:Landroidx/compose/material3/SelectableDates;

    iput-object p11, p0, Lka2;->k:Landroidx/compose/material3/DatePickerColors;

    iput-object p12, p0, Lka2;->l:Landroidx/compose/ui/focus/FocusRequester;

    iput p13, p0, Lka2;->m:I

    iput p14, p0, Lka2;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v1, v0, Lka2;->b:Ljava/lang/Long;

    iget-wide v2, v0, Lka2;->c:J

    iget v4, v0, Lka2;->d:I

    iget-object v5, v0, Lka2;->e:Lnl3;

    iget-object v6, v0, Lka2;->f:Lnl3;

    iget-object v7, v0, Lka2;->g:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v8, v0, Lka2;->h:Ly74;

    iget-object v9, v0, Lka2;->i:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v10, v0, Lka2;->j:Landroidx/compose/material3/SelectableDates;

    iget-object v11, v0, Lka2;->k:Landroidx/compose/material3/DatePickerColors;

    iget-object v12, v0, Lka2;->l:Landroidx/compose/ui/focus/FocusRequester;

    iget v13, v0, Lka2;->m:I

    iget v14, v0, Lka2;->n:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/DatePickerKt;->b(Ljava/lang/Long;JILnl3;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
