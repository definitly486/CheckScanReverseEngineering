.class public final synthetic Ltu8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/TimePickerState;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/material3/TimePickerState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltu8;->b:I

    iput-object p2, p0, Ltu8;->c:Landroidx/compose/material3/TimePickerState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ltu8;->b:I

    iget-object p0, p0, Ltu8;->c:Landroidx/compose/material3/TimePickerState;

    invoke-static {v0, p0}, Landroidx/compose/material3/TimePickerKt;->g(ILandroidx/compose/material3/TimePickerState;)Lj59;

    move-result-object p0

    return-object p0
.end method
