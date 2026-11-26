.class public final synthetic Liv8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Liv8;->b:I

    iput p2, p0, Liv8;->c:I

    iput-boolean p3, p0, Liv8;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Liv8;->c:I

    iget-boolean v1, p0, Liv8;->d:Z

    iget p0, p0, Liv8;->b:I

    invoke-static {p0, v0, v1}, Landroidx/compose/material3/TimePickerKt;->n(IIZ)Landroidx/compose/material3/TimePickerStateImpl;

    move-result-object p0

    return-object p0
.end method
