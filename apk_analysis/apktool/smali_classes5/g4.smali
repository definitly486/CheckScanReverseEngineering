.class public final Lg4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Boolean;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lc4;


# direct methods
.method public constructor <init>(Lc4;)V
    .locals 0

    iput-object p1, p0, Lg4;->f:Lc4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkd$a$d$a;

    iget-object p0, p0, Lg4;->f:Lc4;

    iget-object v0, p0, Lc4;->a:Ljf6;

    invoke-interface {v0}, Ljf6;->T0()J

    move-result-wide v0

    const-string v2, "user_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Delete"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Account"

    invoke-direct {p1, v1, v0}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1}, Lkd;->a()V

    invoke-virtual {p0}, Lc4;->b()Lrp1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "Account not locked by unknown reason"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance p1, Lbq1;

    invoke-direct {p1, p0}, Lbq1;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
