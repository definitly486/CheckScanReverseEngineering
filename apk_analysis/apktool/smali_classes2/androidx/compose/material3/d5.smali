.class public final synthetic Landroidx/compose/material3/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TimePickerState;

.field public final synthetic c:Landroidx/compose/ui/node/Ref;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/node/Ref;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/d5;->b:Landroidx/compose/material3/TimePickerState;

    iput-object p2, p0, Landroidx/compose/material3/d5;->c:Landroidx/compose/ui/node/Ref;

    iput-object p3, p0, Landroidx/compose/material3/d5;->d:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/d5;->d:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v1, p0, Landroidx/compose/material3/d5;->b:Landroidx/compose/material3/TimePickerState;

    iget-object p0, p0, Landroidx/compose/material3/d5;->c:Landroidx/compose/ui/node/Ref;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$2$1;->c(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/node/Ref;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)Lj59;

    move-result-object p0

    return-object p0
.end method
