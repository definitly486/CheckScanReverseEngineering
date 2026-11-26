.class public final synthetic Landroidx/compose/material3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DatePickerState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DatePickerState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/z;->b:Landroidx/compose/material3/DatePickerState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/z;->b:Landroidx/compose/material3/DatePickerState;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->b(Landroidx/compose/material3/DatePickerState;Ljava/lang/Long;)Lj59;

    move-result-object p0

    return-object p0
.end method
