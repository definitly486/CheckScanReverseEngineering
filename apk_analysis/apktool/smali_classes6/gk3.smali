.class public final synthetic Lgk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lgk3;->b:I

    iput-object p1, p0, Lgk3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lgk3;->b:I

    iget-object p0, p0, Lgk3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/List;

    check-cast p1, Lyads/u13;

    invoke-static {p0, p1}, Lyads/yu3;->a(Ljava/util/List;Lyads/u13;)Lyads/s13;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/navigation/fragment/FragmentNavigator;

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    invoke-static {p0, p1}, Landroidx/navigation/fragment/FragmentNavigator;->i(Landroidx/navigation/fragment/FragmentNavigator;Landroidx/navigation/NavBackStackEntry;)Landroidx/lifecycle/LifecycleEventObserver;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
