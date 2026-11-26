.class public final synthetic Lgk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/internal/FloatProducer;

.field public final synthetic c:F

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/FloatProducer;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgk5;->b:Landroidx/compose/material3/internal/FloatProducer;

    iput p2, p0, Lgk5;->c:F

    iput-boolean p3, p0, Lgk5;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lgk5;->d:Z

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    iget-object v1, p0, Lgk5;->b:Landroidx/compose/material3/internal/FloatProducer;

    iget p0, p0, Lgk5;->c:F

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/NavigationDrawerKt;->f(Landroidx/compose/material3/internal/FloatProducer;FZLandroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
