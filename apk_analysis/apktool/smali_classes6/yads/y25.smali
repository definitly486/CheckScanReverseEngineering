.class public final Lyads/y25;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zm2;

.field public final b:Lyads/vx5;

.field public final c:Lyads/ns4;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(Lyads/zm2;Lyads/vx5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/y25;->a:Lyads/zm2;

    iput-object p2, p0, Lyads/y25;->b:Lyads/vx5;

    new-instance p1, Lyads/ns4;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lyads/ns4;-><init>([B)V

    iput-object p1, p0, Lyads/y25;->c:Lyads/ns4;

    return-void
.end method
