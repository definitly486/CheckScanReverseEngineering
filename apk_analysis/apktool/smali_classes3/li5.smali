.class public final synthetic Lli5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/navigation/NavController$NavControllerNavigatorState;

.field public final synthetic c:Landroidx/navigation/NavBackStackEntry;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lli5;->b:Landroidx/navigation/NavController$NavControllerNavigatorState;

    iput-object p2, p0, Lli5;->c:Landroidx/navigation/NavBackStackEntry;

    iput-boolean p3, p0, Lli5;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lli5;->c:Landroidx/navigation/NavBackStackEntry;

    iget-boolean v1, p0, Lli5;->d:Z

    iget-object p0, p0, Lli5;->b:Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-static {p0, v0, v1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->b(Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/NavBackStackEntry;Z)Lj59;

    move-result-object p0

    return-object p0
.end method
