.class public final Lr86;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz68;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object v0

    iput-object v0, p0, Lr86;->a:Lz68;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lr86;->a:Lz68;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
