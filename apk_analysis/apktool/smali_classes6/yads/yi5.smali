.class public final Lyads/yi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ua5;


# instance fields
.field public final a:Lyads/aj5;

.field public final b:Lyads/ea;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/aj5;)V
    .locals 1

    new-instance v0, Lyads/ea;

    invoke-direct {v0, p1, p2, p3}, Lyads/ea;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lyads/yi5;->a:Lyads/aj5;

    iput-object v0, p0, Lyads/yi5;->b:Lyads/ea;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lyads/yi5;->b:Lyads/ea;

    iget-object p0, p0, Lyads/yi5;->a:Lyads/aj5;

    iget-object p0, p0, Lyads/aj5;->b:Ljava/lang/String;

    sget-object v1, Lyads/i16;->j:Lyads/i16;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v0, p0, v1, v2, v3}, Lyads/ea;->a(Lyads/ea;Ljava/lang/String;Lyads/i16;Lyads/h75;I)V

    return-void
.end method
