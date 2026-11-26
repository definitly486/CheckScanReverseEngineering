.class public final synthetic Lnj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/material3/DrawerState;

.field public final synthetic d:Ly22;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/material3/DrawerState;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnj5;->b:Ljava/lang/String;

    iput-object p2, p0, Lnj5;->c:Landroidx/compose/material3/DrawerState;

    iput-object p3, p0, Lnj5;->d:Ly22;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnj5;->d:Ly22;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-object v1, p0, Lnj5;->b:Ljava/lang/String;

    iget-object p0, p0, Lnj5;->c:Landroidx/compose/material3/DrawerState;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/NavigationDrawerKt;->o(Ljava/lang/String;Landroidx/compose/material3/DrawerState;Ly22;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method
