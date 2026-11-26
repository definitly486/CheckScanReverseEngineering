.class public final synthetic Lyl5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/navigation/Navigator;

.field public final synthetic c:Landroidx/navigation/NavOptions;

.field public final synthetic d:Landroidx/navigation/Navigator$Extras;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/Navigator;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyl5;->b:Landroidx/navigation/Navigator;

    iput-object p2, p0, Lyl5;->c:Landroidx/navigation/NavOptions;

    iput-object p3, p0, Lyl5;->d:Landroidx/navigation/Navigator$Extras;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lyl5;->d:Landroidx/navigation/Navigator$Extras;

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    iget-object v1, p0, Lyl5;->b:Landroidx/navigation/Navigator;

    iget-object p0, p0, Lyl5;->c:Landroidx/navigation/NavOptions;

    invoke-static {v1, p0, v0, p1}, Landroidx/navigation/Navigator;->b(Landroidx/navigation/Navigator;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method
