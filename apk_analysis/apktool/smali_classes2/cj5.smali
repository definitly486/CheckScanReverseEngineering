.class public final synthetic Lcj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;


# direct methods
.method public synthetic constructor <init>(ZLll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcj5;->b:Z

    iput-object p2, p0, Lcj5;->c:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcj5;->c:Lll3;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    iget-boolean p0, p0, Lcj5;->b:Z

    invoke-static {p0, v0, p1}, Landroidx/compose/material3/NavigationBarKt;->e(ZLll3;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
