.class public final Lyn3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyn3;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lll3<",
        "Lno3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lyn3;

.field public final synthetic c:Lyn3$a;

.field public final synthetic d:Lsk;


# direct methods
.method public constructor <init>(Lyn3;Lyn3$a;Lsk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyn3$b;->b:Lyn3;

    iput-object p2, p0, Lyn3$b;->c:Lyn3$a;

    iput-object p3, p0, Lyn3$b;->d:Lsk;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lyn3$b;->c:Lyn3$a;

    iget-object v0, v0, Lyn3$a;->b:Lyn3;

    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    iget-object v1, p0, Lyn3$b;->b:Lyn3;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v3, Lno3;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lpg4;

    iget-object p0, p0, Lyn3$b;->d:Lsk;

    invoke-direct {v4, v3, v1, p0}, Lpg4;-><init>(Lzk1;Lze7;Lsk;)V

    sget-object p0, Landroidx/lifecycle/ViewModelProvider;->Companion:Landroidx/lifecycle/ViewModelProvider$Companion;

    invoke-virtual {p0, v0, v4, v2}, Landroidx/lifecycle/ViewModelProvider$Companion;->create(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    invoke-virtual {v3}, Lzk1;->a()Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Lne4;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method
