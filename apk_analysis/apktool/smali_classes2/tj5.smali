.class public final synthetic Ltj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DrawerPredictiveBackState;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DrawerPredictiveBackState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltj5;->b:Landroidx/compose/material3/DrawerPredictiveBackState;

    iput-boolean p2, p0, Ltj5;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Ltj5;->c:Z

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    iget-object p0, p0, Ltj5;->b:Landroidx/compose/material3/DrawerPredictiveBackState;

    invoke-static {p0, v0, p1}, Landroidx/compose/material3/NavigationDrawerKt;->F(Landroidx/compose/material3/DrawerPredictiveBackState;ZLandroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
