.class public final synthetic Landroidx/compose/material3/g5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TimePickerState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TimePickerState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/g5;->b:Landroidx/compose/material3/TimePickerState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/g5;->b:Landroidx/compose/material3/TimePickerState;

    check-cast p1, Landroidx/compose/foundation/text/KeyboardActionScope;

    invoke-static {p0, p1}, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$2$1;->d(Landroidx/compose/material3/TimePickerState;Landroidx/compose/foundation/text/KeyboardActionScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
