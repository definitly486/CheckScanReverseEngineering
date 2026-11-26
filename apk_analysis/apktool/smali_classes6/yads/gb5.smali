.class public final Lyads/gb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/j2;


# instance fields
.field public final a:Lyads/kk4;


# direct methods
.method public constructor <init>(Lyads/kk4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gb5;->a:Lyads/kk4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/gb5;->a:Lyads/kk4;

    iget-object p0, p0, Lyads/kk4;->b:Lyads/n03;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/n03;->resume()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lyads/gb5;->a:Lyads/kk4;

    iget-object p0, p0, Lyads/kk4;->b:Lyads/n03;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/n03;->pause()V

    :cond_0
    return-void
.end method
