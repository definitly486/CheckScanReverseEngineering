.class public final synthetic Landroidx/compose/material3/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DateRangePickerState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DateRangePickerState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/v0;->b:Landroidx/compose/material3/DateRangePickerState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Landroidx/compose/material3/v0;->b:Landroidx/compose/material3/DateRangePickerState;

    invoke-static {p0, v0, v1}, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$6;->b(Landroidx/compose/material3/DateRangePickerState;J)Lj59;

    move-result-object p0

    return-object p0
.end method
