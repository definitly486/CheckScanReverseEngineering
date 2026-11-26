.class public abstract Lq0;
.super Ly69;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ly69<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Lq0$a;

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lq0$a;->NOT_READY:Lq0$a;

    iput-object v0, p0, Lq0;->b:Lq0$a;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 5

    iget-object v0, p0, Lq0;->b:Lq0$a;

    sget-object v1, Lq0$a;->FAILED:Lq0$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lo8;->r(Z)V

    iget-object v0, p0, Lq0;->b:Lq0$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    iput-object v1, p0, Lq0;->b:Lq0$a;

    invoke-virtual {p0}, Lq0;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lq0;->c:Ljava/lang/Object;

    iget-object v0, p0, Lq0;->b:Lq0$a;

    sget-object v1, Lq0$a;->DONE:Lq0$a;

    if-eq v0, v1, :cond_1

    sget-object v0, Lq0$a;->READY:Lq0$a;

    iput-object v0, p0, Lq0;->b:Lq0$a;

    return v3

    :cond_1
    return v2

    :cond_2
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lq0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lq0$a;->NOT_READY:Lq0$a;

    iput-object v0, p0, Lq0;->b:Lq0$a;

    iget-object v0, p0, Lq0;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lq0;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
