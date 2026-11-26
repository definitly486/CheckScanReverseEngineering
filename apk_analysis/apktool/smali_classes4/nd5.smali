.class public final Lnd5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnd5$b;,
        Lnd5$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/concurrent/Executor;Lxh3$a;)Ljava/util/concurrent/Executor;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljn2;->INSTANCE:Ljn2;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lmd5;

    invoke-direct {v0, p0, p1}, Lmd5;-><init>(Ljava/util/concurrent/Executor;Lxh3$a;)V

    return-object v0
.end method
