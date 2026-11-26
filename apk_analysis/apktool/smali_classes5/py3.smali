.class public final Lpy3;
.super Ljl8;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lhy3;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhy3;)V
    .locals 0

    iput-object p2, p0, Lpy3;->e:Lhy3;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ljl8;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    iget-object p0, p0, Lpy3;->e:Lhy3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lhy3;->x:Lwy3;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, v1}, Lwy3;->m0(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lp03;->PROTOCOL_ERROR:Lp03;

    invoke-virtual {p0, v1, v1, v0}, Lhy3;->a(Lp03;Lp03;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
