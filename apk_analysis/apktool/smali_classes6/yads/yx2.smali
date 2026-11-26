.class public final Lyads/yx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field public final a:Lyads/xx2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/xx2;

    invoke-direct {v0}, Lyads/xx2;-><init>()V

    iput-object v0, p0, Lyads/yx2;->a:Lyads/xx2;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lyads/yx2;->a:Lyads/xx2;

    return-object p0
.end method
