.class final Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/internal/NavBackStackEntryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedStateViewModel"
.end annotation


# instance fields
.field private final handle:Landroidx/lifecycle/SavedStateHandle;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;->handle:Landroidx/lifecycle/SavedStateHandle;

    return-void
.end method


# virtual methods
.method public final getHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;->handle:Landroidx/lifecycle/SavedStateHandle;

    return-object p0
.end method
