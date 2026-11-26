.class public final synthetic Lm38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:I

.field public final synthetic e:Lll3;

.field public final synthetic f:Lnm1;


# direct methods
.method public synthetic constructor <init>(FFILll3;Lnm1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm38;->b:F

    iput p2, p0, Lm38;->c:F

    iput p3, p0, Lm38;->d:I

    iput-object p4, p0, Lm38;->e:Lll3;

    iput-object p5, p0, Lm38;->f:Lnm1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lm38;->e:Lll3;

    iget-object v1, p0, Lm38;->f:Lnm1;

    iget v2, p0, Lm38;->b:F

    iget v3, p0, Lm38;->c:F

    iget p0, p0, Lm38;->d:I

    invoke-static {v2, v3, p0, v0, v1}, Landroidx/compose/material3/SliderKt;->e(FFILll3;Lnm1;)Landroidx/compose/material3/RangeSliderState;

    move-result-object p0

    return-object p0
.end method
