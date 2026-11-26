.class public final Lyu5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc93;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyu5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc93<",
        "Lea9;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lwr6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwr6<",
            "Lea9;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwr6;

    sget-object v1, Lyu5$c$a;->c:Lyu5$c$a;

    invoke-direct {v0, v1}, Lwr6;-><init>(Lxe4;)V

    iput-object v0, p0, Lyu5$c;->a:Lwr6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lea9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lea9;->p()Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-nez p0, :cond_3

    invoke-interface {p1}, Lea9;->q()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-nez p0, :cond_3

    invoke-interface {p1}, Lea9;->j()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public final isNegative()Lwr6;
    .locals 0

    iget-object p0, p0, Lyu5$c;->a:Lwr6;

    return-object p0
.end method
