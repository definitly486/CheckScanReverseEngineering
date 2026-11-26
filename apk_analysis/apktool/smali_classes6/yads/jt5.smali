.class public final Lyads/jt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/h80;


# instance fields
.field public final a:Lyads/h80;


# direct methods
.method public constructor <init>(Lyads/h80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jt5;->a:Lyads/h80;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/jt5;->a:Lyads/h80;

    invoke-interface {p0}, Lyads/h80;->a()V

    return-void
.end method

.method public final onAdClicked()V
    .locals 0

    iget-object p0, p0, Lyads/jt5;->a:Lyads/h80;

    invoke-interface {p0}, Lyads/h80;->onAdClicked()V

    return-void
.end method

.method public final onImpression(Lyads/j5;)V
    .locals 0

    return-void
.end method

.method public final onLeftApplication()V
    .locals 0

    iget-object p0, p0, Lyads/jt5;->a:Lyads/h80;

    invoke-interface {p0}, Lyads/h80;->onLeftApplication()V

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 0

    iget-object p0, p0, Lyads/jt5;->a:Lyads/h80;

    invoke-interface {p0}, Lyads/h80;->onReturnedToApplication()V

    return-void
.end method
