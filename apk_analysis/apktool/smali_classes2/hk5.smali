.class public final synthetic Lhk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DrawerValue;

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DrawerValue;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhk5;->b:Landroidx/compose/material3/DrawerValue;

    iput-object p2, p0, Lhk5;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lhk5;->b:Landroidx/compose/material3/DrawerValue;

    iget-object p0, p0, Lhk5;->c:Lnl3;

    invoke-static {p0, v0}, Landroidx/compose/material3/NavigationDrawerKt;->x(Lnl3;Landroidx/compose/material3/DrawerValue;)Landroidx/compose/material3/DrawerState;

    move-result-object p0

    return-object p0
.end method
