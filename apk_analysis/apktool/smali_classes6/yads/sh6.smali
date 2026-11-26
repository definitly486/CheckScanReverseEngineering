.class public final Lyads/sh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nb6;


# instance fields
.field public final a:Lyads/vk4;

.field public final b:Lyads/qf6;


# direct methods
.method public constructor <init>(Lyads/vk4;Lyads/em4;)V
    .locals 1

    new-instance v0, Lyads/qf6;

    invoke-direct {v0, p2}, Lyads/qf6;-><init>(Lyads/of6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sh6;->a:Lyads/vk4;

    iput-object v0, p0, Lyads/sh6;->b:Lyads/qf6;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    iget-object p1, p0, Lyads/sh6;->b:Lyads/qf6;

    invoke-virtual {p1}, Lyads/qf6;->a()Z

    move-result p1

    iget-object p2, p0, Lyads/sh6;->a:Lyads/vk4;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lyads/vk4;->a:Lyads/gr2;

    invoke-virtual {p1}, Lyads/gr2;->c()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lyads/sh6;->a:Lyads/vk4;

    iget-object p0, p0, Lyads/vk4;->a:Lyads/gr2;

    invoke-virtual {p0}, Lyads/gr2;->f()V

    return-void

    :cond_0
    iget-object p1, p2, Lyads/vk4;->a:Lyads/gr2;

    invoke-virtual {p1}, Lyads/gr2;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lyads/sh6;->a:Lyads/vk4;

    iget-object p0, p0, Lyads/vk4;->a:Lyads/gr2;

    invoke-virtual {p0}, Lyads/gr2;->d()V

    :cond_1
    return-void
.end method
