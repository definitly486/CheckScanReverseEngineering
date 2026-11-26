.class public final synthetic Ln51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lo07;

.field public final synthetic c:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;


# direct methods
.method public synthetic constructor <init>(Lo07;Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln51;->b:Lo07;

    iput-object p2, p0, Ln51;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Ln51;->b:Lo07;

    iget-object p0, p0, Ln51;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/material3/carousel/CarouselStateKt;->a(Lo07;Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;FF)Lj59;

    move-result-object p0

    return-object p0
.end method
