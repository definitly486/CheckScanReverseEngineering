.class public final Lyads/gj5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zu3;


# direct methods
.method public constructor <init>(Lyads/zu3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gj5;->a:Lyads/zu3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lyads/gj5;->a:Lyads/zu3;

    check-cast p0, Lyads/av3;

    const-string v0, "SessionData"

    invoke-virtual {p0, v0}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object p0, p0, Lyads/gj5;->a:Lyads/zu3;

    check-cast p0, Lyads/av3;

    const-string v0, "SessionData"

    invoke-virtual {p0, v0, p1}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
