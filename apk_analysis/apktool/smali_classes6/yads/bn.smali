.class public final Lyads/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/v05;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/v05;

    invoke-direct {v0}, Lyads/v05;-><init>()V

    iput-object v0, p0, Lyads/bn;->a:Lyads/v05;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object p0, p0, Lyads/bn;->a:Lyads/v05;

    invoke-virtual {p0}, Lyads/v05;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ":Metrica"

    invoke-static {p0, v1, v0}, Lra8;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":AppMetrica"

    invoke-static {p0, v1, v0}, Lra8;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
