.class public final synthetic Lk38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/material3/RangeSliderState;

.field public final synthetic d:Lmm1;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/material3/RangeSliderState;Lmm1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lk38;->b:Z

    iput-object p2, p0, Lk38;->c:Landroidx/compose/material3/RangeSliderState;

    iput-object p3, p0, Lk38;->d:Lmm1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lk38;->d:Lmm1;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-boolean v1, p0, Lk38;->b:Z

    iget-object p0, p0, Lk38;->c:Landroidx/compose/material3/RangeSliderState;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/SliderKt;->h(ZLandroidx/compose/material3/RangeSliderState;Lmm1;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method
