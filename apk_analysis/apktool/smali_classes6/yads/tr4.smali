.class public final Lyads/tr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ys4;
.implements Lyads/at4;


# instance fields
.field public final a:Lyads/ys4;


# direct methods
.method public constructor <init>(Lyads/ys4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/tr4;->a:Lyads/ys4;

    return-void
.end method


# virtual methods
.method public final a()Lyads/et4;
    .locals 0

    iget-object p0, p0, Lyads/tr4;->a:Lyads/ys4;

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lyads/pv5;
    .locals 0

    iget-object p0, p0, Lyads/tr4;->a:Lyads/ys4;

    invoke-interface {p0}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lyads/ys4;
    .locals 0

    iget-object p0, p0, Lyads/tr4;->a:Lyads/ys4;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
