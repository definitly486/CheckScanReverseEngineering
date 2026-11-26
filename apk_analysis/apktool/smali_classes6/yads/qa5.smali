.class public final Lyads/qa5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/j2;


# instance fields
.field public final synthetic a:Lyads/sa5;


# direct methods
.method public constructor <init>(Lyads/sa5;)V
    .locals 0

    iput-object p1, p0, Lyads/qa5;->a:Lyads/sa5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/qa5;->a:Lyads/sa5;

    iget-object p0, p0, Lyads/sa5;->g:Lyads/n03;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/n03;->resume()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lyads/qa5;->a:Lyads/sa5;

    iget-object p0, p0, Lyads/sa5;->g:Lyads/n03;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/n03;->pause()V

    :cond_0
    return-void
.end method
