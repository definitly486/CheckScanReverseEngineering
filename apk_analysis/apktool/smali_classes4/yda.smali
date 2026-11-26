.class public final Lyda;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz8a;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lz8a;->i:Lz8a;

    return-void
.end method

.method public constructor <init>(Lz8a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyda;->a:Lz8a;

    const-string p1, ""

    iput-object p1, p0, Lyda;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lz8a;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lyda;->a:Lz8a;

    .line 12
    iput-object p2, p0, Lyda;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lyda;
    .locals 2

    iget-object v0, p0, Lyda;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "."

    invoke-static {v0, v1, p1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lyda;

    iget-object p0, p0, Lyda;->a:Lz8a;

    invoke-direct {v0, p0, p1}, Lyda;-><init>(Lz8a;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lyda;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, ": "

    invoke-static {p0, v0, p1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
