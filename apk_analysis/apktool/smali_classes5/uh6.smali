.class public final Luh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lra4;


# instance fields
.field public final a:Lvg6;


# direct methods
.method public constructor <init>(Lvg6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh6;->a:Lvg6;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Luh6;->a:Lvg6;

    invoke-virtual {p0}, Lvg6;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lvg6;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Luh6;->a:Lvg6;

    invoke-virtual {p0}, Lvg6;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
