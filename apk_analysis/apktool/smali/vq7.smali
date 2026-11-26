.class public final synthetic Lvq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic a:Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvq7;->a:Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    iget-object p0, p0, Lvq7;->a:Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->a(Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method
