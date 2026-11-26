.class public final synthetic Ljt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic c:Landroidx/lifecycle/Lifecycle$State;

.field public final synthetic d:Lll3;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljt2;->b:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Ljt2;->c:Landroidx/lifecycle/Lifecycle$State;

    iput-object p3, p0, Ljt2;->d:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljt2;->c:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, p0, Ljt2;->d:Lll3;

    iget-object p0, p0, Ljt2;->b:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p0, v0, v1}, Landroidx/lifecycle/compose/DropUnlessLifecycleKt;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
