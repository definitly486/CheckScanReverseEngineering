.class public final synthetic Lmj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/material3/DrawerState;

.field public final synthetic d:Ly22;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/material3/DrawerState;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmj5;->b:Z

    iput-object p2, p0, Lmj5;->c:Landroidx/compose/material3/DrawerState;

    iput-object p3, p0, Lmj5;->d:Ly22;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmj5;->c:Landroidx/compose/material3/DrawerState;

    iget-object v1, p0, Lmj5;->d:Ly22;

    iget-boolean p0, p0, Lmj5;->b:Z

    invoke-static {p0, v0, v1}, Landroidx/compose/material3/NavigationDrawerKt;->a(ZLandroidx/compose/material3/DrawerState;Ly22;)Lj59;

    move-result-object p0

    return-object p0
.end method
