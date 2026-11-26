.class public final synthetic Lhb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:J

.field public final synthetic e:Lbm3;

.field public final synthetic f:Lnl3;

.field public final synthetic g:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic h:Ly74;

.field public final synthetic i:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic j:Landroidx/compose/material3/SelectableDates;

.field public final synthetic k:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;JLbm3;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb2;->b:Ljava/lang/Long;

    iput-object p2, p0, Lhb2;->c:Ljava/lang/Long;

    iput-wide p3, p0, Lhb2;->d:J

    iput-object p5, p0, Lhb2;->e:Lbm3;

    iput-object p6, p0, Lhb2;->f:Lnl3;

    iput-object p7, p0, Lhb2;->g:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p8, p0, Lhb2;->h:Ly74;

    iput-object p9, p0, Lhb2;->i:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p10, p0, Lhb2;->j:Landroidx/compose/material3/SelectableDates;

    iput-object p11, p0, Lhb2;->k:Landroidx/compose/material3/DatePickerColors;

    iput p12, p0, Lhb2;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, p0, Lhb2;->b:Ljava/lang/Long;

    iget-object v1, p0, Lhb2;->c:Ljava/lang/Long;

    iget-wide v2, p0, Lhb2;->d:J

    iget-object v4, p0, Lhb2;->e:Lbm3;

    iget-object v5, p0, Lhb2;->f:Lnl3;

    iget-object v6, p0, Lhb2;->g:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v7, p0, Lhb2;->h:Ly74;

    iget-object v8, p0, Lhb2;->i:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v9, p0, Lhb2;->j:Landroidx/compose/material3/SelectableDates;

    iget-object v10, p0, Lhb2;->k:Landroidx/compose/material3/DatePickerColors;

    iget v11, p0, Lhb2;->l:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/DateRangePickerKt;->a(Ljava/lang/Long;Ljava/lang/Long;JLbm3;Lnl3;Landroidx/compose/material3/internal/CalendarModel;Ly74;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
