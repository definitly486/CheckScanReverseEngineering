.class public final synthetic Lsa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/internal/CalendarMonth;

.field public final synthetic c:Lnl3;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Long;

.field public final synthetic f:Ljava/lang/Long;

.field public final synthetic g:Landroidx/compose/material3/SelectedRangeInfo;

.field public final synthetic h:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic i:Landroidx/compose/material3/SelectableDates;

.field public final synthetic j:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic k:Ljava/util/Locale;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/CalendarMonth;Lnl3;JLjava/lang/Long;Ljava/lang/Long;Landroidx/compose/material3/SelectedRangeInfo;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Ljava/util/Locale;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa2;->b:Landroidx/compose/material3/internal/CalendarMonth;

    iput-object p2, p0, Lsa2;->c:Lnl3;

    iput-wide p3, p0, Lsa2;->d:J

    iput-object p5, p0, Lsa2;->e:Ljava/lang/Long;

    iput-object p6, p0, Lsa2;->f:Ljava/lang/Long;

    iput-object p7, p0, Lsa2;->g:Landroidx/compose/material3/SelectedRangeInfo;

    iput-object p8, p0, Lsa2;->h:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p9, p0, Lsa2;->i:Landroidx/compose/material3/SelectableDates;

    iput-object p10, p0, Lsa2;->j:Landroidx/compose/material3/DatePickerColors;

    iput-object p11, p0, Lsa2;->k:Ljava/util/Locale;

    iput p12, p0, Lsa2;->l:I

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

    iget-object v0, p0, Lsa2;->b:Landroidx/compose/material3/internal/CalendarMonth;

    iget-object v1, p0, Lsa2;->c:Lnl3;

    iget-wide v2, p0, Lsa2;->d:J

    iget-object v4, p0, Lsa2;->e:Ljava/lang/Long;

    iget-object v5, p0, Lsa2;->f:Ljava/lang/Long;

    iget-object v6, p0, Lsa2;->g:Landroidx/compose/material3/SelectedRangeInfo;

    iget-object v7, p0, Lsa2;->h:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v8, p0, Lsa2;->i:Landroidx/compose/material3/SelectableDates;

    iget-object v9, p0, Lsa2;->j:Landroidx/compose/material3/DatePickerColors;

    iget-object v10, p0, Lsa2;->k:Ljava/util/Locale;

    iget v11, p0, Lsa2;->l:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/DatePickerKt;->C(Landroidx/compose/material3/internal/CalendarMonth;Lnl3;JLjava/lang/Long;Ljava/lang/Long;Landroidx/compose/material3/SelectedRangeInfo;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Ljava/util/Locale;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
