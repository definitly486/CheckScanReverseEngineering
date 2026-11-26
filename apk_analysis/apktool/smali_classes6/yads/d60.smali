.class public final Lyads/d60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/j2;


# instance fields
.field public final synthetic a:Lyads/e60;


# direct methods
.method public constructor <init>(Lyads/e60;)V
    .locals 0

    iput-object p1, p0, Lyads/d60;->a:Lyads/e60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/d60;->a:Lyads/e60;

    iget-object p0, p0, Lyads/e60;->i:Lyads/n03;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/n03;->resume()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lyads/d60;->a:Lyads/e60;

    iget-object p0, p0, Lyads/e60;->i:Lyads/n03;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/n03;->pause()V

    :cond_0
    return-void
.end method
